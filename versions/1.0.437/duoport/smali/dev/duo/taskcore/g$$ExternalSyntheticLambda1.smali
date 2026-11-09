.class public final synthetic Ldev/duo/taskcore/g$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceHost;

.field public final synthetic f$1:Ldev/duo/taskcore/WorkspaceHost$Item;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceHost$Item;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda1;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    iput-object p2, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda1;->f$1:Ldev/duo/taskcore/WorkspaceHost$Item;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda1;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v1, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda1;->f$1:Ldev/duo/taskcore/WorkspaceHost$Item;

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceHost;->$r8$lambda$gT85ykPXgBAoQ7E7Ugay-1-tpW4(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/WorkspaceHost$Item;)V

    return-void
.end method
