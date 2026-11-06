.class Ldev/duo/hookprobe/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/libxposed/service/XposedService$OnScopeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/f;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/github/libxposed/service/XposedService;

.field final synthetic b:Ldev/duo/hookprobe/f;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/f;Lio/github/libxposed/service/XposedService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/f$c;->b:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$c;->a:Lio/github/libxposed/service/XposedService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object p1, p0, Ldev/duo/hookprobe/f$c;->b:Ldev/duo/hookprobe/f;

    const-string v0, "LSPosed \u5df2\u6279\u51c6\u4f5c\u7528\u57df\uff0c\u8be5 App \u4e0b\u6b21\u6253\u5f00\u65f6\u751f\u6548"

    invoke-static {p1, v0}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Ldev/duo/hookprobe/f$c;->b:Ldev/duo/hookprobe/f;

    iget-object v0, p0, Ldev/duo/hookprobe/f$c;->a:Lio/github/libxposed/service/XposedService;

    invoke-static {p1}, Ldev/duo/hookprobe/f;->c(Ldev/duo/hookprobe/f;)Ldev/duo/hookprobe/o;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;Lio/github/libxposed/service/XposedService;Ldev/duo/hookprobe/o;)V

    return-void
.end method

.method public onScopeRequestFailed(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$c;->b:Ldev/duo/hookprobe/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LSPosed \u4f5c\u7528\u57df\u8bf7\u6c42\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/duo/hookprobe/f;->b(Ldev/duo/hookprobe/f;Ljava/lang/String;)V

    return-void
.end method
