import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.body.*;
import com.github.javaparser.ast.stmt.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

/** TriFix: rename top-level shadowing constants, then sync ALL reference forms
 *  (this.<f>, bare NameExpr, ClassName.<f>) in one pass with AST precision. */
public class TriFix {
    static ClassOrInterfaceDeclaration enc(Node n) {
        Node p = n.getParentNode().orElse(null);
        while (p != null) {
            if (p instanceof ClassOrInterfaceDeclaration) return (ClassOrInterfaceDeclaration) p;
            p = p.getParentNode().orElse(null);
        }
        return null;
    }
    static MethodDeclaration encM(Node n) {
        Node p = n.getParentNode().orElse(null);
        while (p != null) {
            if (p instanceof MethodDeclaration) return (MethodDeclaration) p;
            if (p instanceof ClassOrInterfaceDeclaration) return null;
            p = p.getParentNode().orElse(null);
        }
        return null;
    }
    public static void main(String[] a) throws Exception {
        String in = a[0], out = a[1];
        String src = new String(Files.readAllBytes(Paths.get(in)), "UTF-8");
        CompilationUnit cu = StaticJavaParser.parse(src);

        Set<String> typeNames = new HashSet<>();
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
            typeNames.add(cd.getNameAsString());
        File d = new File(new File(in).getParent());
        String[] fs = d.list();
        if (fs != null) for (String f : fs) {
            if (!f.endsWith(".java")) continue;
            String simple = f.substring(0, f.length()-5);
            if (simple.length() > 8) continue;
            try {
                String t = new String(Files.readAllBytes(Paths.get(d.getPath(), f)), "UTF-8");
                if (t.contains("class " + simple) || t.contains("interface " + simple) || t.contains("enum " + simple))
                    typeNames.add(simple);
            } catch (Exception ex) { }
        }
        ClassOrInterfaceDeclaration top = null;
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
            if (!cd.isNestedType()) { top = cd; break; }
        if (top == null) { System.out.println("NO_TOP"); return; }

        Set<String> shadow = new LinkedHashSet<>();
        List<VariableDeclarator> decls = new ArrayList<>();
        for (FieldDeclaration fd : top.getFields())
            for (VariableDeclarator v : fd.getVariables()) {
                String nm = v.getNameAsString();
                if (typeNames.contains(nm) && !nm.endsWith("_v")) { shadow.add(nm); decls.add(v); }
            }
        System.out.println("SHADOW: " + shadow.size() + " " + shadow);
        if (shadow.isEmpty()) { System.out.println("NOTHING"); return; }

        List<int[]> pos = new ArrayList<>(); List<String> reps = new ArrayList<>();
        Set<String> done = new HashSet<>();
        for (VariableDeclarator v : decls) {
            Range r = v.getName().getRange().orElse(null);
            if (r == null) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(v.getNameAsString() + "_v");
            done.add(r.begin.line + ":" + r.begin.column);
        }

        // 1) this.<f> where enclosing class == top (identity)
        int c1 = 0;
        for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
            if (!(fa.getScope() instanceof ThisExpr)) continue;
            if (((ThisExpr) fa.getScope()).getTypeName().isPresent()) continue;
            ClassOrInterfaceDeclaration c = enc(fa);
            if (c == null || c != top) continue;
            String nm = fa.getNameAsString();
            if (!shadow.contains(nm)) continue;
            Range r = fa.getName().getRange().orElse(null);
            if (r == null) continue;
            if (!done.add(r.begin.line + ":" + r.begin.column)) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v"); c1++;
        }

        // 2) ClassName.<f> where ClassName == top's name
        int c2 = 0;
        for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
            if (!(fa.getScope() instanceof NameExpr)) continue;
            String cls = ((NameExpr) fa.getScope()).getNameAsString();
            if (!cls.equals(top.getNameAsString())) continue;
            String nm = fa.getNameAsString();
            if (!shadow.contains(nm)) continue;
            Range r = fa.getName().getRange().orElse(null);
            if (r == null) continue;
            if (!done.add(r.begin.line + ":" + r.begin.column)) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v"); c2++;
        }

        // 3) bare NameExpr: skip if it is a DECLARATION name, METHOD name, or shadowed by local
        int c3 = 0, skipDecl = 0, skipMeth = 0, skipLocal = 0, skipNestedField = 0;
        for (NameExpr ne : cu.findAll(NameExpr.class)) {
            String nm = ne.getNameAsString();
            if (!shadow.contains(nm)) continue;
            Range r = ne.getRange().orElse(null);
            if (r == null) continue;
            String key = r.begin.line + ":" + r.begin.column;
            if (done.contains(key)) continue;
            Node par = ne.getParentNode().orElse(null);
            // skip: method call name
            if (par instanceof MethodCallExpr && ((MethodCallExpr) par).getNameAsString().equals(nm)) { skipMeth++; continue; }
            // skip: variable declarator name
            if (par instanceof VariableDeclarator) { skipDecl++; continue; }
            // skip: parameter name
            if (par instanceof Parameter) { skipDecl++; continue; }
            // skip: field declaration name
            if (par instanceof VariableDeclarator) { skipDecl++; continue; }
            // skip: local var / param with same name in enclosing method
            MethodDeclaration m = encM(ne);
            if (m != null) {
                boolean has = false;
                for (Parameter pp : m.getParameters()) if (pp.getNameAsString().equals(nm)) has = true;
                for (VariableDeclarator v : m.findAll(VariableDeclarator.class)) if (v.getNameAsString().equals(nm)) has = true;
                if (has) { skipLocal++; continue; }
            }
            // skip: nested class's own field
            ClassOrInterfaceDeclaration c = enc(ne);
            if (c != null && c.isNestedType()) {
                boolean isField = false;
                for (FieldDeclaration fd : c.getFields())
                    for (VariableDeclarator v : fd.getVariables()) if (v.getNameAsString().equals(nm)) isField = true;
                if (isField) { skipNestedField++; continue; }
            }
            if (!done.add(key)) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v"); c3++;
        }
        System.out.println("this.<f>=" + c1 + " Class.<f>=" + c2 + " bare=" + c3
            + "  skipMeth=" + skipMeth + " skipDecl=" + skipDecl + " skipLocal=" + skipLocal + " skipNestedField=" + skipNestedField);

        String[] lines = src.split("\n", -1);
        Map<Integer, List<Object[]>> byLine = new HashMap<>();
        for (int i = 0; i < pos.size(); i++) {
            int[] q = pos.get(i);
            byLine.computeIfAbsent(q[0], k -> new ArrayList<>()).add(new Object[]{q[1], q[2], reps.get(i)});
        }
        for (Map.Entry<Integer, List<Object[]>> e : byLine.entrySet()) {
            int ln = e.getKey();
            if (ln < 1 || ln > lines.length) continue;
            List<Object[]> eds = e.getValue();
            eds.sort((x, y) -> ((Integer)y[0]) - ((Integer)x[0]));
            StringBuilder sb = new StringBuilder(lines[ln-1]);
            for (Object[] ed : eds) {
                int bc = (Integer)ed[0], ec = (Integer)ed[1];
                if (bc < 1 || ec > sb.length() + 1) continue;
                sb.replace(bc-1, ec, (String)ed[2]);
            }
            lines[ln-1] = sb.toString();
        }
        Files.write(Paths.get(out), String.join("\n", lines).getBytes("UTF-8"));
        System.out.println("WROTE");
    }
}