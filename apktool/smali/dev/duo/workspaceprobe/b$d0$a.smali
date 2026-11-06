.class Ldev/duo/workspaceprobe/b$d0$a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b$d0;-><init>(Ldev/duo/workspaceprobe/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b;

.field final synthetic b:Ldev/duo/workspaceprobe/b$d0;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b$d0;Landroid/content/Context;Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$d0$a;->b:Ldev/duo/workspaceprobe/b$d0;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$d0$a;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0$a;->b:Ldev/duo/workspaceprobe/b$d0;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b$d0;->q:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->n(Ldev/duo/workspaceprobe/b;)V

    :cond_0
    return v0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
