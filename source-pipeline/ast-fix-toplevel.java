import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.type.*;
import com.github.javaparser.ast.body.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Fix4 {
    public static void main(String[] args) throws Exception {
        String inPath = args[0], outPath = args[1];
        String src = new String(Files.readAllBytes(Paths.get(inPath)), "UTF-8");
        CompilationUnit cu = StaticJavaParser.parse(src);

        Set<String> typeNames = new HashSet<>();
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
            typeNames.add(cd.getNameAsString());

        // ONLY the TOP-LEVEL class's own constant fields (static, primitive)
        Optional<ClassOrInterfaceDeclaration> top = cu.findFirst(ClassOrInterfaceDeclaration.class,
            c -> !c.isNestedType());
        if (!top.isPresent()) { System.out.println("NO_TOP"); return; }
        ClassOrInterfaceDeclaration topCls = top.get();
        System.out.println("TOP: " + topCls.getNameAsString());

        List<VariableDeclarator> toRename = new ArrayList<>();
        for (FieldDeclaration fd : topCls.getFields()) {
            if (!fd.isStatic()) continue;
            for (VariableDeclarator v : fd.getVariables()) {
                String nm = v.getNameAsString();
                if (typeNames.contains(nm) && !nm.endsWith("_v")) toRename.add(v);
            }
        }
        Set<String> shadow = new HashSet<>();
        for (VariableDeclarator v : toRename) shadow.add(v.getNameAsString());
        System.out.println("TOP_CONST_SHADOW: " + shadow.size() + " -> " + shadow);

        List<int[]> pos = new ArrayList<>();
        List<String> reps = new ArrayList<>();
        for (VariableDeclarator v : toRename) {
            if (!v.getName().getRange().isPresent()) continue;
            Range r = v.getName().getRange().get();
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(v.getNameAsString() + "_v");
        }
        // Only rewrite `this.<name>` FieldAccessExpr whose scope is ThisExpr,
        // but ONLY inside the TOP-LEVEL class body (not nested classes).
        int fa = 0;
        for (FieldAccessExpr f : cu.findAll(FieldAccessExpr.class)) {
            if (!(f.getScope() instanceof ThisExpr)) continue;
            String nm = f.getNameAsString();
            if (!shadow.contains(nm)) continue;
            if (!f.getRange().isPresent()) continue;
            // check the enclosing class is the top-level one
            Optional<ClassOrInterfaceDeclaration> enc = f.findAncestor(ClassOrInterfaceDeclaration.class);
            if (!enc.isPresent() || enc.get().getNameAsString().equals(topCls.getNameAsString()) == false) continue;
            Range r = f.getName().getRange().orElse(null);
            if (r == null) continue;
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v");
            fa++;
        }
        System.out.println("this.field edits: " + fa);

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
            eds.sort((a, b) -> ((Integer)b[0]) - ((Integer)a[0]));
            StringBuilder sb = new StringBuilder(lines[ln-1]);
            for (Object[] ed : eds) {
                int bc = (Integer)ed[0], ec = (Integer)ed[1];
                if (bc < 1 || ec > sb.length() + 1) continue;
                sb.replace(bc-1, ec-1, (String)ed[2]);
            }
            lines[ln-1] = sb.toString();
        }
        Files.write(Paths.get(outPath), String.join("\n", lines).getBytes("UTF-8"));
        System.out.println("WROTE");
    }
}