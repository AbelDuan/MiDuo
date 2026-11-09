.class Ldev/duo/workspaceprobe/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$d;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$d;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d;->a:Ldev/duo/workspaceprobe/b;

    const-string v0, "detached"

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/b;->d(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void
.end method
