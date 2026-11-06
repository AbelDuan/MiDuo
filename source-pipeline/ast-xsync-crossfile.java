import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.body.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

/** Rename shadowing static constants AND sync <ClassName>.<const> references across ALL files. */
public class XSync {
    public static void main(String[] args) throws Exception {
        String root = args[0];              // java-complete dir
        List<Path> javas = new ArrayList<>();
        Files.walk(Paths.get(root))
             .filter(p -> p.toString().endsWith(".java"))
             .forEach(javas::add);
        System.out.println("files: " + javas.size());

        // pass 1: per-file, find top-level static primitives shadowing a type name
        // map: simpleClassName -> set of const names to rename
        Map<String, Set<String>> plan = new LinkedHashMap<>();
        for (Path p : javas) {
            try {
                String src = new String(Files.readAllBytes(p), "UTF-8");
                CompilationUnit cu = StaticJavaParser.parse(src);
                Set<String> types = new HashSet<>();
                for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
                    types.add(cd.getNameAsString());
                ClassOrInterfaceDeclaration top = null;
                for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
                    if (!cd.isNestedType()) { top = cd; break; }
                if (top == null) continue;
                Set<String> sh = new LinkedHashSet<>();
                for (FieldDeclaration fd : top.getFields()) {
                    if (!fd.isStatic() || fd.getElementType().isReferenceType()) continue;
                    for (VariableDeclarator v : fd.getVariables()) {
                        String nm = v.getNameAsString();
                        if (types.contains(nm) && !nm.endsWith("_v")) sh.add(nm);
                    }
                }
                if (!sh.isEmpty()) plan.put(top.getNameAsString(), sh);
            } catch (Exception e) { }
        }
        System.out.println("PLAN: " + plan);

        // pass 2: for each file, apply in-place edits
        int totalEdits = 0;
        for (Path p : javas) {
            try {
                String src = new String(Files.readAllBytes(p), "UTF-8");
                CompilationUnit cu = StaticJavaParser.parse(src);
                List<int[]> pos = new ArrayList<>(); List<String> reps = new ArrayList<>();
                Set<String> done = new HashSet<>();

                // (a) declarations of shadowing constants in this file's top-level class
                ClassOrInterfaceDeclaration top = null;
                for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
                    if (!cd.isNestedType()) { top = cd; break; }
                if (top != null) {
                    Set<String> sh = plan.get(top.getNameAsString());
                    if (sh != null) {
                        for (FieldDeclaration fd : top.getFields()) {
                            if (!fd.isStatic() || fd.getElementType().isReferenceType()) continue;
                            for (VariableDeclarator v : fd.getVariables()) {
                                String nm = v.getNameAsString();
                                if (!sh.contains(nm)) continue;
                                Range r = v.getName().getRange().orElse(null);
                                if (r == null) continue;
                                pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
                                reps.add(nm + "_v");
                                done.add(r.begin.line + ":" + r.begin.column);
                            }
                        }
                    }
                }

                // (b) `this.<f>` where f is a shadowed const of the enclosing TOP class only
                for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
                    if (!(fa.getScope() instanceof ThisExpr)) continue;
                    if (((ThisExpr) fa.getScope()).getTypeName().isPresent()) continue;
                    ClassOrInterfaceDeclaration c = enc(fa);
                    if (c == null || c.isNestedType()) continue;
                    Set<String> sh = plan.get(c.getNameAsString());
                    if (sh == null) continue;
                    String nm = fa.getNameAsString();
                    if (!sh.contains(nm)) continue;
                    Range r = fa.getName().getRange().orElse(null);
                    if (r == null) continue;
                    if (!done.add(r.begin.line + ":" + r.begin.column)) continue;
                    pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
                    reps.add(nm + "_v");
                }

                // (c) CROSS-FILE: `X.<const>` where X is a class in plan
                for (FieldAccessExpr fa : cu.findAll(FieldAccessExpr.class)) {
                    Expression sc = fa.getScope();
                    if (!(sc instanceof NameExpr)) continue;
                    String cls = ((NameExpr) sc).getNameAsString();
                    Set<String> sh = plan.get(cls);
                    if (sh == null) continue;
                    String nm = fa.getNameAsString();
                    if (!sh.contains(nm)) continue;
                    Range r = fa.getName().getRange().orElse(null);
                    if (r == null) continue;
                    if (!done.add(r.begin.line + ":" + r.begin.column)) continue;
                    pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
                    reps.add(nm + "_v");
                }

                if (pos.isEmpty()) continue;
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
                Files.write(p, String.join("\n", lines).getBytes("UTF-8"));
                totalEdits += pos.size();
                System.out.println("  " + p.getFileName() + " : " + pos.size() + " edits");
            } catch (Exception e) {
                System.out.println("  SKIP " + p.getFileName() + " : " + e.getMessage());
            }
        }
        System.out.println("TOTAL EDITS: " + totalEdits);
    }
    static ClassOrInterfaceDeclaration enc(Node n) {
        Node p = n.getParentNode().orElse(null);
        while (p != null) {
            if (p instanceof ClassOrInterfaceDeclaration) return (ClassOrInterfaceDeclaration) p;
            p = p.getParentNode().orElse(null);
        }
        return null;
    }
}