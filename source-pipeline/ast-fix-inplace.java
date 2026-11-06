import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.type.*;
import com.github.javaparser.ast.body.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Fix3 {
    public static void main(String[] args) throws Exception {
        String inPath = args[0];
        String outPath = args[1];
        String src = new String(Files.readAllBytes(Paths.get(inPath)), "UTF-8");
        CompilationUnit cu = StaticJavaParser.parse(src);

        // classes declared in this file
        Set<String> typeNames = new HashSet<>();
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
            typeNames.add(cd.getNameAsString());

        // fields whose name equals a type name AND not already _v
        List<VariableDeclarator> toRename = new ArrayList<>();
        for (FieldDeclaration fd : cu.findAll(FieldDeclaration.class))
            for (VariableDeclarator v : fd.getVariables()) {
                String nm = v.getNameAsString();
                if (typeNames.contains(nm) && !nm.endsWith("_v")) toRename.add(v);
            }
        Set<String> shadow = new HashSet<>();
        for (VariableDeclarator v : toRename) shadow.add(v.getNameAsString());
        System.out.println("SHADOW_FIELDS: " + shadow.size());

        // collect (beginLine, beginCol, endCol, newText) edits
        List<int[]> pos = new ArrayList<>();      // beginLine, beginCol, endCol
        List<String> reps = new ArrayList<>();
        Set<String> seen = new HashSet<>();

        // 1) field declarations
        for (VariableDeclarator v : toRename) {
            if (!v.getName().getRange().isPresent()) continue;
            Range r = v.getName().getRange().get();
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(v.getNameAsString() + "_v");
        }
        // 2) NameExpr in value position
        for (NameExpr ne : cu.findAll(NameExpr.class)) {
            String nm = ne.getNameAsString();
            if (!shadow.contains(nm)) continue;
            if (!ne.getRange().isPresent()) continue;
            Range r = ne.getRange().get();
            String key = r.begin.line + ":" + r.begin.column;
            if (seen.contains(key)) continue;
            seen.add(key);
            pos.add(new int[]{r.begin.line, r.begin.column, r.end.column});
            reps.add(nm + "_v");
        }
        System.out.println("EDITS: " + pos.size());

        // apply edits to the ORIGINAL text, line by line, from right to left per line
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
            eds.sort((a, b) -> ((Integer)b[0]) - ((Integer)a[0]));   // right to left
            StringBuilder sb = new StringBuilder(lines[ln-1]);
            for (Object[] ed : eds) {
                int bc = (Integer)ed[0], ec = (Integer)ed[1];
                if (bc < 1 || ec > sb.length() + 1) continue;
                sb.replace(bc-1, ec-1, (String)ed[2]);
            }
            lines[ln-1] = sb.toString();
        }
        Files.write(Paths.get(outPath), String.join("\n", lines).getBytes("UTF-8"));
        System.out.println("WROTE " + outPath);
    }
}