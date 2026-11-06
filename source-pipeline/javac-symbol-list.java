import com.sun.source.util.*;
import javax.tools.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class SymList {
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
            Arrays.asList("-proc:none", "-nowarn", "-encoding", "UTF-8", "-Xlint:none"), null, units);
        task.parse();
        task.analyze();
        List<String> rows = new ArrayList<>();
        for (Diagnostic<? extends JavaFileObject> d : diags.getDiagnostics()) {
            if (d.getKind() != Diagnostic.Kind.ERROR) continue;
            String f = d.getSource() == null ? "?" : new File(d.getSource().getName()).getName();
            rows.add(f + ":" + d.getLineNumber() + ":" + d.getColumnNumber() + " " 
                     + d.getMessage(null).split("\n")[0]);
        }
        Collections.sort(rows);
        for (String r : rows) System.out.println(r);
        fm.close();
    }
}