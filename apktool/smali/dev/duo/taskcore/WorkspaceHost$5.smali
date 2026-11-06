.class Ldev/duo/taskcore/WorkspaceHost$5;
.super Ldev/duo/taskcore/Frames$Driver;
.source "WorkspaceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/taskcore/WorkspaceHost;->startBarFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastDx:F

.field final synthetic this$0:Ldev/duo/taskcore/WorkspaceHost;

.field final synthetic val$slots:[Ldev/duo/taskcore/TaskBinding;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceHost;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 456
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$5;->val$slots:[Ldev/duo/taskcore/TaskBinding;

    invoke-direct {p0}, Ldev/duo/taskcore/Frames$Driver;-><init>()V

    .line 457
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->lastDx:F

    return-void
.end method


# virtual methods
.method frame(J)V
    .locals 9

    .line 459
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$600(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Frames;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/Frames;->current(Ldev/duo/taskcore/Frames$Driver;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$800(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 460
    :cond_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$1800(Ldev/duo/taskcore/WorkspaceHost;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$600(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Frames;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/Frames;->done(Ldev/duo/taskcore/Frames$Driver;)V

    return-void

    .line 461
    :cond_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$1900(Ldev/duo/taskcore/WorkspaceHost;)F

    move-result p1

    .line 463
    iget p2, p0, Ldev/duo/taskcore/WorkspaceHost$5;->lastDx:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_2

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1, p0}, Ldev/duo/taskcore/WorkspaceHost;->access$2902(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/Frames$Driver;)Ldev/duo/taskcore/Frames$Driver;

    return-void

    .line 464
    :cond_2
    iput p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->lastDx:F

    .line 465
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 466
    :try_start_0
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$5;->val$slots:[Ldev/duo/taskcore/TaskBinding;

    array-length v6, p2

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v0, p2, v8

    .line 467
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v2, v0}, Ldev/duo/taskcore/WorkspaceHost;->access$3000(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v2

    .line 468
    if-nez v2, :cond_3

    goto :goto_1

    .line 469
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->rest:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 470
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v3, v0, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 471
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget v5, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->layer:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->access$700(Ldev/duo/taskcore/WorkspaceHost;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    .line 466
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 473
    :cond_4
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceHost;->access$000(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/TaskBinding;

    move-result-object v0

    invoke-static {p2, v0}, Ldev/duo/taskcore/WorkspaceHost;->access$3000(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/WorkspaceHost$Item;

    move-result-object v2

    .line 474
    if-eqz v2, :cond_5

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceHost;->access$200(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Geometry;

    move-result-object p2

    invoke-virtual {p2, p1}, Ldev/duo/taskcore/Geometry;->mainFollowing(F)Landroid/graphics/Rect;

    move-result-object v3

    iget v5, v2, Ldev/duo/taskcore/WorkspaceHost$Item;->layer:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceHost;->access$700(Ldev/duo/taskcore/WorkspaceHost;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceHost$Item;Landroid/graphics/Rect;FI)V

    .line 475
    :cond_5
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 477
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$5;->this$0:Ldev/duo/taskcore/WorkspaceHost;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceHost;->access$600(Ldev/duo/taskcore/WorkspaceHost;)Ldev/duo/taskcore/Frames;

    move-result-object p1

    invoke-virtual {p1, p0}, Ldev/duo/taskcore/Frames;->next(Ldev/duo/taskcore/Frames$Driver;)V

    .line 478
    return-void

    .line 465
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    .line 459
    :cond_6
    :goto_3
    return-void
.end method
