.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/i$a;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/i$a;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda59;->f$0:Ldev/duo/taskcore/i$a;

    iput-boolean p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda59;->f$1:Z

    iput-object p3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda59;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda59;->f$0:Ldev/duo/taskcore/i$a;

    iget-boolean v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda59;->f$1:Z

    iget-object v2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda59;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldev/duo/taskcore/j;->$r8$lambda$JTb0ueK3NxmymmPfNSdK4xmoflE(Ldev/duo/taskcore/i$a;ZLjava/lang/String;)V

    return-void
.end method
