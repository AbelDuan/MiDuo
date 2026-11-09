.class final Ldev/duo/taskcore/j$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field final a:Z

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/taskcore/d;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ldev/duo/taskcore/i$a;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ldev/duo/taskcore/d;

.field g:Z

.field h:Z

.field i:Z

.field j:Z


# direct methods
.method constructor <init>(ZLjava/util/List;Ldev/duo/taskcore/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/d;",
            ">;",
            "Ldev/duo/taskcore/i$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Ldev/duo/taskcore/j$d;->a:Z

    iput-object p2, p0, Ldev/duo/taskcore/j$d;->b:Ljava/util/List;

    iput-object p3, p0, Ldev/duo/taskcore/j$d;->c:Ldev/duo/taskcore/i$a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ldev/duo/taskcore/j$d;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/j$d;->h:Z

    iput-boolean v0, p0, Ldev/duo/taskcore/j$d;->g:Z

    .line 3
    iget-object v0, p0, Ldev/duo/taskcore/j$d;->c:Ldev/duo/taskcore/i$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ldev/duo/taskcore/i$a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method a(ZLjava/lang/String;)V
    .locals 3

    .line 4
    iget-boolean v0, p0, Ldev/duo/taskcore/j$d;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ldev/duo/taskcore/j$d;->b(ZLjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-boolean v0, p0, Ldev/duo/taskcore/j$d;->i:Z

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/j$d;->i:Z

    .line 7
    iget-boolean v0, p0, Ldev/duo/taskcore/j$d;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/j$d;->c:Ldev/duo/taskcore/i$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "late: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ldev/duo/taskcore/i$a;->a(ZLjava/lang/String;)V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "late attach result ignored (session already returning): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskCoreShell"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method b(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/taskcore/j$d;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/j$d;->g:Z

    .line 3
    iget-object v0, p0, Ldev/duo/taskcore/j$d;->c:Ldev/duo/taskcore/i$a;

    invoke-interface {v0, p1, p2}, Ldev/duo/taskcore/i$a;->a(ZLjava/lang/String;)V

    return-void
.end method
