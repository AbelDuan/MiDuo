.class final Ldev/duo/hookprobe/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Z

.field h:J

.field i:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    const/16 v0, 0x48

    invoke-direct {p0, p1, v0}, Ldev/duo/hookprobe/w;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/duo/hookprobe/w;->c:J

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3c

    if-gt p1, v0, :cond_0

    .line 12
    iput p1, p0, Ldev/duo/hookprobe/w;->a:I

    iput p2, p0, Ldev/duo/hookprobe/w;->b:I

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u9759\u6b62\u5e27\u6570\u9700\u5728 2\u201360 \u4e4b\u95f4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)Z
    .locals 2

    .line 11
    iget v0, p0, Ldev/duo/hookprobe/w;->b:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c()I
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/hookprobe/w;->i:I

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Ldev/duo/hookprobe/w;->a:I

    return v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldev/duo/hookprobe/w;->i:I

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " paint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ldev/duo/hookprobe/w;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/hookprobe/w;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " quiet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldev/duo/hookprobe/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ldev/duo/hookprobe/w;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ldev/duo/hookprobe/w;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a([J)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    long-to-int v1, v1

    ushr-int/lit8 v2, v1, 0x8

    int-to-long v2, v2

    const-wide/32 v4, 0xffffff

    and-long/2addr v2, v4

    .line 3
    iget v4, p0, Ldev/duo/hookprobe/w;->b:I

    and-int v5, v1, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v4, :cond_1

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_0

    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_1

    :cond_0
    aget-wide v4, p1, v7

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    aget-wide v4, p1, v6

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    const/4 v5, 0x3

    if-eqz v4, :cond_2

    .line 5
    iget-boolean v8, p0, Ldev/duo/hookprobe/w;->g:Z

    if-eqz v8, :cond_2

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/w;->a(I)Z

    move-result v8

    if-eqz v8, :cond_2

    and-int/lit16 v8, v1, 0xff

    iget v9, p0, Ldev/duo/hookprobe/w;->i:I

    and-int/lit16 v9, v9, 0xff

    if-ne v8, v9, :cond_2

    iget-wide v8, p0, Ldev/duo/hookprobe/w;->d:J

    aget-wide v10, p1, v6

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, p0, Ldev/duo/hookprobe/w;->e:J

    aget-wide v10, p1, v5

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v0

    :goto_1
    if-eqz v4, :cond_5

    .line 7
    iget-boolean v9, p0, Ldev/duo/hookprobe/w;->g:Z

    if-ne v4, v9, :cond_5

    and-int/lit16 v9, v1, 0xff

    iget v10, p0, Ldev/duo/hookprobe/w;->i:I

    and-int/lit16 v10, v10, 0xff

    if-ne v9, v10, :cond_5

    iget-wide v9, p0, Ldev/duo/hookprobe/w;->c:J

    cmp-long v9, v2, v9

    if-eqz v9, :cond_3

    if-eqz v8, :cond_5

    :cond_3
    iget-wide v8, p0, Ldev/duo/hookprobe/w;->d:J

    aget-wide v10, p1, v6

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    iget-wide v8, p0, Ldev/duo/hookprobe/w;->e:J

    aget-wide v10, p1, v5

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v8, v0

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v7

    :goto_3
    if-eqz v8, :cond_6

    .line 8
    iput v0, p0, Ldev/duo/hookprobe/w;->f:I

    aget-wide v9, p1, v7

    iput-wide v9, p0, Ldev/duo/hookprobe/w;->h:J

    .line 9
    :cond_6
    iput-boolean v4, p0, Ldev/duo/hookprobe/w;->g:Z

    iput-wide v2, p0, Ldev/duo/hookprobe/w;->c:J

    aget-wide v2, p1, v6

    iput-wide v2, p0, Ldev/duo/hookprobe/w;->d:J

    aget-wide v2, p1, v5

    iput-wide v2, p0, Ldev/duo/hookprobe/w;->e:J

    .line 10
    iput v1, p0, Ldev/duo/hookprobe/w;->i:I

    return v8
.end method

.method b()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/w;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldev/duo/hookprobe/w;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ldev/duo/hookprobe/w;->f:I

    invoke-direct {p0}, Ldev/duo/hookprobe/w;->c()I

    move-result v2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method d()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/w;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldev/duo/hookprobe/w;->f:I

    invoke-direct {p0}, Ldev/duo/hookprobe/w;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/w;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ldev/duo/hookprobe/w;->f:I

    invoke-direct {p0}, Ldev/duo/hookprobe/w;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
