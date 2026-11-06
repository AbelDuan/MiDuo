.class Ldev/duo/workspaceprobe/b$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->M1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b;


# direct methods
.method public static synthetic $r8$lambda$2A8oqURdg4hii3haf0NEnHS_ejg(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/b$s;->b(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9OFNs0nROE_z-ANAt-YXEUIXXxQ(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/b$s;->c(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d8yt0Z9sfVrCnbdjZ75MibkmNk4(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/b$s;->a(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$s;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/workspaceprobe/b;->R(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method private static synthetic b(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/workspaceprobe/b;->R(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method private static synthetic c(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/workspaceprobe/b;->R(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$s;->a:Ldev/duo/workspaceprobe/b;

    iget-object v0, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/b$s$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Ldev/duo/workspaceprobe/b$s$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$s;->a:Ldev/duo/workspaceprobe/b;

    iget-object v0, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/b$s$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Ldev/duo/workspaceprobe/b$s$$ExternalSyntheticLambda2;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$s;->a:Ldev/duo/workspaceprobe/b;

    iget-object v0, p1, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/b$s$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ldev/duo/workspaceprobe/b$s$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
