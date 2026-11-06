.class public final Ldev/duo/icons/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/icons/d$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "ABSENT"


# instance fields
.field private final a:Ljava/nio/file/Path;

.field private final b:Ljava/nio/file/Path;

.field private final c:Ldev/duo/icons/d$a;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;Ldev/duo/icons/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    iput-object p2, p0, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    iput-object p3, p0, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    return-void
.end method

.method public static a(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v0}, [Ljava/nio/file/LinkOption;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "ABSENT"

    return-object p0

    .line 4
    :cond_0
    filled-new-array {v0}, [Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    const-wide/32 v2, 0x8000000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ldev/duo/icons/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u73b0\u6709\u56fe\u6807\u6587\u4ef6\u4e0d\u53ef\u5907\u4efd"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u56fe\u6807\u8def\u5f84\u4e0d\u80fd\u662f\u7b26\u53f7\u94fe\u63a5"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    const-string v0, "baseline.properties"

    invoke-direct {p0, v0}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ldev/duo/icons/d;->d()Ljava/lang/String;

    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {v1}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    const-string v3, "baseline.icons"

    invoke-direct {p0, v3}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 44
    :cond_1
    iget-object v2, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {v2}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const-string v3, "hash"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "created"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/util/Properties;)V

    return-void

    .line 46
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u5907\u4efd\u671f\u95f4\u56fe\u6807\u53d8\u5316\uff0c\u672a\u5e94\u7528"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {v0}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    iget-object p1, p0, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    iget-object p2, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-interface {p2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p1, p2}, Ldev/duo/icons/d$a;->a(Ljava/nio/file/Path;)V

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    const-string v3, "duo-icons-"

    const-string v4, ".tmp"

    invoke-static {v0, v3, v4, v2}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    .line 29
    :try_start_0
    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    const-wide/32 v3, 0x8000000

    invoke-static {p1, v2, v3, v4}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;Ljava/io/File;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 30
    :cond_1
    iget-object p1, p0, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    invoke-interface {p1, v0}, Ldev/duo/icons/d$a;->b(Ljava/nio/file/Path;)V

    .line 31
    iget-object p1, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {p1}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    iget-object p1, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v2, p2, v1

    sget-object v1, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v2, 0x1

    aput-object v1, p2, v2

    invoke-static {v0, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    iget-object p1, p0, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    iget-object p2, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-interface {p2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p1, p2}, Ldev/duo/icons/d$a;->a(Ljava/nio/file/Path;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 33
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    return-void

    .line 34
    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u56fe\u6807\u6b63\u5728\u88ab\u5176\u4ed6\u4e3b\u9898\u66f4\u6362\uff0c\u672a\u8986\u76d6"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_3

    .line 35
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    :cond_3
    :goto_0
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 29
    :catchall_2
    move-exception p1

    .line 40
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    throw p1

    .line 41
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u56fe\u6807\u5df2\u88ab\u5176\u4ed6\u64cd\u4f5c\u66f4\u6362\uff0c\u672a\u8986\u76d6"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    const-string v3, "copy-"

    const-string v4, ".tmp"

    invoke-static {v0, v3, v4, v2}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    .line 10
    :try_start_0
    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    const-wide/32 v3, 0x8000000

    invoke-static {p1, v2, v3, v4}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;Ljava/io/File;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 11
    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v2, p1, v1

    sget-object v1, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v2, 0x1

    aput-object v1, p1, v2

    invoke-static {v0, p2, p1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    iget-object p1, p0, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    iget-object p2, p0, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    invoke-interface {p1, p2}, Ldev/duo/icons/d$a;->a(Ljava/nio/file/Path;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 13
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 14
    :cond_1
    :goto_0
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 10
    :catchall_2
    move-exception p1

    .line 16
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    throw p1
.end method

.method private a(Ljava/nio/file/Path;Ljava/util/Properties;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    const-string v3, "state-"

    const-string v4, ".tmp"

    invoke-static {v0, v3, v4, v2}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    .line 19
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v3, "Duo icons"

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 20
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v2, p2, v1

    sget-object v1, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v2, 0x1

    aput-object v1, p2, v2

    invoke-static {v0, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    iget-object p1, p0, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    iget-object p2, p0, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    invoke-interface {p1, p2}, Ldev/duo/icons/d$a;->a(Ljava/nio/file/Path;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21
    :catchall_2
    move-exception p1

    .line 24
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    throw p1
.end method

.method private b(Ljava/nio/file/Path;)Ljava/util/Properties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\u5907\u4efd\u8bb0\u5f55\u65e0\u6548"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    const-string v0, "pending.properties"

    invoke-direct {p0, v0}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Ldev/duo/icons/d;->b(Ljava/nio/file/Path;)Ljava/util/Properties;

    move-result-object v1

    const-string v2, "old"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "next"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {v4}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 5
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u4e0a\u6b21\u64cd\u4f5c\u4e2d\u65ad\u4e14\u56fe\u6807\u5df2\u88ab\u5176\u4ed6\u64cd\u4f5c\u66f4\u6362\uff0c\u5907\u4efd\u4fdd\u7559\uff0c\u672a\u8986\u76d6"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    const-string v5, "ABSENT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "previous.icons"

    if-nez v6, :cond_4

    invoke-direct {p0, v7}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56de\u6eda\u5907\u4efd\u6821\u9a8c\u5931\u8d25\uff0c\u672a\u8986\u76d6"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-direct {p0, v7}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    :goto_2
    invoke-direct {p0, v2, v3}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 8
    :cond_6
    iget-object v2, p0, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    invoke-interface {v2}, Ldev/duo/icons/d$a;->a()V

    .line 9
    const-string v2, "oldManaged"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "active.properties"

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "managed"

    invoke-virtual {v3, v5, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "oldTitle"

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v3, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, v4}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/util/Properties;)V

    goto :goto_3

    .line 10
    :cond_7
    invoke-direct {p0, v4}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 11
    :goto_3
    invoke-direct {p0, v0}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    iget-object v0, p0, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    iget-object v1, p0, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    invoke-interface {v0, v1}, Ldev/duo/icons/d$a;->a(Ljava/nio/file/Path;)V

    return-void

    .line 12
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u4e8b\u52a1\u8bb0\u5f55\u635f\u574f\uff0c\u5907\u4efd\u4ecd\u4fdd\u7559"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Ljava/util/Properties;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {v1}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-string v1, "baseline.properties"

    invoke-direct {p0, v1}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    const-string v5, "backup"

    if-eqz v3, :cond_0

    invoke-direct {p0}, Ldev/duo/icons/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Ldev/duo/icons/d;->b(Ljava/nio/file/Path;)Ljava/util/Properties;

    move-result-object v1

    const-string v3, ""

    const-string v6, "created"

    invoke-virtual {v1, v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    :cond_0
    const-string v1, "active.properties"

    invoke-direct {p0, v1}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v1}, Ldev/duo/icons/d;->b(Ljava/nio/file/Path;)Ljava/util/Properties;

    move-result-object v1

    const-string v3, "\u5f53\u524d\u56fe\u6807\u5c06\u5728\u9996\u6b21\u5e94\u7528\u65f6\u5907\u4efd"

    const-string v6, "title"

    invoke-virtual {v1, v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "managed"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "canRestore"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "baseline.properties"

    invoke-direct {p0, v0}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/icons/d;->b(Ljava/nio/file/Path;)Ljava/util/Properties;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    const-string v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "baseline.icons"

    invoke-direct {p0, v1}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u5907\u4efd\u6821\u9a8c\u5931\u8d25\uff0c\u672a\u6539\u5f53\u524d\u56fe\u6807"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/nio/file/Path;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/util/Properties;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    const-string v3, "active.properties"

    const-string v4, "pending.properties"

    const-string v5, "APPLY"

    .line 47
    iget-object v6, v1, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v6, v8}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 48
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v8, "lock"

    invoke-direct {v1, v8}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v8

    const-string v9, "rw"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v8, :cond_10

    .line 49
    :try_start_1
    invoke-direct {v1}, Ldev/duo/icons/d;->b()V

    .line 50
    const-string v9, "STATUS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v9, :cond_0

    :try_start_2
    invoke-direct {v1}, Ldev/duo/icons/d;->c()Ljava/util/Properties;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :try_start_3
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v6

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v6

    goto/16 :goto_6

    .line 74
    :cond_0
    :try_start_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v10, "RESTORE"

    if-nez v9, :cond_2

    :try_start_5
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u4e0d\u652f\u6301\u7684\u56fe\u6807\u64cd\u4f5c"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    :cond_2
    :goto_0
    :try_start_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v9, :cond_3

    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v9

    invoke-static {v9}, Ldev/duo/icons/e;->b(Ljava/io/File;)I

    invoke-direct {v1}, Ldev/duo/icons/d;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 76
    :cond_3
    :try_start_8
    const-string v9, "baseline.properties"

    invoke-direct {v1, v9}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    new-array v11, v7, [Ljava/nio/file/LinkOption;

    invoke-static {v9, v11}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 77
    invoke-direct {v1}, Ldev/duo/icons/d;->d()Ljava/lang/String;

    move-result-object v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-string v11, "baseline.icons"

    const-string v12, "ABSENT"

    if-eqz v2, :cond_4

    .line 78
    :try_start_9
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-direct {v1, v11}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    invoke-direct {v1, v13, v2}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 79
    :cond_4
    :try_start_a
    invoke-direct {v1, v3}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {v1, v2}, Ldev/duo/icons/d;->b(Ljava/nio/file/Path;)Ljava/util/Properties;

    move-result-object v2

    iget-object v13, v1, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {v13}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v13

    .line 80
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const-string v14, "managed"

    if-eqz v10, :cond_6

    :try_start_b
    invoke-virtual {v2, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u5df2\u88ab\u5176\u4ed6\u64cd\u4f5c\u66f4\u6362\uff0c\u5907\u4efd\u4fdd\u7559\uff0c\u672a\u8986\u76d6"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 81
    :cond_6
    :goto_1
    :try_start_c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v10, :cond_7

    :try_start_d
    invoke-static/range {p2 .. p2}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 82
    :cond_7
    :try_start_e
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-nez v10, :cond_8

    :try_start_f
    iget-object v10, v1, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    const-string v15, "previous.icons"

    invoke-direct {v1, v15}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v15

    invoke-direct {v1, v10, v15}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 83
    :cond_8
    :try_start_10
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    const-string v15, "old"

    invoke-virtual {v10, v15, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v15, "next"

    invoke-virtual {v10, v15, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v15, "op"

    invoke-virtual {v10, v15, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v2, v14}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const-string v7, "title"

    if-eqz v15, :cond_9

    :try_start_11
    const-string v15, "oldManaged"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-object/from16 v16, v6

    :try_start_12
    invoke-virtual {v2, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v15, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "oldTitle"

    const-string v15, ""

    invoke-virtual {v2, v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    move-object/from16 v16, v6

    .line 85
    :goto_2
    invoke-direct {v1, v4}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/util/Properties;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 87
    :try_start_13
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v2, p2

    goto :goto_3

    :cond_b
    invoke-direct {v1, v11}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    :goto_3
    invoke-direct {v1, v2, v13}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 88
    iget-object v2, v1, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    invoke-interface {v2}, Ldev/duo/icons/d$a;->a()V

    iget-object v2, v1, Ldev/duo/icons/d;->a:Ljava/nio/file/Path;

    invoke-static {v2}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 89
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v14, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v0, p3

    goto :goto_4

    :cond_c
    const-string v0, "\u5df2\u6062\u590d\u9996\u6b21\u5e94\u7528\u524d\u7684\u56fe\u6807"

    :goto_4
    invoke-virtual {v2, v7, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v1, v3}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/util/Properties;)V

    .line 90
    invoke-direct {v1, v4}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    iget-object v0, v1, Ldev/duo/icons/d;->c:Ldev/duo/icons/d$a;

    iget-object v2, v1, Ldev/duo/icons/d;->b:Ljava/nio/file/Path;

    invoke-interface {v0, v2}, Ldev/duo/icons/d$a;->a(Ljava/nio/file/Path;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 95
    :try_start_14
    invoke-direct {v1}, Ldev/duo/icons/d;->c()Ljava/util/Properties;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 96
    :try_start_15
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    .line 97
    :cond_d
    :try_start_16
    new-instance v0, Ljava/io/IOException;

    const-string v2, "\u5e94\u7528\u540e\u56fe\u6807\u6821\u9a8c\u4e0d\u4e00\u81f4"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 96
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 101
    :try_start_17
    invoke-direct {v1, v4}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {v1, v4}, Ldev/duo/icons/d;->a(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Ldev/duo/icons/d;->a(Ljava/nio/file/Path;Ljava/util/Properties;)V

    .line 102
    :cond_e
    invoke-direct {v1}, Ldev/duo/icons/d;->b()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 103
    :try_start_18
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u6807\u64cd\u4f5c\u5931\u8d25\uff0c\u5df2\u6062\u590d\u64cd\u4f5c\u524d\u7684\u56fe\u6807\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 101
    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u64cd\u4f5c\u672a\u5b8c\u6210\uff0c\u81ea\u52a8\u6062\u590d\u5c1a\u672a\u786e\u8ba4\uff1b\u5907\u4efd\u5df2\u4fdd\u7559\u3002\u8bf7\u68c0\u67e5\u6a21\u5757\u72b6\u6001\u540e\u91cd\u8bd5\u6062\u590d\u3002"

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 105
    :cond_f
    move-object/from16 v16, v6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u8fd8\u6ca1\u6709\u56fe\u6807\u5907\u4efd\uff0c\u8bf7\u5148\u5e94\u7528\u4e00\u6b21"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_5

    .line 106
    :cond_10
    move-object/from16 v16, v6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u53e6\u4e00\u4e2a\u56fe\u6807\u64cd\u4f5c\u6b63\u5728\u8fdb\u884c"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 73
    :catchall_3
    move-exception v0

    :goto_5
    move-object v1, v0

    .line 106
    :goto_6
    if-eqz v8, :cond_11

    .line 107
    :try_start_19
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    :try_start_1a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_7
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 73
    :catchall_5
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v16, v6

    :goto_8
    move-object v1, v0

    .line 107
    :goto_9
    :try_start_1b
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v1
.end method
