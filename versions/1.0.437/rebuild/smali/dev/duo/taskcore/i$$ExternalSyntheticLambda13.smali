.class public final synthetic Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceSession$Done;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/TaskBinding;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iput p2, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$2:Ldev/duo/taskcore/TaskBinding;

    iput-boolean p4, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$3:Z

    iput-object p5, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$4:Ldev/duo/taskcore/TaskBinding;

    iput-boolean p6, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$5:Z

    iput-boolean p7, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$6:Z

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 9

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$0:Ldev/duo/taskcore/WorkspaceSession;

    iget v1, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$1:I

    iget-object v2, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$2:Ldev/duo/taskcore/TaskBinding;

    iget-boolean v3, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$3:Z

    iget-object v4, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$4:Ldev/duo/taskcore/TaskBinding;

    iget-boolean v5, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$5:Z

    iget-boolean v6, p0, Ldev/duo/taskcore/i$$ExternalSyntheticLambda13;->f$6:Z

    move v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Ldev/duo/taskcore/WorkspaceSession;->$r8$lambda$gMTWJwpex-9QRtQstibnP4BcZxY(Ldev/duo/taskcore/WorkspaceSession;ILdev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/TaskBinding;ZZZLjava/lang/String;)V

    return-void
.end method
