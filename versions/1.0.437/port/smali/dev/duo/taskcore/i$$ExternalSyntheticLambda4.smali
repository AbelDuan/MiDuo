.class public final synthetic Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceSession$Done;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iput p2, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;->f$2:Ldev/duo/taskcore/TaskBinding;

    iput p4, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 6

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iget v1, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;->f$2:Ldev/duo/taskcore/TaskBinding;

    iget v3, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda4;->f$3:I

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceSession;->$r8$lambda$pY34dJZ4x7PwqlXZUJA1ZJ1wzTc(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;IZLjava/lang/String;)V

    return-void
.end method
