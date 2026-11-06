.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/util/List;ILjava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$1:Ljava/util/List;

    iput p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$2:I

    iput-object p4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$3:Ljava/lang/String;

    iput p5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$4:I

    iput p6, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$5:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$1:Ljava/util/List;

    iget v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$2:I

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$3:Ljava/lang/String;

    iget v4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$4:I

    iget v5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda158;->f$5:I

    move-object v6, p1

    check-cast v6, Ljava/lang/Integer;

    invoke-static/range {v0 .. v6}, Ldev/duo/workspaceprobe/b;->$r8$lambda$pZUSgKJdrZYfDBupVlKGU0hGHBE(Ldev/duo/workspaceprobe/b;Ljava/util/List;ILjava/lang/String;IILjava/lang/Integer;)V

    return-void
.end method
