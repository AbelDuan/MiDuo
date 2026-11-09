.class Ldev/duo/taskcore/g$c;
.super Ldev/duo/taskcore/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/taskcore/g;->a(Ljava/util/Map;Ljava/util/Map;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:[J

.field final synthetic d:F

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Landroid/graphics/Rect;

.field final synthetic h:Ljava/util/Map;

.field final synthetic i:Ldev/duo/taskcore/g;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/g;[JFLjava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/g$c;->i:Ldev/duo/taskcore/g;

    iput-object p2, p0, Ldev/duo/taskcore/g$c;->c:[J

    iput p3, p0, Ldev/duo/taskcore/g$c;->d:F

    iput-object p4, p0, Ldev/duo/taskcore/g$c;->e:Ljava/util/Map;

    iput-object p5, p0, Ldev/duo/taskcore/g$c;->f:Ljava/util/Map;

    iput-object p6, p0, Ldev/duo/taskcore/g$c;->g:Landroid/graphics/Rect;

    iput-object p7, p0, Ldev/duo/taskcore/g$c;->h:Ljava/util/Map;

    invoke-direct {p0}, Ldev/duo/taskcore/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/g$c;->i:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->x(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldev/duo/taskcore/a;->a(Ldev/duo/taskcore/a$a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/g$c;->c:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    aput-wide p1, v0, v1

    .line 3
    :cond_1
    aget-wide v0, v0, v1

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Ldev/duo/taskcore/g$c;->d:F

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float v0, p2, p1

    mul-float/2addr v0, v0

    sub-float v0, p2, v0

    .line 4
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 5
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/g$c;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    move-object v3, v1

    iget-object v1, p0, Ldev/duo/taskcore/g$c;->i:Ldev/duo/taskcore/g;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/duo/taskcore/g$g;

    iget-object v5, p0, Ldev/duo/taskcore/g$c;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget-object v8, p0, Ldev/duo/taskcore/g$c;->g:Landroid/graphics/Rect;

    invoke-static {v5, v6, v0, v8}, Ldev/duo/taskcore/b;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 7
    iget-object v6, p0, Ldev/duo/taskcore/g$c;->h:Ljava/util/Map;

    if-nez v6, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/taskcore/g$g;

    iget v3, v3, Ldev/duo/taskcore/g$g;->e:I

    move v6, v3

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v6, v3

    .line 7
    :goto_1
    nop

    .line 9
    move-object v3, v4

    move-object v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/g$g;Landroid/graphics/Rect;FI)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 13
    iget-object p1, p0, Ldev/duo/taskcore/g$c;->i:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->y(Ldev/duo/taskcore/g;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ldev/duo/taskcore/g$c;->i:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->x(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/a;->c(Ldev/duo/taskcore/a$a;)V

    return-void

    .line 14
    :cond_4
    iget-object p1, p0, Ldev/duo/taskcore/g$c;->i:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->x(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/a;->b(Ldev/duo/taskcore/a$a;)V

    return-void

    .line 7
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 15
    :try_start_1
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method
