import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.body.*;
import com.github.javaparser.ast.stmt.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Fix9 {
    static Map<String, Set<String>> byName = new HashMap<>();
    static Map<String, String> fieldTypeOf = new HashMap<>();
    public static void main(String[] a) throws Exception {
        String in = a[0], out = a[1];
        String src = new String(Files.readAllBytes(Paths.get(in)), "UTF-8");
        CompilationUnit cu = StaticJavaParser.parse(src);
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class)) {
            Set<String> f = new HashSet<>();
            for (FieldDeclaration fd : cd.getFields())
                for (VariableDeclarator v : fd.getVariables()) {
                    f.add(v.getNameAsString());
                    fieldTypeOf.put(cd.getNameAsString() + "." + v.getNameAsString(),
                                    v.getTypeAsString().split("\\.")[0].replace("[]",""));
                }
            byName.put(cd.getNameAsString(), f);
        }

        // local var types, scoped to the enclosing method
        Map<Node, Map<String, String>> localTypes = new IdentityHashMap<>();
        for (VariableDeclarator v : cu.findAll(VariableDeclarator.class)) {
            if (v.getParentNode().map(p -> p instanceof FieldDeclaration).orElse(false)) continue;
            MethodDeclaration m = null;
            Node p = v.getParentNode().orElse(null);
            while (p != null) {
                if (p instanceof MethodDeclaration) { m = (MethodDeclaration) p; break; }
                if (p instanceof ConstructorDeclaration) break;
                p = p.getParentNode().orElse(null);
            }
            Node key = (Node) m;
            if (key == null) key = cu;
            localTypes.computeIfAbsent(key, k -> new HashMap<>())
                      .put(v.getNameAsString(), v.getTypeAsString().split("\\.")[0].replace("[]",""));
        }
        System.out.println("methods with locals: " + localTypes.size());

        List<int[]> pos = new ArrayList<>(); List<String> reps = new ArrayList<>();
        Set<String> done = new HashSet<>();
        int cB = 0, cLocal = 0;
        for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
            if (!(fa.getScope() instanceof NameExpr)) continue;
            String recv = ((NameExpr) fa.getScope()).getNameAsString();
            ClassOrInterfaceDeclaration enc = enclosing(fa);
            if (enc == null) continue;
            String t = null;
            // 1) local var in the enclosing method
            MethodDeclaration m = null;
            Node p = fa.getParentNode().orElse(null);
            while (p != null) {
                if (p instanceof MethodDeclaration) { m = (MethodDeclaration) p; break; }
                p = p.getParentNode().orElse(null);
            }
            if (m != null) {
                Map<String, String> lt = localTypes.get(m);
                if (lt != null && lt.containsKey(recv)) t = lt.get(recv);
            }
            // 2) field of enclosing class
            if (t == null) {
                String ft = fieldTypeOf.get(enc.getNameAsString() + "." + recv);
                if (ft != null) t = ft;
            }
            if (t == null) continue;
            Set<String> flds = byName.get(t);
            if (flds == null) continue;
            String nm = fa.getNameAsString();
            if (flds.contains(nm) || !flds.contains(nm + "_v")) continue;
            Range r = fa.getName().getRange().orElse(null);
            if (r == null) continue;
            if (!done.add(r.begin.line + ":" + r.begin.column)) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v");
            if (m != null) cLocal++; else cB++;
        }
        System.out.println("local=" + cLocal + " field=" + cB + " total=" + pos.size());
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
    static ClassOrInterfaceDeclaration enclosing(Node n) {
        Node p = n.getParentNode().orElse(null);
        while (p != null) {
            if (p instanceof ClassOrInterfaceDeclaration) return (ClassOrInterfaceDeclaration) p;
            p = p.getParentNode().orElse(null);
        }
        return null;
    }
}