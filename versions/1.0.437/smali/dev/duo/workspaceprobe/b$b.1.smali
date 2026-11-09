.class Ldev/duo/workspaceprobe/b$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$b;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$b;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->h(Ldev/duo/workspaceprobe/b;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const-string p1, "DuoRail"

    const-string v0, "Duo config direct read dropped, provider from now on"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$b;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1, v2, v3}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;J)J

    .line 3
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$b;->a:Ldev/duo/workspaceprobe/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    if-nez p2, :cond_1

    .line 4
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Ldev/duo/workspaceprobe/b$b;->a:Ldev/duo/workspaceprobe/b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$b;->a:Ldev/duo/workspaceprobe/b;

    const-string p2, "app notified"

    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/b;->c(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    return-void
.end method
