.class public final synthetic Ldev/duo/taskcore/h$a$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ldev/duo/taskcore/h$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ldev/duo/taskcore/h$b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/h$a$a$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Ldev/duo/taskcore/h$a$a$$ExternalSyntheticLambda0;->f$1:Ldev/duo/taskcore/h$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/h$a$a$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Ldev/duo/taskcore/h$a$a$$ExternalSyntheticLambda0;->f$1:Ldev/duo/taskcore/h$b;

    invoke-static {v0, v1}, Ldev/duo/taskcore/h$a$a;->$r8$lambda$OLNr63kLNoJ0mCUTLnBWitnrSu4(Ljava/util/function/Consumer;Ldev/duo/taskcore/h$b;)V

    return-void
.end method
