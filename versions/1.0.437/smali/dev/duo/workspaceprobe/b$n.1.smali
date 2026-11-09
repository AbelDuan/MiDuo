.class Ldev/duo/workspaceprobe/b$n;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->l()V
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
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$n;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$n;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->T(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
