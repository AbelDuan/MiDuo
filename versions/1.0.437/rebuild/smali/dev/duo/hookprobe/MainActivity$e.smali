.class Ldev/duo/hookprobe/MainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/libxposed/service/XposedService$OnScopeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/MainActivity;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$l-hVpSoLl79lNqx0-QxqbF3SP8Q(Ldev/duo/hookprobe/MainActivity$e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/MainActivity$e;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJ3laSJw2s-Jun1mYvojOGKQ5a4(Ldev/duo/hookprobe/MainActivity$e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/MainActivity$e;->a(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/hookprobe/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;Z)Z

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\u4f5c\u7528\u57df\u7533\u8bf7\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->c(Ldev/duo/hookprobe/MainActivity;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;Z)Z

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v2}, Ldev/duo/hookprobe/MainActivity;->d(Ldev/duo/hookprobe/MainActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;Ljava/util/Set;)Ljava/util/Set;

    .line 3
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->d(Ldev/duo/hookprobe/MainActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-static {}, Ldev/duo/hookprobe/MainActivity;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    .line 5
    invoke-static {v1}, Ldev/duo/hookprobe/MainActivity;->e(Ldev/duo/hookprobe/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e2a\u7b49\u5f85 LSPosed \u6388\u6743"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "\\d+ \u4e2a\u7b49\u5f85 LSPosed \u6388\u6743"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->c(Ldev/duo/hookprobe/MainActivity;)V

    .line 9
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onScopeRequestApproved(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->n(Ldev/duo/hookprobe/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/MainActivity$e$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/MainActivity$e$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/MainActivity$e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScopeRequestFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$e;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->n(Ldev/duo/hookprobe/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/MainActivity$e$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/MainActivity$e$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/MainActivity$e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
