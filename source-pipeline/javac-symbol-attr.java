import com.sun.source.tree.*;
import com.sun.source.util.*;
import javax.lang.model.element.*;
import javax.tools.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

/** Attribute all sources and report NameExpr/FieldAccess that fail to resolve. */
public class SymAttr {
    public static void main(String[] args) throws Exception {
        String root = args[0], cp = args[1];
        List<File> javas = new ArrayList<>();
        Files.walk(Paths.get(root)).filter(p -> p.toString().endsWith(".java"))
             .forEach(p -> javas.add(p.toFile()));
        JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();
        DiagnosticCollector<JavaFileObject> diags = new DiagnosticCollector<>();
        StandardJavaFileManager fm = compiler.getStandardFileManager(diags, null, null);
        fm.setLocation(StandardLocation.CLASS_PATH,
            Arrays.stream(cp.split(";")).map(File::new).collect(java.util.stream.Collectors.toList()));
        Iterable<? extends JavaFileObject> units = fm.getJavaFileObjectsFromFiles(javas);
        JavacTask task = (JavacTask) compiler.getTask(null, fm, diags,
            Arrays.asList("-proc:none", "-nowarn", "-encoding", "UTF-8"), null, units);
        task.parse();
        task.analyze();

        Map<String,Integer> byFile = new TreeMap<>();
        Map<String,Integer> byKind = new TreeMap<>();
        for (Diagnostic<? extends JavaFileObject> d : diags.getDiagnostics()) {
            if (d.getKind() != Diagnostic.Kind.ERROR) continue;
            String f = d.getSource() == null ? "?" : new File(d.getSource().getName()).getName();
            byFile.merge(f, 1, Integer::sum);
            String msg = d.getMessage(null).split("\n")[0];
            String kind = msg.length() > 60 ? msg.substring(0, 60) : msg;
            byKind.merge(kind, 1, Integer::sum);
        }
        System.out.println("ATTR errors total: " + byKind.values().stream().mapToInt(i->i).sum());
        System.out.println("by file (" + byFile.size() + "):");
        byFile.forEach((k,v) -> System.out.println("  " + v + "  " + k));
        System.out.println("by kind (" + byKind.size() + "):");
        int i = 0;
        for (Map.Entry<String,Integer> e : byKind.entrySet()) {
            System.out.println("  " + e.getValue() + "  " + e.getKey());
            if (++i >= 10) break;
        }
        fm.close();
    }
}