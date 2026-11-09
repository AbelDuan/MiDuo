.class Ldev/duo/workspaceprobe/b$F;
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
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$F;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$F;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->X(Ldev/duo/workspaceprobe/b;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldev/duo/hookprobe/J;->d([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$F;->a:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->a6:[Ljava/lang/String;

    invoke-static {p1}, Ldev/duo/hookprobe/J;->g([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$F;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->s(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
