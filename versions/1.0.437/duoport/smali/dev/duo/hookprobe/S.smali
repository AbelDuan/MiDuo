.class final Ldev/duo/hookprobe/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field b:J

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J


# direct methods
.method constructor <init>(JJZJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/hookprobe/S;->d:Z

    .line 6
    iput-wide p1, p0, Ldev/duo/hookprobe/S;->a:J

    .line 7
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Ldev/duo/hookprobe/S;->b:J

    .line 8
    iput-boolean p5, p0, Ldev/duo/hookprobe/S;->e:Z

    .line 9
    iput-wide p6, p0, Ldev/duo/hookprobe/S;->g:J

    if-nez p5, :cond_0

    cmp-long p1, p3, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iput-boolean v0, p0, Ldev/duo/hookprobe/S;->f:Z

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/S;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/S;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/S;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method a(J)Z
    .locals 8

    .line 2
    iget-boolean v0, p0, Ldev/duo/hookprobe/S;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldev/duo/hookprobe/S;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ldev/duo/hookprobe/S;->a:J

    iget-wide v2, p0, Ldev/duo/hookprobe/S;->b:J

    iget-wide v4, p0, Ldev/duo/hookprobe/S;->g:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ldev/duo/hookprobe/S;->b:J

    .line 3
    :cond_0
    iput-wide p1, p0, Ldev/duo/hookprobe/S;->g:J

    .line 4
    iget-boolean p1, p0, Ldev/duo/hookprobe/S;->f:Z

    .line 5
    iget-boolean p2, p0, Ldev/duo/hookprobe/S;->e:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iput-boolean v1, p0, Ldev/duo/hookprobe/S;->f:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v2, p0, Ldev/duo/hookprobe/S;->b:J

    iget-wide v4, p0, Ldev/duo/hookprobe/S;->a:J

    cmp-long p2, v2, v4

    if-ltz p2, :cond_2

    iget-boolean p2, p0, Ldev/duo/hookprobe/S;->c:Z

    if-nez p2, :cond_2

    iput-boolean v0, p0, Ldev/duo/hookprobe/S;->f:Z

    .line 7
    :cond_2
    :goto_0
    iget-boolean p2, p0, Ldev/duo/hookprobe/S;->f:Z

    if-eq p1, p2, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method a(JJ)Z
    .locals 5

    .line 11
    invoke-virtual {p0, p1, p2}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result v0

    .line 12
    iget-wide v1, p0, Ldev/duo/hookprobe/S;->b:J

    iget-wide v3, p0, Ldev/duo/hookprobe/S;->a:J

    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Ldev/duo/hookprobe/S;->b:J

    .line 13
    invoke-virtual {p0, p1, p2}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method a(JZ)Z
    .locals 1

    .line 8
    invoke-virtual {p0, p1, p2}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result v0

    .line 9
    iput-boolean p3, p0, Ldev/duo/hookprobe/S;->e:Z

    .line 10
    invoke-virtual {p0, p1, p2}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/S;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/hookprobe/S;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method b(JZ)Z
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result v0

    .line 3
    iput-boolean p3, p0, Ldev/duo/hookprobe/S;->d:Z

    .line 4
    invoke-virtual {p0, p1, p2}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/S;->e:Z

    return v0
.end method

.method c(JZ)Z
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result v0

    .line 3
    iput-boolean p3, p0, Ldev/duo/hookprobe/S;->c:Z

    .line 4
    invoke-virtual {p0, p1, p2}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/S;->c:Z

    return v0
.end method
