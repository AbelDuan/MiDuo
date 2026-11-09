.class public final synthetic Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/g;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ldev/duo/taskcore/b;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/g;ZLdev/duo/taskcore/b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;->f$0:Ldev/duo/taskcore/g;

    iput-boolean p2, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;->f$1:Z

    iput-object p3, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;->f$2:Ldev/duo/taskcore/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;->f$0:Ldev/duo/taskcore/g;

    iget-boolean v1, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;->f$1:Z

    iget-object v2, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda10;->f$2:Ldev/duo/taskcore/b;

    invoke-static {v0, v1, v2}, Ldev/duo/taskcore/g;->$r8$lambda$5wtL8kPFt2R94m8u39zONTvNjjI(Ldev/duo/taskcore/g;ZLdev/duo/taskcore/b;)V

    return-void
.end method
