.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/j;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/j;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda60;->f$0:Ldev/duo/taskcore/j;

    iput p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda60;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda60;->f$0:Ldev/duo/taskcore/j;

    iget v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda60;->f$1:I

    invoke-static {v0, v1}, Ldev/duo/taskcore/j;->$r8$lambda$Nkbr6bP8nDJiMvOPUJKqckzHJRE(Ldev/duo/taskcore/j;I)V

    return-void
.end method
