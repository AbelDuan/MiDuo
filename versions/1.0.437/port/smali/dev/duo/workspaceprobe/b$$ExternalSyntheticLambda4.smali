.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Ljava/lang/reflect/Method;

.field public final synthetic f$2:Ljava/lang/reflect/Method;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/reflect/Method;

.field public final synthetic f$5:Ljava/lang/reflect/Method;

.field public final synthetic f$6:Ljava/lang/reflect/Method;

.field public final synthetic f$7:Ljava/lang/reflect/Method;

.field public final synthetic f$8:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;ILjava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$1:Ljava/lang/reflect/Method;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$2:Ljava/lang/reflect/Method;

    iput p4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$3:I

    iput-object p5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$4:Ljava/lang/reflect/Method;

    iput-object p6, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$5:Ljava/lang/reflect/Method;

    iput-object p7, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$6:Ljava/lang/reflect/Method;

    iput-object p8, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$7:Ljava/lang/reflect/Method;

    iput-object p9, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$8:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$1:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$2:Ljava/lang/reflect/Method;

    iget v3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$3:I

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$4:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$5:Ljava/lang/reflect/Method;

    iget-object v6, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$6:Ljava/lang/reflect/Method;

    iget-object v7, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$7:Ljava/lang/reflect/Method;

    iget-object v8, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda4;->f$8:Ljava/lang/reflect/Method;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Ldev/duo/workspaceprobe/b;->$r8$lambda$Wo-adfNF8__LEy5vwS7muxAWRZA(Ldev/duo/workspaceprobe/b;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;ILjava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
