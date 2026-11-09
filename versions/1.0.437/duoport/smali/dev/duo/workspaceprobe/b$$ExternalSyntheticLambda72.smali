.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda72;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda72;->f$0:Ldev/duo/workspaceprobe/b;

    iput p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda72;->f$1:I

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda72;->f$0:Ldev/duo/workspaceprobe/b;

    iget v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda72;->f$1:I

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/b;->$r8$lambda$ItaabNn-by6IwAbArWsvgXrtAb8(Ldev/duo/workspaceprobe/b;ILio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
