.class final Ldev/duo/hookprobe/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/x$b;,
        Ldev/duo/hookprobe/x$a;
    }
.end annotation


# static fields
.field static final c:I = 0x2

.field static final d:I = 0x2

.field static final e:J = 0xc8L

.field static final f:J = 0xbb8L

.field static final g:F = 0.95f

.field static final h:J = 0x2bcL

.field static final i:I = 0x0

.field static final j:I = 0x1


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/duo/hookprobe/x$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/duo/hookprobe/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/x;->b:Ljava/util/Map;

    return-void
.end method

.method static a(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static a(Ldev/duo/hookprobe/x$b;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 46
    iget-boolean v1, p0, Ldev/duo/hookprobe/x$b;->h:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 47
    iget-boolean p0, p0, Ldev/duo/hookprobe/x$b;->i:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/Object;IJJ)I
    .locals 5

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/duo/hookprobe/x$b;

    .line 26
    iget-object v3, v2, Ldev/duo/hookprobe/x$b;->b:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    iget v3, v2, Ldev/duo/hookprobe/x$b;->c:I

    if-ne v3, p2, :cond_0

    invoke-virtual {v2, p3, p4}, Ldev/duo/hookprobe/x$b;->a(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 27
    invoke-static {p5, p6}, Ldev/duo/hookprobe/x;->a(J)J

    move-result-wide v3

    add-long/2addr v3, p3

    iput-wide v3, v2, Ldev/duo/hookprobe/x$b;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    .line 24
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/String;ZZJ)I
    .locals 0

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object p2, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/hookprobe/x$b;

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1, p4, p5}, Ldev/duo/hookprobe/x$b;->a(J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 47
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Ldev/duo/hookprobe/x$b;J)Ldev/duo/hookprobe/x$a;
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 4
    :try_start_0
    iget v0, p1, Ldev/duo/hookprobe/x$b;->o:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ldev/duo/hookprobe/x$a;

    iget-object v2, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    const-wide/16 v3, 0x2bc

    add-long/2addr p2, v3

    invoke-direct {v1, v2, v0, p2, p3}, Ldev/duo/hookprobe/x$a;-><init>(Ljava/lang/String;FJ)V

    .line 6
    iget-object p2, p1, Ldev/duo/hookprobe/x$b;->k:[F

    if-eqz p2, :cond_1

    iget-boolean p3, p1, Ldev/duo/hookprobe/x$b;->l:Z

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, v1, Ldev/duo/hookprobe/x$a;->d:[F

    const/4 p2, 0x1

    iput-boolean p2, v1, Ldev/duo/hookprobe/x$a;->e:Z

    .line 8
    iget-boolean p2, p1, Ldev/duo/hookprobe/x$b;->n:Z

    iput-boolean p2, v1, Ldev/duo/hookprobe/x$a;->f:Z

    iget-boolean p2, p1, Ldev/duo/hookprobe/x$b;->m:Z

    iput-boolean p2, v1, Ldev/duo/hookprobe/x$a;->g:Z

    .line 10
    :cond_1
    iget-object p2, p0, Ldev/duo/hookprobe/x;->b:Ljava/util/Map;

    iget-object p1, p1, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 3
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 10
    :cond_2
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method declared-synchronized a(Ljava/lang/String;)Ldev/duo/hookprobe/x$a;
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/hookprobe/x$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 11
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;IIIJJ)Ldev/duo/hookprobe/x$b;
    .locals 10

    move-wide/from16 v6, p6

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 12
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_9

    if-eqz p2, :cond_9

    if-gtz p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-eq p4, v1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    if-ne p4, v1, :cond_3

    if-lez p5, :cond_2

    const v1, 0x7fffffff

    if-ne p5, v1, :cond_3

    :cond_2
    monitor-exit p0

    return-object v0

    .line 15
    :cond_3
    :try_start_1
    iget-object v1, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/hookprobe/x$b;

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {v1, v6, v7}, Ldev/duo/hookprobe/x$b;->a(J)Z

    move-result v2

    if-nez v2, :cond_7

    .line 17
    iget-object p1, v1, Ldev/duo/hookprobe/x$b;->b:Ljava/lang/Object;

    if-ne p1, p2, :cond_6

    iget p1, v1, Ldev/duo/hookprobe/x$b;->c:I

    if-eq p1, p3, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    iget p1, v1, Ldev/duo/hookprobe/x$b;->d:I

    if-ne p1, p4, :cond_6

    iget p1, v1, Ldev/duo/hookprobe/x$b;->e:I

    if-eq p1, p5, :cond_5

    goto :goto_0

    .line 19
    :cond_5
    invoke-static/range {p8 .. p9}, Ldev/duo/hookprobe/x;->a(J)J

    move-result-wide p1

    add-long/2addr p1, v6

    iput-wide p1, v1, Ldev/duo/hookprobe/x$b;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_6
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_7
    if-eqz v1, :cond_8

    goto :goto_0

    .line 23
    :cond_8
    :try_start_2
    new-instance v0, Ldev/duo/hookprobe/x$b;

    invoke-static/range {p8 .. p9}, Ldev/duo/hookprobe/x;->a(J)J

    move-result-wide v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Ldev/duo/hookprobe/x$b;-><init>(Ljava/lang/String;Ljava/lang/Object;IIIJJ)V

    .line 24
    iget-object p2, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :goto_1
    monitor-exit p0

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/Object;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ldev/duo/hookprobe/x$b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 28
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ldev/duo/hookprobe/x$b;

    .line 30
    iget-object v5, v4, Ldev/duo/hookprobe/x$b;->b:Ljava/lang/Object;

    if-ne v5, p1, :cond_0

    iget v5, v4, Ldev/duo/hookprobe/x$b;->c:I

    if-eq v5, p2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    const-string v5, "*"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    iget-object v5, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    iget-object v6, v4, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-object v0

    .line 27
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Ldev/duo/hookprobe/x$b;)V
    .locals 1

    monitor-enter p0

    .line 50
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Ldev/duo/hookprobe/x$b;->h:Z

    iput-boolean v0, p1, Ldev/duo/hookprobe/x$b;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Ldev/duo/hookprobe/x$b;F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 3
    :try_start_0
    iput p2, p1, Ldev/duo/hookprobe/x$b;->o:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/x;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 2
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/hookprobe/x$b;

    iget-object v1, v1, Ldev/duo/hookprobe/x$b;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 51
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/String;IJ)Z
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/hookprobe/x$b;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p1, p3, p4}, Ldev/duo/hookprobe/x$b;->a(J)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    const/4 p4, 0x1

    if-ne p2, p3, :cond_2

    .line 36
    iget-boolean p2, p1, Ldev/duo/hookprobe/x$b;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    monitor-exit p0

    return v0

    .line 37
    :cond_1
    :try_start_1
    iget p2, p1, Ldev/duo/hookprobe/x$b;->j:I

    add-int/2addr p2, p4

    iput p2, p1, Ldev/duo/hookprobe/x$b;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p4

    :cond_2
    nop

    .line 40
    :try_start_2
    iput-boolean p4, p1, Ldev/duo/hookprobe/x$b;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p4

    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    .line 32
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Ljava/lang/String;[FZZJ)Z
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/hookprobe/x$b;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p1, p5, p6}, Ldev/duo/hookprobe/x$b;->a(J)Z

    move-result p5

    if-nez p5, :cond_3

    if-eqz p2, :cond_3

    array-length p5, p2

    const/4 p6, 0x4

    if-ge p5, p6, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    const/4 p5, 0x2

    aget p5, p2, p5

    const/4 p6, 0x0

    cmpl-float v1, p5, p6

    if-lez v1, :cond_1

    iget v1, p1, Ldev/duo/hookprobe/x$b;->o:F

    cmpl-float p6, v1, p6

    if-lez p6, :cond_2

    const p6, 0x3f733333    # 0.95f

    mul-float/2addr v1, p6

    cmpg-float p5, p5, v1

    if-gez p5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 44
    :cond_2
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, p1, Ldev/duo/hookprobe/x$b;->k:[F

    .line 45
    iput-boolean v0, p1, Ldev/duo/hookprobe/x$b;->l:Z

    iput-boolean p3, p1, Ldev/duo/hookprobe/x$b;->n:Z

    iput-boolean p4, p1, Ldev/duo/hookprobe/x$b;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    .line 40
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b(Ljava/lang/String;)Ldev/duo/hookprobe/x$b;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/hookprobe/x$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 6
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ldev/duo/hookprobe/x$b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ldev/duo/hookprobe/x$b;

    .line 12
    invoke-virtual {v4, p1, p2}, Ldev/duo/hookprobe/x$b;->a(J)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    iget-object v6, v4, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 9
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ldev/duo/hookprobe/x$b;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ldev/duo/hookprobe/x$b;

    .line 9
    iget-object v5, v4, Ldev/duo/hookprobe/x$b;->b:Ljava/lang/Object;

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    iget-object v6, v4, Ldev/duo/hookprobe/x$b;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 6
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;[FZZJ)Z
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/hookprobe/x$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    iget-wide v1, p1, Ldev/duo/hookprobe/x$a;->c:J

    cmp-long p5, p5, v1

    if-gez p5, :cond_3

    if-eqz p2, :cond_3

    array-length p5, p2

    const/4 p6, 0x4

    if-ge p5, p6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const/4 p5, 0x2

    aget p5, p2, p5

    const/4 p6, 0x0

    cmpl-float p6, p5, p6

    if-lez p6, :cond_1

    iget p6, p1, Ldev/duo/hookprobe/x$a;->b:F

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr p6, v1

    cmpg-float p5, p5, p6

    if-gez p5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 5
    :cond_2
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, p1, Ldev/duo/hookprobe/x$a;->d:[F

    iput-boolean v0, p1, Ldev/duo/hookprobe/x$a;->e:Z

    iput-boolean p3, p1, Ldev/duo/hookprobe/x$a;->f:Z

    iput-boolean p4, p1, Ldev/duo/hookprobe/x$a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    .line 1
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized c()I
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 4
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized c(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ldev/duo/hookprobe/x$a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldev/duo/hookprobe/x;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ldev/duo/hookprobe/x$a;

    .line 3
    iget-wide v5, v4, Ldev/duo/hookprobe/x$a;->c:J

    cmp-long v5, p1, v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Ldev/duo/hookprobe/x;->b:Ljava/util/Map;

    iget-object v6, v4, Ldev/duo/hookprobe/x$a;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 0
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
