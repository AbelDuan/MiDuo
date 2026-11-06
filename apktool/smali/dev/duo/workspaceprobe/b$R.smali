.class final Ldev/duo/workspaceprobe/b$R;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "R"
.end annotation


# instance fields
.field final a:Landroid/view/SurfaceControlViewHost;

.field final b:Landroid/view/SurfaceControl;

.field final c:Ljava/lang/String;

.field final d:Landroid/view/View;

.field final e:F

.field f:I

.field g:I

.field h:I

.field final i:I

.field j:F

.field k:F

.field l:F

.field m:F

.field volatile n:Z

.field final synthetic o:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIF)V
    .locals 11

    .line 1
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Ldev/duo/workspaceprobe/b$R;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFZ)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFI)V
    .locals 8

    .line 3
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$R;->o:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Ldev/duo/workspaceprobe/b$R;->k:F

    .line 23
    iput-object p2, p0, Ldev/duo/workspaceprobe/b$R;->c:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Ldev/duo/workspaceprobe/b$R;->d:Landroid/view/View;

    .line 25
    iget-object v0, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 26
    new-instance v6, Landroid/view/SurfaceControlViewHost;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->i4:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v6, p1, v0, v1}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    iput-object v6, p0, Ldev/duo/workspaceprobe/b$R;->a:Landroid/view/SurfaceControlViewHost;

    if-eqz p10, :cond_0

    .line 28
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/4 v5, -0x3

    move v1, p6

    move v2, p7

    move/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 32
    :try_start_0
    const-class p1, Landroid/view/SurfaceControlViewHost;

    const-string v3, "setView"

    const-class v5, Landroid/view/View;

    const-class v7, Landroid/view/WindowManager$LayoutParams;

    filled-new-array {v5, v7}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    .line 33
    invoke-virtual {p1, v6, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 37
    iget-object p3, p0, Ldev/duo/workspaceprobe/b$R;->a:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p3}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 38
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Panel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " cannot get its input flags "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 41
    :cond_0
    invoke-virtual {v6, p3, p6, p7}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    .line 43
    :goto_0
    invoke-virtual {v6}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    .line 44
    iput p4, p0, Ldev/duo/workspaceprobe/b$R;->e:F

    iput p5, p0, Ldev/duo/workspaceprobe/b$R;->h:I

    iput p6, p0, Ldev/duo/workspaceprobe/b$R;->f:I

    iput p7, p0, Ldev/duo/workspaceprobe/b$R;->g:I

    move/from16 p1, p8

    iput p1, p0, Ldev/duo/workspaceprobe/b$R;->i:I

    move/from16 p1, p9

    iput p1, p0, Ldev/duo/workspaceprobe/b$R;->j:F

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFZ)V
    .locals 12

    if-eqz p10, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Ldev/duo/workspaceprobe/b$R;-><init>(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Landroid/view/View;FIIIIFI)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Ldev/duo/workspaceprobe/b$R;->k:F

    return-void
.end method

.method b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/b$R;->n:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$R;->a:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    return-void

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Ldev/duo/workspaceprobe/b$R;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    throw v0
.end method
