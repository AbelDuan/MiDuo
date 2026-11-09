.class Ldev/duo/taskcore/g$d;
.super Ldev/duo/taskcore/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/taskcore/g;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field d:I

.field e:F

.field final synthetic f:[Ldev/duo/taskcore/d;

.field final synthetic g:Ldev/duo/taskcore/g;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/g;[Ldev/duo/taskcore/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    iput-object p2, p0, Ldev/duo/taskcore/g$d;->f:[Ldev/duo/taskcore/d;

    invoke-direct {p0}, Ldev/duo/taskcore/a$a;-><init>()V

    .line 2
    const/4 p1, -0x2

    iput p1, p0, Ldev/duo/taskcore/g$d;->c:I

    iput p1, p0, Ldev/duo/taskcore/g$d;->d:I

    .line 3
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Ldev/duo/taskcore/g$d;->e:F

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 12

    .line 1
    iget-object p1, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->x(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/a;->a(Ldev/duo/taskcore/a$a;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->y(Ldev/duo/taskcore/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object p1, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->m(Ldev/duo/taskcore/g;)I

    move-result p1

    iget-object p2, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {p2}, Ldev/duo/taskcore/g;->n(Ldev/duo/taskcore/g;)I

    move-result p2

    .line 3
    iget-object v0, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {v0}, Ldev/duo/taskcore/g;->r(Ldev/duo/taskcore/g;)F

    move-result v0

    if-gez p1, :cond_1

    .line 4
    iget-object p1, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->x(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/a;->b(Ldev/duo/taskcore/a$a;)V

    return-void

    .line 5
    :cond_1
    iget v1, p0, Ldev/duo/taskcore/g$d;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    iget v1, p0, Ldev/duo/taskcore/g$d;->d:I

    if-ne p2, v1, :cond_2

    iget v1, p0, Ldev/duo/taskcore/g$d;->e:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 6
    :goto_0
    iput p1, p0, Ldev/duo/taskcore/g$d;->c:I

    iput p2, p0, Ldev/duo/taskcore/g$d;->d:I

    iput v0, p0, Ldev/duo/taskcore/g$d;->e:F

    .line 8
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move v4, v2

    move v10, v4

    .line 9
    :goto_1
    :try_start_0
    iget-object v6, p0, Ldev/duo/taskcore/g$d;->f:[Ldev/duo/taskcore/d;

    array-length v7, v6

    if-ge v10, v7, :cond_b

    .line 10
    iget-object v7, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    aget-object v6, v6, v10

    invoke-static {v7, v6}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;Ldev/duo/taskcore/d;)Ldev/duo/taskcore/g$g;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_5

    :cond_3
    if-ne v10, p1, :cond_5

    .line 13
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v6, Ldev/duo/taskcore/g$g;->d:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 14
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v1, :cond_4

    .line 15
    iget-object v8, v6, Ldev/duo/taskcore/g$g;->c:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 16
    :cond_4
    iget-object v4, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    const v8, 0x3f866666    # 1.05f

    const/16 v9, 0x1e

    invoke-static/range {v4 .. v9}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/g$g;Landroid/graphics/Rect;FI)V

    goto :goto_4

    :cond_5
    if-ge p1, p2, :cond_6

    if-le v10, p1, :cond_6

    if-gt v10, p2, :cond_6

    add-int/lit8 v7, v10, -0x1

    goto :goto_2

    :cond_6
    if-le p1, p2, :cond_7

    if-lt v10, p2, :cond_7

    if-ge v10, p1, :cond_7

    add-int/lit8 v7, v10, 0x1

    goto :goto_2

    :cond_7
    move v7, v10

    .line 23
    :goto_2
    iget-object v8, v6, Ldev/duo/taskcore/g$g;->c:Landroid/graphics/Rect;

    iget-object v9, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {v9}, Ldev/duo/taskcore/g;->h(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/b;

    move-result-object v9

    iget-object v9, v9, Ldev/duo/taskcore/b;->d:[Landroid/graphics/Rect;

    aget-object v7, v9, v7

    invoke-static {}, Ldev/duo/taskcore/g;->b()F

    move-result v9

    const/4 v11, 0x0

    cmpg-float v9, v9, v11

    if-gtz v9, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    const v9, 0x3eb33333    # 0.35f

    :goto_3
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v8, v7, v9, v11}, Ldev/duo/taskcore/b;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v1, :cond_9

    .line 24
    iget-object v8, v6, Ldev/duo/taskcore/g$g;->c:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 25
    :cond_9
    iget-object v4, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    iget v9, v6, Ldev/duo/taskcore/g$g;->e:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/g$g;Landroid/graphics/Rect;FI)V

    .line 16
    :goto_4
    move v4, v3

    .line 25
    :cond_a
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_b
    if-eqz v4, :cond_c

    .line 27
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_c
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V

    if-eqz v4, :cond_d

    .line 29
    iget-object p1, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {p1}, Ldev/duo/taskcore/g;->x(Ldev/duo/taskcore/g;)Ldev/duo/taskcore/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/a;->c(Ldev/duo/taskcore/a$a;)V

    return-void

    .line 30
    :cond_d
    iget-object p1, p0, Ldev/duo/taskcore/g$d;->g:Ldev/duo/taskcore/g;

    invoke-static {p1, p0}, Ldev/duo/taskcore/g;->a(Ldev/duo/taskcore/g;Ldev/duo/taskcore/a$a;)Ldev/duo/taskcore/a$a;

    return-void

    .line 15
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 31
    :try_start_1
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1

    :cond_e
    :goto_7
    return-void
.end method
