.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:J

.field public final synthetic f$10:Z

.field public final synthetic f$11:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:J

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;JJIIJLjava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$0:Ldev/duo/workspaceprobe/b;

    iput-wide p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$1:J

    iput-wide p4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$2:J

    iput p6, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$3:I

    iput p7, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$4:I

    iput-wide p8, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$5:J

    iput-object p10, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$6:Ljava/lang/String;

    iput-object p11, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$7:Ljava/lang/String;

    iput-boolean p12, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$8:Z

    iput-object p13, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$9:Landroid/os/Bundle;

    iput-boolean p14, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$10:Z

    iput p15, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$11:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$0:Ldev/duo/workspaceprobe/b;

    move-object v3, v1

    iget-wide v1, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$1:J

    move-object v5, v3

    iget-wide v3, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$2:J

    move-object v6, v5

    iget v5, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$3:I

    move-object v7, v6

    iget v6, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$4:I

    move-object v9, v7

    iget-wide v7, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$5:J

    move-object v10, v9

    iget-object v9, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$6:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$7:Ljava/lang/String;

    move-object v12, v11

    iget-boolean v11, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$8:Z

    move-object v13, v12

    iget-object v12, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$9:Landroid/os/Bundle;

    move-object v14, v13

    iget-boolean v13, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$10:Z

    iget v0, v0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda35;->f$11:I

    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/Integer;

    move-object/from16 v16, v14

    move v14, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Ldev/duo/workspaceprobe/b;->$r8$lambda$4OFr5xo0uh2OTAtziDIoz4dEfPQ(Ldev/duo/workspaceprobe/b;JJIIJLjava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;ZILjava/lang/Integer;)V

    return-void
.end method
