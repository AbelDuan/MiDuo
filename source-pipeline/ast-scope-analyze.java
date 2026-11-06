import com.github.javaparser.*;
import com.github.javaparser.ast.*;
import com.github.javaparser.ast.expr.*;
import com.github.javaparser.ast.type.*;
import com.github.javaparser.ast.body.*;
import com.github.javaparser.ast.visitor.*;
import java.io.*;
import java.util.*;

public class ScopeFix {
    public static void main(String[] args) throws Exception {
        String path = args[0];
        String src = new String(java.nio.file.Files.readAllBytes(java.nio.file.Paths.get(path)), "UTF-8");
        CompilationUnit cu;
        try {
            cu = StaticJavaParser.parse(src);
        } catch (Exception e) {
            System.out.println("PARSE_FAILED: " + e.getMessage());
            return;
        }
        // Collect every class's declared field names (with/without _v)
        Map<String, Set<String>> classFields = new HashMap<>();
        Map<String, String> classTypes = new HashMap<>();
        for (ClassOrInterfaceDeclaration cd : cu.findAll(ClassOrInterfaceDeclaration.class)) {
            Set<String> f = new HashSet<>();
            for (FieldDeclaration fd : cd.getFields()) {
                for (VariableDeclarator v : fd.getVariables()) {
                    f.add(v.getNameAsString());
                    classTypes.put(cd.getNameAsString() + "." + v.getNameAsString(), v.getTypeAsString());
                }
            }
            classFields.put(cd.getNameAsString(), f);
        }
        System.out.println("CLASSES: " + classFields.size());
        // Count NameExpr (value position) vs Type (type position)
        int nameExprs = 0, types = 0;
        for (NameExpr ne : cu.findAll(NameExpr.class)) nameExprs++;
        for (ClassOrInterfaceType t : cu.findAll(ClassOrInterfaceType.class)) types++;
        System.out.println("NameExpr(value): " + nameExprs + "  ClassOrInterfaceType(type): " + types);
        // Find names that appear BOTH as a field and as a type
        Set<String> fieldNames = new HashSet<>();
        for (Set<String> s : classFields.values()) fieldNames.addAll(s);
        Set<String> typeNames = new HashSet<>();
        for (ClassOrInterfaceType t : cu.findAll(ClassOrInterfaceType.class)) {
            typeNames.add(t.getNameAsString());
        }
        Set<String> both = new HashSet<>(fieldNames);
        both.retainAll(typeNames);
        System.out.println("NAMES_BOTH_FIELD_AND_TYPE: " + both.size() + " -> " + both);
    }
}