.class Ldev/duo/icons/e$a$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/icons/e$a;->a(Ldev/duo/icons/e$a$c;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field b:Z

.field final synthetic c:J

.field final synthetic d:Ldev/duo/icons/e$a$c;

.field final synthetic e:Ldev/duo/icons/e$a;


# direct methods
.method constructor <init>(Ldev/duo/icons/e$a;JLdev/duo/icons/e$a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/icons/e$a$a;->e:Ldev/duo/icons/e$a;

    iput-wide p2, p0, Ldev/duo/icons/e$a$a;->c:J

    iput-object p4, p0, Ldev/duo/icons/e$a$a;->d:Ldev/duo/icons/e$a$c;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-wide p2, p0, Ldev/duo/icons/e$a$a;->a:J

    iget p1, p4, Ldev/duo/icons/e$a$c;->b:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ldev/duo/icons/e$a$a;->b:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ldev/duo/icons/e$a$a;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-wide v0, p0, Ldev/duo/icons/e$a$a;->c:J

    iget-object v2, p0, Ldev/duo/icons/e$a$a;->d:Ldev/duo/icons/e$a$c;

    iget-wide v2, v2, Ldev/duo/icons/e$a$c;->d:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ldev/duo/icons/e$a$a;->a:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    if-nez p3, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 3
    iget-object v2, p0, Ldev/duo/icons/e$a$a;->e:Ldev/duo/icons/e$a;

    invoke-static {v2}, Ldev/duo/icons/e$a;->a(Ldev/duo/icons/e$a;)Ljava/io/RandomAccessFile;

    move-result-object v2

    iget-wide v3, p0, Ldev/duo/icons/e$a$a;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Ldev/duo/icons/e$a$a;->e:Ldev/duo/icons/e$a;

    invoke-static {v2}, Ldev/duo/icons/e$a;->a(Ldev/duo/icons/e$a;)Ljava/io/RandomAccessFile;

    move-result-object v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1

    iget-wide p2, p0, Ldev/duo/icons/e$a$a;->a:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ldev/duo/icons/e$a$a;->a:J

    return p1

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_2
    iget-boolean p3, p0, Ldev/duo/icons/e$a$a;->b:Z

    if-eqz p3, :cond_3

    iput-boolean v2, p0, Ldev/duo/icons/e$a$a;->b:Z

    aput-byte v2, p1, p2

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method
