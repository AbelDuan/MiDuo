package dev.duo.icons;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.FileAttribute;
import java.util.Properties;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class d {
    public static final String d = "ABSENT";
    private final Path a;
    private final Path b;
    private final a c;

    public interface a {
        void a() throws Exception;

        void a(Path path) throws Exception;

        void b(Path path) throws Exception;
    }

    public d(Path path, Path path2, a aVar) {
        this.a = path;
        this.b = path2;
        this.c = aVar;
    }

    private Path a(String str) {
        return this.b.resolve(str);
    }

    private Properties b(Path path) throws Exception {
        Properties properties = new Properties();
        if (Files.exists(path, new LinkOption[0])) {
            if (Files.isSymbolicLink(path) || Files.size(path) > 8192) {
                throw new IOException("备份记录无效");
            }
            InputStream newInputStream = Files.newInputStream(path, new OpenOption[0]);
            try {
                properties.load(newInputStream);
                if (newInputStream != null) {
                    newInputStream.close();
                    return properties;
                }
            } catch (Throwable th) {
                if (newInputStream != null) {
                    try {
                        newInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        return properties;
    }

    private Properties c() throws Exception {
        Properties properties = new Properties();
        properties.setProperty("current", a(this.a));
        boolean z = false;
        if (Files.exists(a("baseline.properties"), new LinkOption[0])) {
            properties.setProperty("backup", d());
            properties.setProperty("created", b(a("baseline.properties")).getProperty("created", ""));
        }
        Properties b = b(a("active.properties"));
        properties.setProperty("title", dev.duo.icons.b.getProperty("title", "当前图标将在首次应用时备份"));
        if (properties.getProperty("current").equals(dev.duo.icons.b.getProperty("managed")) && properties.containsKey("backup") && !properties.getProperty("current").equals(properties.getProperty("backup"))) {
            z = true;
        }
        properties.setProperty("canRestore", Boolean.toString(z));
        return properties;
    }

    private String d() throws Exception {
        String property = b(a("baseline.properties")).getProperty("hash");
        if (property == null || !(property.equals(d) || property.equals(a(a("baseline.icons"))))) {
            throw new IOException("图标备份校验失败，未改当前图标");
        }
        return property;
    }

    public static String a(Path path) throws Exception {
        if (Files.isSymbolicLink(path)) {
            throw new IOException("图标路径不能是符号链接");
        }
        LinkOption linkOption = LinkOption.NOFOLLOW_LINKS;
        if (!Files.exists(path, linkOption)) {
            return d;
        }
        if (!Files.isRegularFile(path, linkOption) || Files.size(path) > e.b) {
            throw new IOException("现有图标文件不可备份");
        }
        return e.a(path.toFile());
    }

    private void b() throws Exception {
        if (Files.exists(a("pending.properties"), new LinkOption[0])) {
            Properties b = b(a("pending.properties"));
            String property = dev.duo.icons.b.getProperty("old");
            String property2 = dev.duo.icons.b.getProperty("next");
            String a2 = a(this.a);
            if (property == null || property2 == null) {
                throw new IOException("图标事务记录损坏，备份仍保留");
            }
            if (!a2.equals(property) && !a2.equals(property2)) {
                throw new IOException("上次操作中断且图标已被其他操作更换，备份保留，未覆盖");
            }
            if (!property.equals(d) && !property.equals(a(a("previous.icons")))) {
                throw new IOException("回滚备份校验失败，未覆盖");
            }
            if (!a2.equals(property)) {
                a(property.equals(d) ? null : a("previous.icons"), property2);
            }
            this.c.a();
            if (dev.duo.icons.b.containsKey("oldManaged")) {
                Properties properties = new Properties();
                properties.setProperty("managed", dev.duo.icons.b.getProperty("oldManaged"));
                properties.setProperty("title", dev.duo.icons.b.getProperty("oldTitle", ""));
                a(a("active.properties"), properties);
            } else {
                Files.deleteIfExists(a("active.properties"));
            }
            Files.delete(a("pending.properties"));
            this.c.a(this.b);
        }
    }

    private void a(Path path, Path path2) throws Exception {
        Path createTempFile = Files.createTempFile(this.b, "copy-", ".tmp", new FileAttribute[0]);
        try {
            InputStream newInputStream = Files.newInputStream(path, new OpenOption[0]);
            try {
                e.a(newInputStream, createTempFile.toFile(), e.b);
                if (newInputStream != null) {
                    newInputStream.close();
                }
                Files.move(createTempFile, path2, StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                this.c.a(this.b);
            } finally {
            }
        } finally {
            Files.deleteIfExists(createTempFile);
        }
    }

    private void a(Path path, Properties properties) throws Exception {
        Path createTempFile = Files.createTempFile(this.b, "state-", ".tmp", new FileAttribute[0]);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile.toFile());
            try {
                properties.store(fileOutputStream, "Duo icons");
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                Files.move(createTempFile, path, StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                this.c.a(this.b);
            } finally {
            }
        } finally {
            Files.deleteIfExists(createTempFile);
        }
    }

    private void a(Path path, String str) throws Exception {
        if (!a(this.a).equals(str)) {
            throw new IOException("图标已被其他操作更换，未覆盖");
        }
        if (path == null) {
            Files.deleteIfExists(this.a);
            this.c.a(this.a.getParent());
            return;
        }
        Path createTempFile = Files.createTempFile(this.a.getParent(), "duo-icons-", ".tmp", new FileAttribute[0]);
        try {
            InputStream newInputStream = Files.newInputStream(path, new OpenOption[0]);
            try {
                e.a(newInputStream, createTempFile.toFile(), e.b);
                if (newInputStream != null) {
                    newInputStream.close();
                }
                this.c.b(createTempFile);
                if (a(this.a).equals(str)) {
                    Files.move(createTempFile, this.a, StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                    this.c.a(this.a.getParent());
                    return;
                }
                throw new IOException("图标正在被其他主题更换，未覆盖");
            } finally {
            }
        } finally {
            Files.deleteIfExists(createTempFile);
        }
    }

    private void a() throws Exception {
        if (Files.exists(a("baseline.properties"), new LinkOption[0])) {
            d();
            return;
        }
        String a2 = a(this.a);
        if (!a2.equals(d)) {
            a(this.a, a("baseline.icons"));
        }
        if (a(this.a).equals(a2)) {
            Properties properties = new Properties();
            properties.setProperty("hash", a2);
            properties.setProperty("created", Long.toString(System.currentTimeMillis()));
            a(a("baseline.properties"), properties);
            return;
        }
        throw new IOException("备份期间图标变化，未应用");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[Catch: all -> 0x01eb, SYNTHETIC, TRY_LEAVE, TryCatch #5 {all -> 0x01eb, blocks: (B:79:0x0175, B:115:0x01ea, B:114:0x01e7, B:110:0x01e2), top: B:4:0x002d, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Properties a(String str, Path path, String str2, Path path2) throws Exception {
        RandomAccessFile randomAccessFile;
        Throwable th;
        Throwable th2;
        Files.createDirectories(this.b, new FileAttribute[0]);
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(a("lock").toFile(), "rw");
        try {
            FileLock tryLock = randomAccessFile2.getChannel().tryLock();
            try {
                try {
                    if (tryLock == null) {
                        throw new IOException("另一个图标操作正在进行");
                    }
                    try {
                        b();
                    } catch (Throwable th3) {
                        th = th3;
                        randomAccessFile = randomAccessFile2;
                        th2 = th;
                        if (tryLock == null) {
                            throw th2;
                        }
                        try {
                            tryLock.close();
                            throw th2;
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                            throw th2;
                        }
                    }
                    try {
                        if (str.equals("STATUS")) {
                            Properties c = c();
                            try {
                                tryLock.close();
                                randomAccessFile2.close();
                                return c;
                            } catch (Throwable th5) {
                                th = th5;
                                randomAccessFile = randomAccessFile2;
                                try {
                                    randomAccessFile.close();
                                    throw th;
                                } catch (Throwable th6) {
                                    th.addSuppressed(th6);
                                    throw th;
                                }
                            }
                        }
                        if (!str.equals("APPLY") && !str.equals("RESTORE")) {
                            throw new IOException("不支持的图标操作");
                        }
                        if (str.equals("APPLY")) {
                            e.b(path.toFile());
                            a();
                        }
                        if (!Files.exists(a("baseline.properties"), new LinkOption[0])) {
                            throw new IOException("还没有图标备份，请先应用一次");
                        }
                        String d2 = d();
                        if (path2 != null && !d2.equals(d)) {
                            a(a("baseline.icons"), path2);
                        }
                        Properties b = b(a("active.properties"));
                        String a2 = a(this.a);
                        if (str.equals("RESTORE") && !a2.equals(dev.duo.icons.b.getProperty("managed"))) {
                            throw new IOException("图标已被其他操作更换，备份保留，未覆盖");
                        }
                        if (str.equals("APPLY")) {
                            d2 = a(path);
                        }
                        if (!a2.equals(d)) {
                            a(this.a, a("previous.icons"));
                        }
                        Properties properties = new Properties();
                        properties.setProperty("old", a2);
                        properties.setProperty("next", d2);
                        properties.setProperty("op", str);
                        if (dev.duo.icons.b.containsKey("managed")) {
                            randomAccessFile = randomAccessFile2;
                            properties.setProperty("oldManaged", dev.duo.icons.b.getProperty("managed"));
                            properties.setProperty("oldTitle", dev.duo.icons.b.getProperty("title", ""));
                        } else {
                            randomAccessFile = randomAccessFile2;
                        }
                        a(a("pending.properties"), properties);
                        try {
                            a(d2.equals(d) ? null : str.equals("APPLY") ? path : a("baseline.icons"), a2);
                            this.c.a();
                            if (!a(this.a).equals(d2)) {
                                throw new IOException("应用后图标校验不一致");
                            }
                            Properties properties2 = new Properties();
                            properties2.setProperty("managed", d2);
                            properties2.setProperty("title", str.equals("APPLY") ? str2 : "已恢复首次应用前的图标");
                            a(a("active.properties"), properties2);
                            Files.delete(a("pending.properties"));
                            this.c.a(this.b);
                            Properties c2 = c();
                            tryLock.close();
                            randomAccessFile.close();
                            return c2;
                        } catch (Exception e) {
                            try {
                                if (!Files.exists(a("pending.properties"), new LinkOption[0])) {
                                    a(a("pending.properties"), properties);
                                }
                                b();
                                throw new IOException("图标操作失败，已恢复操作前的图标：" + dev.duo.icons.e.getMessage(), e);
                            } catch (Exception e2) {
                                dev.duo.icons.e.addSuppressed(e2);
                                throw new IOException("图标操作未完成，自动恢复尚未确认；备份已保留。请检查模块状态后重试恢复。", e);
                            }
                        }
                    } catch (Throwable th7) {
                        th2 = th7;
                        randomAccessFile = randomAccessFile2;
                        if (tryLock == null) {
                        }
                    }
                } catch (Throwable th8) {
                    th = th8;
                    th = th;
                    randomAccessFile.close();
                    throw th;
                }
            } catch (Throwable th9) {
                th = th9;
                th2 = th;
                if (tryLock == null) {
                }
            }
        } catch (Throwable th10) {
            th = th10;
            randomAccessFile = randomAccessFile2;
        }
    }
}
