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

/* renamed from: dev.duo.icons.d */
/* loaded from: classes.dex */
public final class C0128d {

    /* renamed from: d */
    public static final String f1930d = "ABSENT";

    /* renamed from: a */
    private final Path f1931a;

    /* renamed from: b */
    private final Path f1932b;

    /* renamed from: c */
    private final a f1933c;

    /* renamed from: dev.duo.icons.d$a */
    public interface a {
        /* renamed from: a */
        void mo2102a() throws Exception;

        /* renamed from: a */
        void mo2103a(Path path) throws Exception;

        /* renamed from: b */
        void mo2104b(Path path) throws Exception;
    }

    public C0128d(Path path, Path path2, a aVar) {
        this.f1931a = path;
        this.f1932b = path2;
        this.f1933c = aVar;
    }

    /* renamed from: a */
    private Path m2092a(String str) {
        return this.f1932b.resolve(str);
    }

    /* renamed from: b */
    private Properties m2097b(Path path) throws Exception {
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

    /* renamed from: c */
    private Properties m2099c() throws Exception {
        Properties properties = new Properties();
        properties.setProperty("current", m2091a(this.f1931a));
        boolean z = false;
        if (Files.exists(m2092a("baseline.properties"), new LinkOption[0])) {
            properties.setProperty("backup", m2100d());
            properties.setProperty("created", m2097b(m2092a("baseline.properties")).getProperty("created", ""));
        }
        Properties m2097b = m2097b(m2092a("active.properties"));
        properties.setProperty("title", m2097b.getProperty("title", "当前图标将在首次应用时备份"));
        if (properties.getProperty("current").equals(m2097b.getProperty("managed")) && properties.containsKey("backup") && !properties.getProperty("current").equals(properties.getProperty("backup"))) {
            z = true;
        }
        properties.setProperty("canRestore", Boolean.toString(z));
        return properties;
    }

    /* renamed from: d */
    private String m2100d() throws Exception {
        String property = m2097b(m2092a("baseline.properties")).getProperty("hash");
        if (property == null || !(property.equals(f1930d) || property.equals(m2091a(m2092a("baseline.icons"))))) {
            throw new IOException("图标备份校验失败，未改当前图标");
        }
        return property;
    }

    /* renamed from: a */
    public static String m2091a(Path path) throws Exception {
        if (Files.isSymbolicLink(path)) {
            throw new IOException("图标路径不能是符号链接");
        }
        LinkOption linkOption = LinkOption.NOFOLLOW_LINKS;
        if (!Files.exists(path, linkOption)) {
            return f1930d;
        }
        if (!Files.isRegularFile(path, linkOption) || Files.size(path) > C0129e.f1935b) {
            throw new IOException("现有图标文件不可备份");
        }
        return C0129e.m2109a(path.toFile());
    }

    /* renamed from: b */
    private void m2098b() throws Exception {
        if (Files.exists(m2092a("pending.properties"), new LinkOption[0])) {
            Properties m2097b = m2097b(m2092a("pending.properties"));
            String property = m2097b.getProperty("old");
            String property2 = m2097b.getProperty("next");
            String m2091a = m2091a(this.f1931a);
            if (property == null || property2 == null) {
                throw new IOException("图标事务记录损坏，备份仍保留");
            }
            if (!m2091a.equals(property) && !m2091a.equals(property2)) {
                throw new IOException("上次操作中断且图标已被其他操作更换，备份保留，未覆盖");
            }
            if (!property.equals(f1930d) && !property.equals(m2091a(m2092a("previous.icons")))) {
                throw new IOException("回滚备份校验失败，未覆盖");
            }
            if (!m2091a.equals(property)) {
                m2094a(property.equals(f1930d) ? null : m2092a("previous.icons"), property2);
            }
            this.f1933c.mo2102a();
            if (m2097b.containsKey("oldManaged")) {
                Properties properties = new Properties();
                properties.setProperty("managed", m2097b.getProperty("oldManaged"));
                properties.setProperty("title", m2097b.getProperty("oldTitle", ""));
                m2096a(m2092a("active.properties"), properties);
            } else {
                Files.deleteIfExists(m2092a("active.properties"));
            }
            Files.delete(m2092a("pending.properties"));
            this.f1933c.mo2103a(this.f1932b);
        }
    }

    /* renamed from: a */
    private void m2095a(Path path, Path path2) throws Exception {
        Path createTempFile = Files.createTempFile(this.f1932b, "copy-", ".tmp", new FileAttribute[0]);
        try {
            InputStream newInputStream = Files.newInputStream(path, new OpenOption[0]);
            try {
                C0129e.m2112a(newInputStream, createTempFile.toFile(), C0129e.f1935b);
                if (newInputStream != null) {
                    newInputStream.close();
                }
                Files.move(createTempFile, path2, StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                this.f1933c.mo2103a(this.f1932b);
            } finally {
            }
        } finally {
            Files.deleteIfExists(createTempFile);
        }
    }

    /* renamed from: a */
    private void m2096a(Path path, Properties properties) throws Exception {
        Path createTempFile = Files.createTempFile(this.f1932b, "state-", ".tmp", new FileAttribute[0]);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile.toFile());
            try {
                properties.store(fileOutputStream, "Duo icons");
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                Files.move(createTempFile, path, StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                this.f1933c.mo2103a(this.f1932b);
            } finally {
            }
        } finally {
            Files.deleteIfExists(createTempFile);
        }
    }

    /* renamed from: a */
    private void m2094a(Path path, String str) throws Exception {
        if (!m2091a(this.f1931a).equals(str)) {
            throw new IOException("图标已被其他操作更换，未覆盖");
        }
        if (path == null) {
            Files.deleteIfExists(this.f1931a);
            this.f1933c.mo2103a(this.f1931a.getParent());
            return;
        }
        Path createTempFile = Files.createTempFile(this.f1931a.getParent(), "duo-icons-", ".tmp", new FileAttribute[0]);
        try {
            InputStream newInputStream = Files.newInputStream(path, new OpenOption[0]);
            try {
                C0129e.m2112a(newInputStream, createTempFile.toFile(), C0129e.f1935b);
                if (newInputStream != null) {
                    newInputStream.close();
                }
                this.f1933c.mo2104b(createTempFile);
                if (m2091a(this.f1931a).equals(str)) {
                    Files.move(createTempFile, this.f1931a, StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                    this.f1933c.mo2103a(this.f1931a.getParent());
                    return;
                }
                throw new IOException("图标正在被其他主题更换，未覆盖");
            } finally {
            }
        } finally {
            Files.deleteIfExists(createTempFile);
        }
    }

    /* renamed from: a */
    private void m2093a() throws Exception {
        if (Files.exists(m2092a("baseline.properties"), new LinkOption[0])) {
            m2100d();
            return;
        }
        String m2091a = m2091a(this.f1931a);
        if (!m2091a.equals(f1930d)) {
            m2095a(this.f1931a, m2092a("baseline.icons"));
        }
        if (m2091a(this.f1931a).equals(m2091a)) {
            Properties properties = new Properties();
            properties.setProperty("hash", m2091a);
            properties.setProperty("created", Long.toString(System.currentTimeMillis()));
            m2096a(m2092a("baseline.properties"), properties);
            return;
        }
        throw new IOException("备份期间图标变化，未应用");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[Catch: all -> 0x01eb, SYNTHETIC, TRY_LEAVE, TryCatch #5 {all -> 0x01eb, blocks: (B:79:0x0175, B:115:0x01ea, B:114:0x01e7, B:110:0x01e2), top: B:4:0x002d, inners: #3 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Properties m2101a(String str, Path path, String str2, Path path2) throws Exception {
        RandomAccessFile randomAccessFile;
        Throwable th;
        Throwable th2;
        Files.createDirectories(this.f1932b, new FileAttribute[0]);
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(m2092a("lock").toFile(), "rw");
        try {
            FileLock tryLock = randomAccessFile2.getChannel().tryLock();
            try {
                try {
                    if (tryLock == null) {
                        throw new IOException("另一个图标操作正在进行");
                    }
                    try {
                        m2098b();
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
                            Properties m2099c = m2099c();
                            try {
                                tryLock.close();
                                randomAccessFile2.close();
                                return m2099c;
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
                            C0129e.m2114b(path.toFile());
                            m2093a();
                        }
                        if (!Files.exists(m2092a("baseline.properties"), new LinkOption[0])) {
                            throw new IOException("还没有图标备份，请先应用一次");
                        }
                        String m2100d = m2100d();
                        if (path2 != null && !m2100d.equals(f1930d)) {
                            m2095a(m2092a("baseline.icons"), path2);
                        }
                        Properties m2097b = m2097b(m2092a("active.properties"));
                        String m2091a = m2091a(this.f1931a);
                        if (str.equals("RESTORE") && !m2091a.equals(m2097b.getProperty("managed"))) {
                            throw new IOException("图标已被其他操作更换，备份保留，未覆盖");
                        }
                        if (str.equals("APPLY")) {
                            m2100d = m2091a(path);
                        }
                        if (!m2091a.equals(f1930d)) {
                            m2095a(this.f1931a, m2092a("previous.icons"));
                        }
                        Properties properties = new Properties();
                        properties.setProperty("old", m2091a);
                        properties.setProperty("next", m2100d);
                        properties.setProperty("op", str);
                        if (m2097b.containsKey("managed")) {
                            randomAccessFile = randomAccessFile2;
                            properties.setProperty("oldManaged", m2097b.getProperty("managed"));
                            properties.setProperty("oldTitle", m2097b.getProperty("title", ""));
                        } else {
                            randomAccessFile = randomAccessFile2;
                        }
                        m2096a(m2092a("pending.properties"), properties);
                        try {
                            m2094a(m2100d.equals(f1930d) ? null : str.equals("APPLY") ? path : m2092a("baseline.icons"), m2091a);
                            this.f1933c.mo2102a();
                            if (!m2091a(this.f1931a).equals(m2100d)) {
                                throw new IOException("应用后图标校验不一致");
                            }
                            Properties properties2 = new Properties();
                            properties2.setProperty("managed", m2100d);
                            properties2.setProperty("title", str.equals("APPLY") ? str2 : "已恢复首次应用前的图标");
                            m2096a(m2092a("active.properties"), properties2);
                            Files.delete(m2092a("pending.properties"));
                            this.f1933c.mo2103a(this.f1932b);
                            Properties m2099c2 = m2099c();
                            tryLock.close();
                            randomAccessFile.close();
                            return m2099c2;
                        } catch (Exception e) {
                            try {
                                if (!Files.exists(m2092a("pending.properties"), new LinkOption[0])) {
                                    m2096a(m2092a("pending.properties"), properties);
                                }
                                m2098b();
                                throw new IOException("图标操作失败，已恢复操作前的图标：" + e.getMessage(), e);
                            } catch (Exception e2) {
                                e.addSuppressed(e2);
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
