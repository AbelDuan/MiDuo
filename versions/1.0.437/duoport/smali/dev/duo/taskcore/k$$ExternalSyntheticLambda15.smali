.class public final synthetic Ldev/duo/taskcore/k$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceWm;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceWm;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda15;->f$0:Ldev/duo/taskcore/WorkspaceWm;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda15;->f$0:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v0, p1}, Ldev/duo/taskcore/WorkspaceWm;->$r8$lambda$8sRTWSBenIv8DJfloQ10obH3Mbw(Ldev/duo/taskcore/WorkspaceWm;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
