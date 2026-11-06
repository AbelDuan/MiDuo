import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.body.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Fix16 {
    static ClassOrInterfaceDeclaration enc(Node n) {
        Node p = n.getParentNode().orElse(null);
        while (p != null) {
            if (p instanceof ClassOrInterfaceDeclaration) return (ClassOrInterfaceDeclaration) p;
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
        ClassOrInterfaceDeclaration top = null;
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
            if (!cd.isNestedType()) { top = cd; break; }
        if (top == null) { System.out.println("NO_TOP"); return; }

        Set<String> shadow = new HashSet<>();
        List<VariableDeclarator> decls = new ArrayList<>();
        for (FieldDeclaration fd : top.getFields()) {
            if (!fd.isStatic() || fd.getElementType().isReferenceType()) continue;
            for (VariableDeclarator v : fd.getVariables()) {
                String nm = v.getNameAsString();
                if (typeNames.contains(nm) && !nm.endsWith("_v")) { shadow.add(nm); decls.add(v); }
            }
        }
        System.out.println("SHADOW: " + shadow);
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
        int n = 0, skip = 0;
        for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
            if (!(fa.getScope() instanceof ThisExpr)) continue;
            if (((ThisExpr) fa.getScope()).getTypeName().isPresent()) continue;
            ClassOrInterfaceDeclaration c = enc(fa);
            if (c == null || c.isNestedType()) { skip++; continue; }   // nested classes have own fields
            String nm = fa.getNameAsString();
            if (!shadow.contains(nm)) continue;
            Range r = fa.getName().getRange().orElse(null);
            if (r == null) continue;
            if (!done.add(r.begin.line + ":" + r.begin.column)) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v"); n++;
        }
        System.out.println("this.<f>=" + n + " skipNested=" + skip);
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