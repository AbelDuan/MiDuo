.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda57;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda57;->f$0:Ljava/lang/String;

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/n;->$r8$lambda$8Exxf25pYL6yy2uY9zS4mfKqcUk(Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
