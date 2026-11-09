.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Ljava/lang/reflect/Field;

.field public final synthetic f$2:Ljava/lang/reflect/Field;

.field public final synthetic f$3:Ljava/lang/reflect/Field;

.field public final synthetic f$4:Ljava/lang/reflect/Field;

.field public final synthetic f$5:Ljava/lang/reflect/Field;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$1:Ljava/lang/reflect/Field;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$2:Ljava/lang/reflect/Field;

    iput-object p4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$3:Ljava/lang/reflect/Field;

    iput-object p5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$4:Ljava/lang/reflect/Field;

    iput-object p6, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$5:Ljava/lang/reflect/Field;

    iput-object p7, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$1:Ljava/lang/reflect/Field;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$2:Ljava/lang/reflect/Field;

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$3:Ljava/lang/reflect/Field;

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$4:Ljava/lang/reflect/Field;

    iget-object v5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$5:Ljava/lang/reflect/Field;

    iget-object v6, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda159;->f$6:Ljava/lang/Object;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Ldev/duo/workspaceprobe/b;->$r8$lambda$YzLVIAd_0EIUO34raO0N5lPyeZE(Ldev/duo/workspaceprobe/b;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/Object;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
