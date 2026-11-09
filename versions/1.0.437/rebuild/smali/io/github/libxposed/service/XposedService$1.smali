.class Lio/github/libxposed/service/XposedService$1;
.super Lio/github/libxposed/service/IHotReloadCallback$Stub;
.source "XposedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/libxposed/service/XposedService;->hotReloadModule(Lio/github/libxposed/service/HookedTarget;Landroid/os/Bundle;Lio/github/libxposed/service/XposedService$HotReloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/libxposed/service/XposedService;

.field final synthetic val$callback:Lio/github/libxposed/service/XposedService$HotReloadCallback;

.field final synthetic val$target:Lio/github/libxposed/service/HookedTarget;


# direct methods
.method constructor <init>(Lio/github/libxposed/service/XposedService;Lio/github/libxposed/service/XposedService$HotReloadCallback;Lio/github/libxposed/service/HookedTarget;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/libxposed/service/XposedService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lio/github/libxposed/service/XposedService$1;->this$0:Lio/github/libxposed/service/XposedService;

    iput-object p2, p0, Lio/github/libxposed/service/XposedService$1;->val$callback:Lio/github/libxposed/service/XposedService$HotReloadCallback;

    iput-object p3, p0, Lio/github/libxposed/service/XposedService$1;->val$target:Lio/github/libxposed/service/HookedTarget;

    invoke-direct {p0}, Lio/github/libxposed/service/IHotReloadCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHotReloadResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 328
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService$1;->val$callback:Lio/github/libxposed/service/XposedService$HotReloadCallback;

    iget-object v1, p0, Lio/github/libxposed/service/XposedService$1;->val$target:Lio/github/libxposed/service/HookedTarget;

    invoke-static {p1, p2}, Lio/github/libxposed/service/HotReloadResult;->from(ILjava/lang/String;)Lio/github/libxposed/service/HotReloadResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/github/libxposed/service/XposedService$HotReloadCallback;->onHotReloadResult(Lio/github/libxposed/service/HookedTarget;Lio/github/libxposed/service/HotReloadResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-static {}, Lio/github/libxposed/service/XposedService;->-$$Nest$sfgethotReloadCallbacks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 331
    nop

    .line 332
    return-void

    .line 330
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/github/libxposed/service/XposedService;->-$$Nest$sfgethotReloadCallbacks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 331
    throw v0
.end method
