import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.type.*;
import com.github.javaparser.ast.body.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Fix2 {
    public static void main(String[] args) throws Exception {
        String inPath = args[0];
        String outPath = args[1];
        String src = new String(Files.readAllBytes(Paths.get(inPath)), "UTF-8");
        CompilationUnit cu = StaticJavaParser.parse(src);

        // 1) type names (classes declared here)
        Set<String> typeNames = new HashSet<>();
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class))
            typeNames.add(cd.getNameAsString());
        for (EnumDeclaration ed : cu.findAll(EnumDeclaration.class))
            typeNames.add(ed.getNameAsString());

        // 2) find fields whose name equals a type name -> these shadow
        List<VariableDeclarator> toRename = new ArrayList<>();
        for (FieldDeclaration fd : cu.findAll(FieldDeclaration.class)) {
            for (VariableDeclarator v : fd.getVariables()) {
                String nm = v.getNameAsString();
                if (typeNames.contains(nm) && !nm.endsWith("_v")) toRename.add(v);
            }
        }
        Set<String> shadowNames = new HashSet<>();
        for (VariableDeclarator v : toRename) shadowNames.add(v.getNameAsString());
        System.out.println("RENAME_FIELDS: " + shadowNames.size() + " -> " + shadowNames);

        // 3) rename declarations
        for (VariableDeclarator v : toRename) v.setName(v.getNameAsString() + "_v");

        // 4) rename value-position references (NameExpr) only
        int changed = 0;
        for (NameExpr ne : cu.findAll(NameExpr.class)) {
            String nm = ne.getNameAsString();
            if (shadowNames.contains(nm)) {
                // skip if this NameExpr is a scope of a FieldAccessExpr that names a nested class member? 
                ne.setName(nm + "_v");
                changed++;
            }
        }
        System.out.println("NameExpr rewritten: " + changed);

        // 5) also rewrite `this.<name>` (FieldAccessExpr with this scope)
        int fa = 0;
        for (FieldAccessExpr f : cu.findAll(FieldAccessExpr.class)) {
            if (f.getScope() instanceof ThisExpr) {
                String nm = f.getNameAsString();
                if (shadowNames.contains(nm)) { f.setName(nm + "_v"); fa++; }
            }
        }
        System.out.println("this.<field> rewritten: " + fa);

        Files.write(Paths.get(outPath), cu.toString().getBytes("UTF-8"));
        System.out.println("WROTE " + outPath);
    }
}