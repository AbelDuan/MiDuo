.class Ldev/duo/workspaceprobe/n$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/n;->a(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ldev/duo/workspaceprobe/n;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/n;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/n$b;->b:Ldev/duo/workspaceprobe/n;

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$b;->b:Ldev/duo/workspaceprobe/n;

    invoke-static {v0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/n;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/n$b;->b:Ldev/duo/workspaceprobe/n;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/n;->a(Ldev/duo/workspaceprobe/n;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Ldev/duo/workspaceprobe/n$b;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
