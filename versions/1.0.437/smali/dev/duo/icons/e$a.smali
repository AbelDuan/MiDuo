.class final Ldev/duo/icons/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/icons/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/icons/e$a$c;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/icons/e$a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Ldev/duo/icons/e$a;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x10015

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    new-array v6, v5, [B

    int-to-long v7, v5

    sub-long v7, v3, v7

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    add-int/lit8 v5, v5, -0x16

    const/4 v0, -0x1

    :goto_0
    if-ltz v5, :cond_1

    if-gez v0, :cond_1

    .line 7
    invoke-static {v6, v5}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v7

    const-wide/32 v9, 0x6054b50

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    move v0, v5

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_d

    add-int/lit8 v5, v0, 0xa

    .line 9
    invoke-static {v6, v5}, Ldev/duo/icons/e;->a([BI)I

    move-result v5

    int-to-long v7, v5

    add-int/lit8 v5, v0, 0xc

    invoke-static {v6, v5}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v9

    add-int/lit8 v5, v0, 0x10

    invoke-static {v6, v5}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v11

    const-wide/32 v13, 0xffff

    cmp-long v5, v7, v13

    const/4 v13, 0x0

    const-wide v14, 0xffffffffL

    if-eqz v5, :cond_2

    cmp-long v5, v9, v14

    if-eqz v5, :cond_2

    cmp-long v5, v11, v14

    if-nez v5, :cond_4

    :cond_2
    const/16 v5, 0x14

    if-lt v0, v5, :cond_4

    add-int/lit8 v5, v0, -0x14

    .line 10
    invoke-static {v6, v5}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v16

    const-wide/32 v18, 0x7064b50

    cmp-long v5, v16, v18

    if-nez v5, :cond_4

    .line 11
    const/16 v5, 0x38

    new-array v5, v5, [B

    iget-object v7, v1, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    add-int/lit8 v0, v0, -0xc

    invoke-static {v6, v0}, Ldev/duo/icons/e;->c([BI)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, v1, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 12
    invoke-static {v5, v13}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v6

    const-wide/32 v8, 0x6064b50

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    .line 13
    const/16 v0, 0x20

    invoke-static {v5, v0}, Ldev/duo/icons/e;->c([BI)J

    move-result-wide v7

    const/16 v0, 0x28

    invoke-static {v5, v0}, Ldev/duo/icons/e;->c([BI)J

    move-result-wide v9

    const/16 v0, 0x30

    invoke-static {v5, v0}, Ldev/duo/icons/e;->c([BI)J

    move-result-wide v11

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v0, v11, v5

    if-ltz v0, :cond_c

    cmp-long v0, v9, v5

    if-ltz v0, :cond_c

    const-wide/32 v5, 0x4000000

    cmp-long v0, v9, v5

    if-gtz v0, :cond_c

    add-long v5, v11, v9

    cmp-long v0, v5, v3

    if-gtz v0, :cond_c

    long-to-int v0, v9

    .line 18
    new-array v0, v0, [B

    iget-object v3, v1, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, v1, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    move v3, v13

    :goto_2
    int-to-long v4, v13

    cmp-long v4, v4, v7

    if-gez v4, :cond_b

    .line 20
    invoke-static {v0, v3}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v4

    const-wide/32 v9, 0x2014b50    # 1.6619997E-316

    cmp-long v4, v4, v9

    if-nez v4, :cond_a

    add-int/lit8 v4, v3, 0x1c

    .line 21
    invoke-static {v0, v4}, Ldev/duo/icons/e;->a([BI)I

    move-result v4

    add-int/lit8 v5, v3, 0x1e

    invoke-static {v0, v5}, Ldev/duo/icons/e;->a([BI)I

    move-result v5

    add-int/lit8 v6, v3, 0x20

    invoke-static {v0, v6}, Ldev/duo/icons/e;->a([BI)I

    move-result v6

    add-int/lit8 v9, v3, 0x18

    .line 22
    invoke-static {v0, v9}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v9

    add-int/lit8 v11, v3, 0x14

    invoke-static {v0, v11}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v11

    move-wide/from16 v16, v14

    add-int/lit8 v14, v3, 0x2a

    invoke-static {v0, v14}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v14

    move/from16 v18, v3

    add-int/lit8 v3, v18, 0x2e

    add-int v19, v3, v4

    move-wide/from16 v28, v9

    move-wide/from16 v24, v11

    move-wide/from16 v26, v14

    move/from16 v9, v19

    :goto_3
    add-int/lit8 v10, v9, 0x4

    add-int v11, v19, v5

    if-gt v10, v11, :cond_9

    .line 24
    invoke-static {v0, v9}, Ldev/duo/icons/e;->a([BI)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    goto :goto_4

    :cond_5
    cmp-long v11, v28, v16

    if-nez v11, :cond_6

    .line 25
    invoke-static {v0, v10}, Ldev/duo/icons/e;->c([BI)J

    move-result-wide v28

    add-int/lit8 v10, v9, 0xc

    :cond_6
    cmp-long v11, v24, v16

    if-nez v11, :cond_7

    .line 26
    invoke-static {v0, v10}, Ldev/duo/icons/e;->c([BI)J

    move-result-wide v24

    add-int/lit8 v10, v10, 0x8

    :cond_7
    cmp-long v11, v26, v16

    if-nez v11, :cond_8

    .line 27
    invoke-static {v0, v10}, Ldev/duo/icons/e;->c([BI)J

    move-result-wide v10

    move-wide/from16 v26, v10

    :cond_8
    :goto_4
    add-int/lit8 v10, v9, 0x2

    .line 28
    invoke-static {v0, v10}, Ldev/duo/icons/e;->a([BI)I

    move-result v10

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    goto :goto_3

    .line 34
    :cond_9
    iget-object v9, v1, Ldev/duo/icons/e$a;->a:Ljava/util/List;

    new-instance v20, Ldev/duo/icons/e$a$c;

    new-instance v10, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v10, v0, v3, v4, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v3, v18, 0xa

    invoke-static {v0, v3}, Ldev/duo/icons/e;->a([BI)I

    move-result v22

    add-int/lit8 v3, v18, 0x8

    invoke-static {v0, v3}, Ldev/duo/icons/e;->a([BI)I

    move-result v23

    move-object/from16 v21, v10

    invoke-direct/range {v20 .. v29}, Ldev/duo/icons/e$a$c;-><init>(Ljava/lang/String;IIJJJ)V

    move-object/from16 v3, v20

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2e

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    add-int v3, v18, v4

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v14, v16

    goto/16 :goto_2

    .line 35
    :cond_a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void

    .line 36
    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    move-exception v0

    .line 59
    iget-object v1, v1, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    check-cast v0, Ljava/io/IOException;

    goto :goto_5

    :cond_e
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_5
    throw v0
.end method

.method static synthetic a(Ldev/duo/icons/e$a;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ldev/duo/icons/e$a$c;
    .locals 3

    .line 2
    iget-object v0, p0, Ldev/duo/icons/e$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/icons/e$a$c;

    iget-object v2, v1, Ldev/duo/icons/e$a$c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ldev/duo/icons/e$a$c;)Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p1, Ldev/duo/icons/e$a$c;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 4
    iget v0, p1, Ldev/duo/icons/e$a$c;->b:I

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\u4e0d\u652f\u6301\u7684\u538b\u7f29\u65b9\u5f0f"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    const/16 v0, 0x1e

    new-array v0, v0, [B

    iget-object v2, p0, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    iget-wide v3, p1, Ldev/duo/icons/e$a$c;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 6
    iget-wide v2, p1, Ldev/duo/icons/e$a$c;->e:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    const/16 v4, 0x1a

    invoke-static {v0, v4}, Ldev/duo/icons/e;->a([BI)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/16 v4, 0x1c

    invoke-static {v0, v4}, Ldev/duo/icons/e;->a([BI)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 7
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ldev/duo/icons/e;->b([BI)J

    move-result-wide v4

    const-wide/32 v6, 0x4034b50

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-wide v4, p1, Ldev/duo/icons/e$a$c;->d:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    add-long/2addr v4, v2

    iget-object v0, p0, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    .line 9
    new-instance v6, Ldev/duo/icons/e$a$a;

    invoke-direct {v6, p0, v2, v3, p1}, Ldev/duo/icons/e$a$a;-><init>(Ldev/duo/icons/e$a;JLdev/duo/icons/e$a$c;)V

    .line 19
    iget p1, p1, Ldev/duo/icons/e$a$c;->b:I

    if-nez p1, :cond_2

    return-object v6

    .line 20
    :cond_2
    new-instance v7, Ljava/util/zip/Inflater;

    invoke-direct {v7, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 21
    new-instance v4, Ldev/duo/icons/e$a$b;

    const/16 v8, 0x4000

    move-object v9, v7

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Ldev/duo/icons/e$a$b;-><init>(Ldev/duo/icons/e$a;Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/Inflater;)V

    return-object v4

    .line 22
    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    const-string v0, "bad local header"

    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\u56fe\u6807\u5df2\u52a0\u5bc6"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldev/duo/icons/e$a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
