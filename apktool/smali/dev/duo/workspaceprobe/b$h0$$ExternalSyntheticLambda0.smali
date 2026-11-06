.class public final synthetic Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b$h0;

.field public final synthetic f$1:Ljava/lang/reflect/Method;

.field public final synthetic f$2:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b$h0;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;->f$0:Ldev/duo/workspaceprobe/b$h0;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Method;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;->f$2:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;->f$0:Ldev/duo/workspaceprobe/b$h0;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/workspaceprobe/b$h0$$ExternalSyntheticLambda0;->f$2:Ljava/lang/reflect/Field;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ldev/duo/workspaceprobe/b$h0;->$r8$lambda$Dw_ePY76qiiauf2HoVban42t85k(Ldev/duo/workspaceprobe/b$h0;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
