.class Ldev/duo/workspaceprobe/b$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->d(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$e;->b:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/b$e;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$e;->b:Ldev/duo/workspaceprobe/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Z)Z

    .line 2
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$e;->b:Ldev/duo/workspaceprobe/b;

    iget-boolean v1, p0, Ldev/duo/workspaceprobe/b$e;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p1, v1}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;F)F

    .line 3
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/b$e;->a:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$e;->b:Ldev/duo/workspaceprobe/b;

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b;Z)Z

    .line 5
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$e;->b:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->K6:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 7
    :cond_1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$e;->b:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->f0(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
