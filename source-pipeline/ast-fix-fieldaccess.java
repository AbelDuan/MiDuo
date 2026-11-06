import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.body.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Fix8 {
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
        List<int[]> pos = new ArrayList<>(); List<String> reps = new ArrayList<>();
        Set<String> done = new HashSet<>();
        int cA=0, cB=0, cC=0;
        for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
            Expression sc = fa.getScope();
            ClassOrInterfaceDeclaration enc = enclosing(fa);
            if (enc == null) continue;
            String nm = fa.getNameAsString();
            String t = null;
            // case C: this.field  (plain ThisExpr, no qualifier)
            if (sc instanceof ThisExpr && !((ThisExpr) sc).getTypeName().isPresent()) {
                Set<String> flds = byName.get(enc.getNameAsString());
                if (flds != null && !flds.contains(nm) && flds.contains(nm + "_v")) {
                    t = "__C__";
                    cC++;
                }
            }
            // case A: this.X.field
            if (t == null && sc instanceof FieldAccessExpr) {
                FieldAccessExpr inner = (FieldAccessExpr) sc;
                if (inner.getScope() instanceof ThisExpr
                    && !((ThisExpr) inner.getScope()).getTypeName().isPresent()) {
                    String ft = fieldTypeOf.get(enc.getNameAsString() + "." + inner.getNameAsString());
                    if (ft != null) {
                        Set<String> flds = byName.get(ft);
                        if (flds != null && !flds.contains(nm) && flds.contains(nm + "_v")) { t = "__A__"; cA++; }
                    }
                }
            }
            // case B: X.field where X is a field of enc
            if (t == null && sc instanceof NameExpr) {
                String recv = ((NameExpr) sc).getNameAsString();
                String ft = fieldTypeOf.get(enc.getNameAsString() + "." + recv);
                if (ft != null) {
                    Set<String> flds = byName.get(ft);
                    if (flds != null && !flds.contains(nm) && flds.contains(nm + "_v")) { t = "__B__"; cB++; }
                }
            }
            if (t == null) continue;
            Range r = fa.getName().getRange().orElse(null);
            if (r == null) continue;
            if (!done.add(r.begin.line + ":" + r.begin.column)) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v");
        }
        System.out.println("A=" + cA + " B=" + cB + " C=" + cC + " total=" + pos.size());
        String[] lines = src.split("\n", -1);
        Map<Integer, List<Object[]>> byLine = new HashMap<>();
        for (int i = 0; i < pos.size(); i++) {
            int[] p = pos.get(i);
            byLine.computeIfAbsent(p[0], k -> new ArrayList<>()).add(new Object[]{p[1], p[2], reps.get(i)});
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