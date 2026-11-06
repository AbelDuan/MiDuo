.class Ldev/duo/taskcore/WorkspaceHost$4;
.super Ldev/duo/taskcore/Frames$Driver;
.source "WorkspaceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/taskcore/WorkspaceHost;->startDragFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastDy:F

.field lastFrom:I

.field lastTo:I

.field final synthetic this$0:Ldev/duo/taskcore/WorkspaceHost;

.field final synthetic val$slots:[Ldev/duo/taskcore/TaskBinding;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 418
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$4;->val$slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-direct {p0}, Ldev/duo/taskcore/Frames$Driver;-><init>()V

    .line 419
    const/4 p1, -0x2

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastFrom:I

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastTo:I

    .line 420
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastDy:F

    return-void
.end method


# virtual methods
.method frame(J)V
    .locals 12

    .line 422
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$600(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Frames;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/Frames;->current(Ldev/duo/taskcore/Frames$Driver;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$800(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_7

    .line 423
    :cond_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$2200(Ldev/duo/taskcore/WorkspaceHost;)I

    move-result p1

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost;->access$2300(Ldev/duo/taskcore/WorkspaceHost;)I

    move-result p2

    .line 424
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$2600(Ldev/duo/taskcore/WorkspaceHost;)F

    move-result v0

    .line 425
    if-gez p1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$600(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Frames;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/Frames;->done(Ldev/duo/taskcore/Frames$Driver;)V

    return-void

    .line 426
    :cond_1
    iget v1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastFrom:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2

    iget v1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastTo:I

    if-ne p2, v1, :cond_2

    iget v1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastDy:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 427
    :goto_0
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastFrom:I

    iput p2, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastTo:I

    iput v0, p0, Ldev/duo/taskcore/WorkspaceHost$4;->lastDy:F

    .line 428
    nop

    .line 429
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 430
    move v4, v2

    move v10, v4

    :goto_1
    :try_start_0
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceHost$4;->val$slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v6, v6

    if-ge v10, v6, :cond_b

    .line 431
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceHost$4;->val$slots:[Ldev/duo/taskcore/TaskBinding;

    aget-object v7, v7, v10

    invoke-static {v6, v7}, Ldev/duo/taskcore/WorkspaceHost;->access$3000(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v6

    .line 432
    if-nez v6, :cond_3

    goto/16 :goto_4

    .line 433
    :cond_3
    if-ne v10, p1, :cond_5

    .line 434
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, v6, Ldev/duo/taskcore/WorkspaceHost$Item;->rest:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 435
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 436
    if-eqz v1, :cond_4

    iget-object v8, v6, Ldev/duo/taskcore/WorkspaceHost$Item;->shown:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_4
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    const v8, 0x3f866666    # 1.05f

    const/16 v9, 0x1e

    invoke-static/range {v4 .. v9}, Ldev/duo/taskcore/WorkspaceHost;->access$700(Ldev/duo/taskcore/WorkspaceHost;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    move v4, v3

    goto :goto_4

    .line 439
    :cond_5
    nop

    .line 440
    if-ge p1, p2, :cond_6

    if-le v10, p1, :cond_6

    if-gt v10, p2, :cond_6

    add-int/lit8 v7, v10, -0x1

    goto :goto_2

    .line 441
    :cond_6
    if-le p1, p2, :cond_7

    if-lt v10, p2, :cond_7

    if-ge v10, p1, :cond_7

    add-int/lit8 v7, v10, 0x1

    goto :goto_2

    .line 443
    :cond_7
    move v7, v10

    :goto_2
    iget-object v8, v6, Ldev/duo/taskcore/WorkspaceHost$Item;->shown:Landroid/graphics/Rect;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v9}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object v9

    iget-object v9, v9, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v7, v9, v7

    invoke-static {}, Ldev/duo/taskcore/WorkspaceHost;->access$3100()F

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

    invoke-static {v8, v7, v9, v11}, Ldev/duo/taskcore/Geometry;->between(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 444
    if-eqz v1, :cond_9

    iget-object v8, v6, Ldev/duo/taskcore/WorkspaceHost$Item;->shown:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget v9, v6, Ldev/duo/taskcore/WorkspaceHost$Item;->layer:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Ldev/duo/taskcore/WorkspaceHost;->access$700(Ldev/duo/taskcore/WorkspaceHost;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    move v4, v3

    .line 430
    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 446
    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_c
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 448
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$4;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v4, :cond_d

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$600(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Frames;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/Frames;->next(Ldev/duo/taskcore/Frames$Driver;)V

    goto :goto_5

    :cond_d
    invoke-static {p1, p0}, Ldev/duo/taskcore/WorkspaceHost;->access$2902(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/Frames$Driver;)Ldev/duo/taskcore/Frames$Driver;

    .line 449
    :goto_5
    return-void

    .line 429
    :catchall_0
    move-exception v0

    move-object p1, v0

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

    .line 422
    :cond_e
    :goto_7
    return-void
.end method
