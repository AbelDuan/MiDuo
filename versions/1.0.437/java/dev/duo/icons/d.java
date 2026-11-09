package dev.duo.icons;

/* loaded from: classes.dex */
public final class d {
    public static final java.lang.String d = "ABSENT";
    private final java.nio.file.Path a;
    private final java.nio.file.Path b;
    private final dev.duo.icons.d.a c;

    public interface a {
        void a() throws java.lang.Exception;

        void a(java.nio.file.Path path) throws java.lang.Exception;

        void b(java.nio.file.Path path) throws java.lang.Exception;
    }

    public d(java.nio.file.Path path, java.nio.file.Path path2, dev.duo.icons.d.a aVar) {
        this.a = path;
        this.b = path2;
        this.c = aVar;
    }

    private java.nio.file.Path a(java.lang.String str) {
        return this.b.resolve(str);
    }

    private java.util.Properties b(java.nio.file.Path path) throws java.lang.Exception {
        java.util.Properties properties = new java.util.Properties();
        if (java.nio.file.Files.exists(path, new java.nio.file.LinkOption[0])) {
            if (java.nio.file.Files.isSymbolicLink(path) || java.nio.file.Files.size(path) > 8192) {
                throw new java.io.IOException("备份记录无效");
            }
            java.io.InputStream newInputStream = java.nio.file.Files.newInputStream(path, new java.nio.file.OpenOption[0]);
            try {
                properties.load(newInputStream);
                if (newInputStream != null) {
                    newInputStream.close();
                    return properties;
                }
            } catch (java.lang.Throwable th) {
                if (newInputStream != null) {
                    try {
                        newInputStream.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        return properties;
    }

    private java.util.Properties c() throws java.lang.Exception {
        java.util.Properties properties = new java.util.Properties();
        properties.setProperty("current", a(this.a));
        boolean z = false;
        if (java.nio.file.Files.exists(a("baseline.properties"), new java.nio.file.LinkOption[0])) {
            properties.setProperty("backup", d());
            properties.setProperty("created", b(a("baseline.properties")).getProperty("created", ""));
        }
        java.util.Properties b = b(a("active.properties"));
        properties.setProperty("title", b.getProperty("title", "当前图标将在首次应用时备份"));
        if (properties.getProperty("current").equals(b.getProperty("managed")) && properties.containsKey("backup") && !properties.getProperty("current").equals(properties.getProperty("backup"))) {
            z = true;
        }
        properties.setProperty("canRestore", java.lang.Boolean.toString(z));
        return properties;
    }

    private java.lang.String d() throws java.lang.Exception {
        java.lang.String property = b(a("baseline.properties")).getProperty("hash");
        if (property == null || !(property.equals(d) || property.equals(a(a("baseline.icons"))))) {
            throw new java.io.IOException("图标备份校验失败，未改当前图标");
        }
        return property;
    }

    public static java.lang.String a(java.nio.file.Path path) throws java.lang.Exception {
        if (java.nio.file.Files.isSymbolicLink(path)) {
            throw new java.io.IOException("图标路径不能是符号链接");
        }
        java.nio.file.LinkOption linkOption = java.nio.file.LinkOption.NOFOLLOW_LINKS;
        if (!java.nio.file.Files.exists(path, linkOption)) {
            return d;
        }
        if (!java.nio.file.Files.isRegularFile(path, linkOption) || java.nio.file.Files.size(path) > dev.duo.icons.e.b) {
            throw new java.io.IOException("现有图标文件不可备份");
        }
        return dev.duo.icons.e.a(path.toFile());
    }

    private void b() throws java.lang.Exception {
        if (java.nio.file.Files.exists(a("pending.properties"), new java.nio.file.LinkOption[0])) {
            java.util.Properties b = b(a("pending.properties"));
            java.lang.String property = b.getProperty("old");
            java.lang.String property2 = b.getProperty("next");
            java.lang.String a2 = a(this.a);
            if (property == null || property2 == null) {
                throw new java.io.IOException("图标事务记录损坏，备份仍保留");
            }
            if (!a2.equals(property) && !a2.equals(property2)) {
                throw new java.io.IOException("上次操作中断且图标已被其他操作更换，备份保留，未覆盖");
            }
            if (!property.equals(d) && !property.equals(a(a("previous.icons")))) {
                throw new java.io.IOException("回滚备份校验失败，未覆盖");
            }
            if (!a2.equals(property)) {
                a(property.equals(d) ? null : a("previous.icons"), property2);
            }
            this.c.a();
            if (b.containsKey("oldManaged")) {
                java.util.Properties properties = new java.util.Properties();
                properties.setProperty("managed", b.getProperty("oldManaged"));
                properties.setProperty("title", b.getProperty("oldTitle", ""));
                a(a("active.properties"), properties);
            } else {
                java.nio.file.Files.deleteIfExists(a("active.properties"));
            }
            java.nio.file.Files.delete(a("pending.properties"));
            this.c.a(this.b);
        }
    }

    private void a(java.nio.file.Path path, java.nio.file.Path path2) throws java.lang.Exception {
        java.nio.file.Path createTempFile = java.nio.file.Files.createTempFile(this.b, "copy-", ".tmp", new java.nio.file.attribute.FileAttribute[0]);
        try {
            java.io.InputStream newInputStream = java.nio.file.Files.newInputStream(path, new java.nio.file.OpenOption[0]);
            try {
                dev.duo.icons.e.a(newInputStream, createTempFile.toFile(), dev.duo.icons.e.b);
                if (newInputStream != null) {
                    newInputStream.close();
                }
                java.nio.file.Files.move(createTempFile, path2, java.nio.file.StandardCopyOption.REPLACE_EXISTING, java.nio.file.StandardCopyOption.ATOMIC_MOVE);
                this.c.a(this.b);
            } finally {
            }
        } finally {
            java.nio.file.Files.deleteIfExists(createTempFile);
        }
    }

    private void a(java.nio.file.Path path, java.util.Properties properties) throws java.lang.Exception {
        java.nio.file.Path createTempFile = java.nio.file.Files.createTempFile(this.b, "state-", ".tmp", new java.nio.file.attribute.FileAttribute[0]);
        try {
            java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(createTempFile.toFile());
            try {
                properties.store(fileOutputStream, "Duo icons");
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                java.nio.file.Files.move(createTempFile, path, java.nio.file.StandardCopyOption.REPLACE_EXISTING, java.nio.file.StandardCopyOption.ATOMIC_MOVE);
                this.c.a(this.b);
            } finally {
            }
        } finally {
            java.nio.file.Files.deleteIfExists(createTempFile);
        }
    }

    private void a(java.nio.file.Path path, java.lang.String str) throws java.lang.Exception {
        if (!a(this.a).equals(str)) {
            throw new java.io.IOException("图标已被其他操作更换，未覆盖");
        }
        if (path == null) {
            java.nio.file.Files.deleteIfExists(this.a);
            this.c.a(this.a.getParent());
            return;
        }
        java.nio.file.Path createTempFile = java.nio.file.Files.createTempFile(this.a.getParent(), "duo-icons-", ".tmp", new java.nio.file.attribute.FileAttribute[0]);
        try {
            java.io.InputStream newInputStream = java.nio.file.Files.newInputStream(path, new java.nio.file.OpenOption[0]);
            try {
                dev.duo.icons.e.a(newInputStream, createTempFile.toFile(), dev.duo.icons.e.b);
                if (newInputStream != null) {
                    newInputStream.close();
                }
                this.c.b(createTempFile);
                if (a(this.a).equals(str)) {
                    java.nio.file.Files.move(createTempFile, this.a, java.nio.file.StandardCopyOption.REPLACE_EXISTING, java.nio.file.StandardCopyOption.ATOMIC_MOVE);
                    this.c.a(this.a.getParent());
                    return;
                }
                throw new java.io.IOException("图标正在被其他主题更换，未覆盖");
            } finally {
            }
        } finally {
            java.nio.file.Files.deleteIfExists(createTempFile);
        }
    }

    private void a() throws java.lang.Exception {
        if (java.nio.file.Files.exists(a("baseline.properties"), new java.nio.file.LinkOption[0])) {
            d();
            return;
        }
        java.lang.String a2 = a(this.a);
        if (!a2.equals(d)) {
            a(this.a, a("baseline.icons"));
        }
        if (a(this.a).equals(a2)) {
            java.util.Properties properties = new java.util.Properties();
            properties.setProperty("hash", a2);
            properties.setProperty("created", java.lang.Long.toString(java.lang.System.currentTimeMillis()));
            a(a("baseline.properties"), properties);
            return;
        }
        throw new java.io.IOException("备份期间图标变化，未应用");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[Catch: all -> 0x01eb, SYNTHETIC, TRY_LEAVE, TryCatch #5 {all -> 0x01eb, blocks: (B:79:0x0175, B:115:0x01ea, B:114:0x01e7, B:110:0x01e2), top: B:4:0x002d, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Properties a(java.lang.String r18, java.nio.file.Path r19, java.lang.String r20, java.nio.file.Path r21) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.icons.d.a(java.lang.String, java.nio.file.Path, java.lang.String, java.nio.file.Path):java.util.Properties");
    }
}
