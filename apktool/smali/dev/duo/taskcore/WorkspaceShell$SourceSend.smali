.class final Ldev/duo/taskcore/WorkspaceShell$SourceSend;
.super Ljava/lang/Object;
.source "WorkspaceShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SourceSend"
.end annotation


# instance fields
.field final intent:Landroid/app/PendingIntent;

.field final kind:I


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;I)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$SourceSend;->intent:Landroid/app/PendingIntent;

    iput p2, p0, Ldev/duo/taskcore/WorkspaceShell$SourceSend;->kind:I

    return-void
.end method
