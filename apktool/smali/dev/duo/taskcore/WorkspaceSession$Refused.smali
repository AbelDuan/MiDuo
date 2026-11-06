.class public final Ldev/duo/taskcore/WorkspaceSession$Refused;
.super Ljava/lang/Exception;
.source "WorkspaceSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Refused"
.end annotation


# instance fields
.field public final held:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Ldev/duo/taskcore/WorkspaceSession$Refused;->held:Z

    return-void
.end method
