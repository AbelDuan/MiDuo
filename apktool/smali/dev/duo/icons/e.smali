.class public final Ldev/duo/icons/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/icons/e$a;,
        Ldev/duo/icons/e$c;,
        Ldev/duo/icons/e$b;
    }
.end annotation


# static fields
.field public static final a:J = 0x40000000L

.field public static final b:J = 0x8000000L

.field private static final c:J = 0x8000000L

.field private static final d:J = 0x20000000L

.field private static final e:I = 0x200000

.field private static final f:Ljava/lang/String; = "res/drawable-xxhdpi/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ldev/duo/icons/e$c;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x8000000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 162
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const-wide/16 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 163
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldev/duo/icons/e;->b(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldev/duo/icons/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 164
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "res/drawable-xxhdpi/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    const/16 v8, 0x1770

    if-gt v7, v8, :cond_5

    .line 165
    invoke-virtual {v1, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v7, 0x200000

    :try_start_1
    invoke-static {v6, v7, v8}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;J)[B

    move-result-object v7

    array-length v8, v7

    int-to-long v8, v8

    add-long/2addr v4, v8

    cmp-long v8, v4, v2

    if-gtz v8, :cond_3

    invoke-static {v7}, Ldev/duo/icons/e;->a([B)I

    move-result v8

    array-length v9, v7

    if-ne v8, v9, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1, v7}, Ldev/duo/icons/e$c;->a([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 166
    :cond_2
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PNG \u7ed3\u675f\u9519\u8bef"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u56fe\u6807\u5c55\u5f00\u8fc7\u5927"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 165
    :catchall_0
    move-exception p0

    .line 166
    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 167
    :cond_4
    :goto_2
    throw p0

    .line 168
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u53ea\u63a5\u53d7\u8fc7\u6ee4\u540e\u7684\u5e94\u7528 PNG"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 170
    :cond_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u56fe\u6807\u5305\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :catchall_2
    move-exception p0

    .line 171
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    .line 172
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u56fe\u6807\u5305\u8fc7\u5927"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a([B)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 23
    array-length v2, p0

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_b

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 25
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_9

    add-int/lit8 v4, v0, 0xc

    array-length v5, p0

    if-gt v4, v5, :cond_8

    invoke-static {p0, v0}, Ldev/duo/icons/e;->d([BI)I

    move-result v5

    if-ltz v5, :cond_7

    .line 26
    array-length v6, p0

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0xc

    if-gt v5, v6, :cond_7

    .line 27
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v0, 0x4

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v9, 0x4

    invoke-direct {v6, p0, v7, v9, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 28
    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    add-int/lit8 v9, v5, 0x4

    invoke-virtual {v8, p0, v7, v9}, Ljava/util/zip/CRC32;->update([BII)V

    .line 29
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v7, v7

    add-int/lit8 v8, v0, 0x8

    add-int v9, v8, v5

    invoke-static {p0, v9}, Ldev/duo/icons/e;->d([BI)I

    move-result v9

    if-ne v7, v9, :cond_6

    add-int/lit8 v7, v2, 0x1

    const/4 v9, 0x1

    if-nez v2, :cond_2

    .line 30
    const-string v2, "IHDR"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    if-ne v5, v2, :cond_1

    .line 31
    invoke-static {p0, v8}, Ldev/duo/icons/e;->d([BI)I

    move-result v2

    invoke-static {p0, v4}, Ldev/duo/icons/e;->d([BI)I

    move-result v8

    if-lt v2, v9, :cond_0

    if-lt v8, v9, :cond_0

    const/16 v10, 0x400

    if-gt v2, v10, :cond_0

    if-gt v8, v10, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u56fe\u6807\u5c3a\u5bf8\u8fc7\u5927"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PNG \u7f3a\u5c11\u56fe\u50cf\u5934"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_2
    :goto_1
    const-string v2, "IDAT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v9

    .line 35
    :cond_3
    const-string v2, "IEND"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v5, :cond_4

    move v0, v4

    move v1, v9

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PNG \u7ed3\u675f\u9519\u8bef"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 v5, v5, 0xc

    add-int/2addr v0, v5

    move v2, v7

    goto/16 :goto_0

    .line 36
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PNG \u6821\u9a8c\u9519\u8bef"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PNG \u957f\u5ea6\u9519\u8bef"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PNG \u4e0d\u5b8c\u6574"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    return v0

    .line 49
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PNG \u7f3a\u5c11\u56fe\u50cf\u6570\u636e"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u56fe\u6807\u4e0d\u662f\u6709\u6548 PNG"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method static a([BI)I
    .locals 1

    .line 53
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ldev/duo/icons/e$c;)Ldev/duo/icons/e$b;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p3

    const-string v2, "\u4e3b\u9898\u5305\u7684 icons \u8d44\u6e90\u5df2\u635f\u574f"

    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x40000000

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1d

    .line 55
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".icons"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    :try_start_0
    new-instance v4, Ldev/duo/icons/e$a;

    const-string v0, "\u6240\u9009\u6587\u4ef6\u4e0d\u662f MTZ/ZIP \u4e3b\u9898\u5305"

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v0}, Ldev/duo/icons/e$a;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 58
    :try_start_1
    const-string v0, "icons"

    invoke-virtual {v4, v0}, Ldev/duo/icons/e$a;->a(Ljava/lang/String;)Ldev/duo/icons/e$a$c;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    if-eqz v0, :cond_1c

    .line 60
    :try_start_2
    invoke-virtual {v4, v0}, Ldev/duo/icons/e$a;->a(Ldev/duo/icons/e$a$c;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    const-wide/32 v6, 0x8000000

    :try_start_3
    invoke-static {v5, v3, v6, v7}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;Ljava/io/File;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    .line 62
    :cond_0
    :try_start_5
    const-string v0, "description.xml"

    invoke-virtual {v4, v0}, Ldev/duo/icons/e$a;->a(Ljava/lang/String;)Ldev/duo/icons/e$a$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 64
    iget-wide v8, v0, Ldev/duo/icons/e$a$c;->f:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    const-wide/32 v10, 0x20000

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    :try_start_6
    invoke-virtual {v4, v0}, Ldev/duo/icons/e$a;->a(Ldev/duo/icons/e$a$c;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    :try_start_7
    invoke-static {v8, v10, v11}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;J)[B

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_1

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 67
    :cond_1
    move-object v8, v0

    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    move-object v9, v0

    if-eqz v8, :cond_2

    .line 65
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    :cond_2
    :goto_0
    throw v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    .line 64
    :catch_0
    move-exception v0

    .line 66
    const/4 v8, 0x0

    goto :goto_1

    .line 67
    :cond_3
    const/4 v8, 0x0

    :goto_1
    :try_start_b
    invoke-virtual {v4}, Ldev/duo/icons/e$a;->close()V

    .line 68
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 69
    new-instance v11, Ldev/duo/icons/e$a;

    invoke-direct {v11, v3, v2}, Ldev/duo/icons/e$a;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    :try_start_c
    iget-object v0, v11, Ldev/duo/icons/e$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-wide/from16 v20, v6

    const-string v6, "res/drawable-xxhdpi/"

    if-eqz v19, :cond_13

    :try_start_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    const/16 v22, 0x1

    move-object/from16 v7, v19

    check-cast v7, Ldev/duo/icons/e$a$c;

    .line 70
    const/16 v19, 0x0

    iget-object v12, v7, Ldev/duo/icons/e$a$c;->a:Ljava/lang/String;

    const/16 v5, 0x5c

    const/16 v13, 0x2f

    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldev/duo/icons/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 71
    const-string v13, "res/drawable(?:-[A-Za-z0-9-]+)?/[^/]+"

    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v23, v2

    goto/16 :goto_b

    .line 72
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x3

    goto :goto_3

    :cond_5
    const-string v6, "xhdpi/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    goto :goto_3

    :cond_6
    move/from16 v5, v22

    .line 73
    :goto_3
    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-gt v5, v6, :cond_7

    move-object/from16 v23, v2

    goto/16 :goto_b

    :cond_7
    add-int/lit8 v6, v0, 0x1

    const/16 v0, 0x4e20

    if-gt v6, v0, :cond_11

    const-wide/32 v13, 0x20000000

    cmp-long v0, v15, v13

    if-gtz v0, :cond_11

    .line 77
    const-wide/32 v13, 0x200000

    :try_start_e
    invoke-virtual {v11, v7}, Ldev/duo/icons/e$a;->a(Ldev/duo/icons/e$a$c;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-object/from16 v23, v2

    :try_start_f
    invoke-static {v7, v13, v14}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;J)[B

    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v7, :cond_8

    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 78
    :cond_8
    invoke-static {v2}, Ldev/duo/icons/e;->a([B)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    if-eqz v1, :cond_9

    invoke-interface {v1, v2}, Ldev/duo/icons/e$c;->a([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 80
    :cond_9
    :try_start_11
    array-length v0, v2

    int-to-long v13, v0

    add-long/2addr v15, v13

    .line 81
    invoke-interface {v4, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    array-length v2, v2

    if-nez v0, :cond_a

    move/from16 v0, v19

    goto :goto_4

    :cond_a
    array-length v0, v0

    :goto_4
    sub-int/2addr v2, v0

    int-to-long v12, v2

    add-long v17, v17, v12

    cmp-long v0, v17, v20

    if-gtz v0, :cond_c

    .line 83
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x1770

    if-gt v0, v2, :cond_b

    move v0, v6

    move-wide/from16 v6, v20

    move-object/from16 v2, v23

    goto/16 :goto_2

    .line 84
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u6570\u91cf\u8fc7\u591a"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u5c55\u5f00\u8fc7\u5927"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 77
    :catch_1
    move-exception v0

    goto :goto_7

    .line 85
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v7, :cond_d

    .line 86
    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_13
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    :cond_d
    :goto_5
    throw v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 77
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v23, v2

    :goto_6
    const/4 v2, 0x0

    .line 87
    :goto_7
    if-nez v2, :cond_e

    goto :goto_8

    .line 88
    :cond_e
    :try_start_14
    array-length v2, v2

    int-to-long v13, v2

    :goto_8
    add-long/2addr v15, v13

    instance-of v2, v0, Ljava/util/zip/ZipException;

    if-nez v2, :cond_10

    instance-of v2, v0, Ljava/io/EOFException;

    if-nez v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 89
    :cond_10
    :goto_9
    const-string v0, "\u538b\u7f29\u6570\u636e\u635f\u574f"

    .line 88
    :goto_a
    nop

    .line 89
    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    move-wide/from16 v6, v20

    move-object/from16 v2, v23

    goto/16 :goto_2

    .line 90
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u5305\u635f\u574f\u56fe\u6807\u8fc7\u591a\uff0c\u5df2\u505c\u6b62\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 70
    :cond_12
    move-object/from16 v23, v2

    .line 69
    :goto_b
    move-wide/from16 v6, v20

    move-object/from16 v2, v23

    goto/16 :goto_2

    .line 98
    :cond_13
    const/16 v19, 0x0

    const/16 v22, 0x1

    :try_start_15
    invoke-virtual {v11}, Ldev/duo/icons/e$a;->close()V

    .line 99
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 100
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Ldev/duo/icons/e$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ldev/duo/icons/e$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2, v5, v7}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_c

    .line 101
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_15

    const-string v5, ""

    goto :goto_e

    .line 102
    :cond_15
    const-string v5, "\u3001"

    .line 101
    :goto_e
    nop

    .line 102
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u4e2a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 103
    :cond_16
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v1, "\u4e3b\u9898\u6ca1\u6709\u53ef\u7528\u7684\u9759\u6001\u5e94\u7528\u56fe\u6807"

    goto :goto_f

    .line 104
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e3b\u9898\u6ca1\u6709\u53ef\u7528\u7684\u9759\u6001\u5e94\u7528\u56fe\u6807\uff08\u8df3\u8fc7\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    :goto_f
    nop

    .line 104
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_18
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".new"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 106
    :try_start_16
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :try_start_17
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v7, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 107
    :try_start_18
    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    new-instance v11, Ljava/util/zip/ZipEntry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {v7, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_10

    .line 108
    :cond_19
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 109
    :try_start_19
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 110
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v20

    if-gtz v0, :cond_1a

    .line 111
    move-object/from16 v5, p2

    invoke-static {v8, v5}, Ldev/duo/icons/e;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v5, v19

    sget-object v6, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v5, v22

    invoke-static {v0, v2, v5}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 112
    new-instance v11, Ldev/duo/icons/e$b;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v13

    invoke-static/range {p1 .. p1}, Ldev/duo/icons/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v15

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v11 .. v16}, Ldev/duo/icons/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v11

    .line 114
    :cond_1a
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u7eaf\u56fe\u6807\u5305\u8fc7\u5927"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    .line 107
    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 115
    :try_start_1d
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto :goto_11

    :catchall_5
    move-exception v0

    :try_start_1e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 114
    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 115
    :try_start_1f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    goto :goto_12

    :catchall_7
    move-exception v0

    :try_start_20
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .line 114
    :catch_4
    move-exception v0

    .line 117
    :try_start_21
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    .line 73
    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 118
    :try_start_22
    invoke-virtual {v11}, Ldev/duo/icons/e$a;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    :try_start_23
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    :catchall_a
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_1b

    .line 119
    :try_start_24
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    goto :goto_14

    :catchall_b
    move-exception v0

    :try_start_25
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 120
    :cond_1b
    :goto_14
    throw v1
    :try_end_25
    .catch Ljava/util/zip/ZipException; {:try_start_25 .. :try_end_25} :catch_5
    .catch Ljava/io/EOFException; {:try_start_25 .. :try_end_25} :catch_5
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    .line 60
    :catch_5
    move-exception v0

    .line 121
    :try_start_26
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u4e3b\u9898\u5305\u6ca1\u6709\u72ec\u7acb icons \u8d44\u6e90"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 60
    :catchall_c
    move-exception v0

    move-object v1, v0

    .line 123
    :try_start_27
    invoke-virtual {v4}, Ldev/duo/icons/e$a;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception v0

    :try_start_28
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 100
    :catchall_e
    move-exception v0

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    .line 160
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u4e3b\u9898\u5305\u5927\u5c0f\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const p0, 0x8000

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, p0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-byte v2, v0, v4

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%02x"

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 51
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 52
    const-string v0, "[A-Za-z][A-Za-z0-9_.#-]{1,240}\\.png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "[\\p{Cntrl}]"

    const-string v1, ""

    if-eqz p0, :cond_1

    .line 9
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 11
    const-string p0, "<title(?:\\s[^>]*)?>(.*?)</title>"

    const/16 v3, 0x20

    invoke-static {p0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 12
    const-string v3, "<!DOCTYPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "<!ENTITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 14
    const-string v2, "<![CDATA["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "]]>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_0
    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "&gt;"

    const-string v3, ">"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "&apos;"

    const-string v3, "\'"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "&amp;"

    const-string v3, "&"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 16
    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, p0

    goto :goto_3

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 20
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v1, "\u4e3b\u9898"

    .line 21
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x78

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    int-to-long v4, p1

    add-long/2addr v2, v4

    cmp-long v4, v2, p2

    if-gtz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, p1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u6587\u4ef6\u8fc7\u5927"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static a(Ljava/io/InputStream;J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v3, v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    cmp-long v3, v3, p1

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u8d44\u6e90\u8d85\u8fc7\u5b89\u5168\u5927\u5c0f\u9650\u5236"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldev/duo/icons/e;->a(Ljava/io/File;Ldev/duo/icons/e$c;)I

    move-result p0

    return p0
.end method

.method static b([BI)J
    .locals 3

    .line 5
    invoke-static {p0, p1}, Ldev/duo/icons/e;->a([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Ldev/duo/icons/e;->a([BI)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 3
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u4e3b\u9898\u5305\u542b\u8def\u5f84\u8df3\u8f6c"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u4e3b\u9898\u5305\u542b\u4e0d\u5b89\u5168\u8def\u5f84"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static c([BI)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static d([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
