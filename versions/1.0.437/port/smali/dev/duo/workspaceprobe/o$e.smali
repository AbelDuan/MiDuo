.class Ldev/duo/workspaceprobe/o$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/o;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b$R;

.field final synthetic b:Ldev/duo/workspaceprobe/o;


# direct methods
.method public static synthetic $r8$lambda$p41npBvG1mzP_tA-cDkypwzoBLc(Ldev/duo/workspaceprobe/b$R;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/o$e;->a(Ldev/duo/workspaceprobe/b$R;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/o;Ldev/duo/workspaceprobe/b$R;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/o$e;->b:Ldev/duo/workspaceprobe/o;

    iput-object p2, p0, Ldev/duo/workspaceprobe/o$e;->a:Ldev/duo/workspaceprobe/b$R;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/b$R;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/b$R;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$e;->b:Ldev/duo/workspaceprobe/o;

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->b(Ldev/duo/workspaceprobe/o;)Ldev/duo/workspaceprobe/b$R;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/workspaceprobe/o$e;->a:Ldev/duo/workspaceprobe/b$R;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$e;->b:Ldev/duo/workspaceprobe/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ldev/duo/workspaceprobe/b$R;)Ldev/duo/workspaceprobe/b$R;

    .line 3
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$e;->b:Ldev/duo/workspaceprobe/o;

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/o;->b(Ldev/duo/workspaceprobe/o;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$e;->a:Ldev/duo/workspaceprobe/b$R;

    new-instance v0, Ldev/duo/workspaceprobe/o$e$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ldev/duo/workspaceprobe/o$e$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$R;)V

    const-string p1, "popup"

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/o;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
