.class final Ldev/duo/workspaceprobe/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ldev/duo/workspaceprobe/a$b;

.field final b:Z


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/a$b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/a$a;->a:Ldev/duo/workspaceprobe/a$b;

    iput-boolean p2, p0, Ldev/duo/workspaceprobe/a$a;->b:Z

    return-void
.end method


# virtual methods
.method a(Ldev/duo/workspaceprobe/a$b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/a$a;->a:Ldev/duo/workspaceprobe/a$b;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Ldev/duo/workspaceprobe/a$b;->a:Z

    iget-boolean p1, p1, Ldev/duo/workspaceprobe/a$b;->a:Z

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
