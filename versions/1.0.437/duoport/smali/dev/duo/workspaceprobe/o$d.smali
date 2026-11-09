.class Ldev/duo/workspaceprobe/o$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/o;->a(Landroid/view/View;IIIILandroid/graphics/Rect;F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;

.field final synthetic b:Ldev/duo/workspaceprobe/o;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/o;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/o$d;->b:Ldev/duo/workspaceprobe/o;

    iput-object p2, p0, Ldev/duo/workspaceprobe/o$d;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$d;->b:Ldev/duo/workspaceprobe/o;

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->c(Ldev/duo/workspaceprobe/o;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/workspaceprobe/o$d;->a:Landroid/animation/ValueAnimator;

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$d;->b:Ldev/duo/workspaceprobe/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/o;->c(Ldev/duo/workspaceprobe/o;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 3
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$d;->b:Ldev/duo/workspaceprobe/o;

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->d(Ldev/duo/workspaceprobe/o;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v1, p0, Ldev/duo/workspaceprobe/o$d;->b:Ldev/duo/workspaceprobe/o;

    invoke-static {v1, v0}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ljava/util/List;)Ljava/util/List;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
