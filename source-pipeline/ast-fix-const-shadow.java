import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.body.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Fix11 {
    public static void main(String[] a) throws Exception {
        String in = a[0], out = a[1];
        String src = new String(Files.readAllBytes(Paths.get(in)), "UTF-8");
        CompilationUnit cu = StaticJavaParser.parse(src);

        // type names declared in this file
        Set<String> typeNames = new HashSet<>();
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
            typeNames.add(cd.getNameAsString());

        // top-level class and its STATIC primitive constants that shadow a type name
        ClassOrInterfaceDeclaration top = null;
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
            if (!cd.isNestedType()) { top = cd; break; }
        if (top == null) { System.out.println("NO_TOP"); return; }

        List<FieldDeclaration> constFds = new ArrayList<>();
        Set<String> shadow = new HashSet<>();
        for (FieldDeclaration fd : top.getFields()) {
            if (!fd.isStatic() || fd.getElementType().isReferenceType()) continue;
            for (VariableDeclarator v : fd.getVariables()) {
                String nm = v.getNameAsString();
                if (typeNames.contains(nm) && !nm.endsWith("_v")) { shadow.add(nm); constFds.add(fd); }
            }
        }
        System.out.println("TOP_STATIC_CONST_SHADOW: " + shadow.size());

        // Build a set of "local declarations that shadow these names" per method
        // so we don't rename locals. We'll only rename NameExpr whose resolution
        // is NOT a local variable and NOT a field of a nested class.

        List<int[]> pos = new ArrayList<>(); List<String> reps = new ArrayList<>();
        Set<String> done = new HashSet<>();

        // 1) the declarations themselves
        for (FieldDeclaration fd : constFds) {
            for (VariableDeclarator v : fd.getVariables()) {
                String nm = v.getNameAsString();
                if (!shadow.contains(nm)) continue;
                Range r = v.getName().getRange().orElse(null);
                if (r == null) continue;
                pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
                reps.add(nm + "_v");
                done.add(r.begin.line + ":" + r.begin.column);
            }
        }

        // 2) NameExpr references: rename ONLY if
        //    (a) name is in shadow
        //    (b) NOT shadowed by a local var in the enclosing method
        //    (c) NOT a field of the enclosing nested class (if inside a nested class)
        int renamed = 0, skippedLocal = 0, skippedField = 0;
        for (NameExpr ne : cu.findAll(NameExpr.class)) {
            String nm = ne.getNameAsString();
            if (!shadow.contains(nm)) continue;
            Range r = ne.getRange().orElse(null);
            if (r == null) continue;
            String key = r.begin.line + ":" + r.begin.column;
            if (done.contains(key)) continue;

            // find enclosing method and check for a local with this name
            MethodDeclaration m = null;
            ClassOrInterfaceDeclaration encCls = null;
            Node p = ne.getParentNode().orElse(null);
            while (p != null) {
                if (p instanceof MethodDeclaration && m == null) m = (MethodDeclaration) p;
                if (p instanceof ClassOrInterfaceDeclaration) { encCls = (ClassOrInterfaceDeclaration) p; break; }
                p = p.getParentNode().orElse(null);
            }
            // (b) local var with same name?
            if (m != null) {
                boolean hasLocal = false;
                for (Parameter par : m.getParameters())
                    if (par.getNameAsString().equals(nm)) hasLocal = true;
                for (VariableDeclarator v : m.findAll(VariableDeclarator.class))
                    if (v.getNameAsString().equals(nm)) hasLocal = true;
                if (hasLocal) { skippedLocal++; continue; }
            }
            // (c) is it a field of the enclosing nested class?
            if (encCls != null && !encCls.isNestedType() == false) {
                // inside a nested class: if that class declares nm as a field, skip
                boolean isField = false;
                for (FieldDeclaration fd : encCls.getFields())
                    for (VariableDeclarator v : fd.getVariables())
                        if (v.getNameAsString().equals(nm)) isField = true;
                if (isField) { skippedField++; continue; }
            }
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v");
            done.add(key);
            renamed++;
        }
        System.out.println("NameExpr renamed=" + renamed + " skippedLocal=" + skippedLocal + " skippedField=" + skippedField);

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