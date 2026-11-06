import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.body.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Fix10 {
    static Map<String, Set<String>> byName = new HashMap<>();
    static Map<String, String> fieldTypeOf = new HashMap<>();
    static Map<Node, Map<String, String>> localTypes = new IdentityHashMap<>();

    static String resolveType(Expression e, ClassOrInterfaceDeclaration enc, Node ctx) {
        if (e instanceof EnclosedExpr) return resolveType(((EnclosedExpr) e).getInner(), enc, ctx);
        if (e instanceof CastExpr) {
            String t = ((CastExpr) e).getType().asString().split("\\.")[0].replace("[]","");
            return byName.containsKey(t) ? t : null;
        }
        if (e instanceof NameExpr) {
            String nm = ((NameExpr) e).getNameAsString();
            MethodDeclaration m = null;
            Node p = ctx.getParentNode().orElse(null);
            while (p != null) { if (p instanceof MethodDeclaration) { m = (MethodDeclaration) p; break; } p = p.getParentNode().orElse(null); }
            if (m != null) {
                Map<String, String> lt = localTypes.get(m);
                if (lt != null && lt.containsKey(nm)) return lt.get(nm);
            }
            String ft = fieldTypeOf.get(enc.getNameAsString() + "." + nm);
            if (ft != null) return ft;
            return null;
        }
        if (e instanceof FieldAccessExpr) {
            FieldAccessExpr fa = (FieldAccessExpr) e;
            String st = resolveType(fa.getScope(), enc, ctx);
            if (st == null) return null;
            String ft = fieldTypeOf.get(st + "." + fa.getNameAsString());
            return ft;
        }
        if (e instanceof MethodCallExpr) {
            // unknown return type; give up
            return null;
        }
        return null;
    }

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
        for (VariableDeclarator v : cu.findAll(VariableDeclarator.class)) {
            if (v.getParentNode().map(p -> p instanceof FieldDeclaration).orElse(false)) continue;
            MethodDeclaration m = null;
            Node p = v.getParentNode().orElse(null);
            while (p != null) { if (p instanceof MethodDeclaration) { m = (MethodDeclaration) p; break; } p = p.getParentNode().orElse(null); }
            Node key = (Node) m; if (key == null) key = cu;
            localTypes.computeIfAbsent(key, k -> new HashMap<>())
                      .put(v.getNameAsString(), v.getTypeAsString().split("\\.")[0].replace("[]",""));
        }

        List<int[]> pos = new ArrayList<>(); List<String> reps = new ArrayList<>();
        Set<String> done = new HashSet<>();
        int n = 0;
        for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
            ClassOrInterfaceDeclaration enc = enclosing(fa);
            if (enc == null) continue;
            String nm = fa.getNameAsString();
            String rt = resolveType(fa.getScope(), enc, fa);
            if (rt == null) continue;
            Set<String> flds = byName.get(rt);
            if (flds == null) continue;
            if (flds.contains(nm) || !flds.contains(nm + "_v")) continue;
            Range r = fa.getName().getRange().orElse(null);
            if (r == null) continue;
            if (!done.add(r.begin.line + ":" + r.begin.column)) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v"); n++;
        }
        System.out.println("fixed: " + n);
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
        while (p != null) { if (p instanceof ClassOrInterfaceDeclaration) return (ClassOrInterfaceDeclaration) p; p = p.getParentNode().orElse(null); }
        return null;
    }
}