.class Ldev/duo/workspaceprobe/b$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/animation/ValueAnimator;

.field final synthetic c:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$c;->c:Ldev/duo/workspaceprobe/b;

    iput p2, p0, Ldev/duo/workspaceprobe/b$c;->a:I

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$c;->b:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$c;->c:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->g(Ldev/duo/workspaceprobe/b;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Ldev/duo/workspaceprobe/b$c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$c;->b:Landroid/animation/ValueAnimator;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$c;->c:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->g(Ldev/duo/workspaceprobe/b;)Ljava/util/Map;

    move-result-object p1

    iget v0, p0, Ldev/duo/workspaceprobe/b$c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$c;->c:Ldev/duo/workspaceprobe/b;

    iget v0, p0, Ldev/duo/workspaceprobe/b$c;->a:I

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;I)V

    return-void
.end method
