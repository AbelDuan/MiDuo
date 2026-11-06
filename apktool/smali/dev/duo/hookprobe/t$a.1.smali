.class Ldev/duo/hookprobe/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/t;->d(Ldev/duo/workspaceprobe/b;)Z
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/t$a;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/t;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ldev/duo/hookprobe/t$a;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;)Z

    .line 3
    invoke-static {}, Ldev/duo/hookprobe/t;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ldev/duo/hookprobe/t;->j()Ljava/util/WeakHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Ldev/duo/hookprobe/t$a;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v1, v0}, Ldev/duo/hookprobe/t;->a(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
