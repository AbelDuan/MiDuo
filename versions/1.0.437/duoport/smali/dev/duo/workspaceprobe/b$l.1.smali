.class final Ldev/duo/workspaceprobe/b$l;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "l"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/telephony/TelephonyCallback;

.field final synthetic d:Ldev/duo/workspaceprobe/b$h0;

.field final synthetic e:Ldev/duo/workspaceprobe/b;


# direct methods
.method public static synthetic $r8$lambda$ZYDxMnOCguf5stNTJ9DgAR-KcAI(Ldev/duo/workspaceprobe/b$l;I)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/b$l;->a(I)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$l;->d:Ldev/duo/workspaceprobe/b$h0;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/workspaceprobe/b$l;->a:I

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$l;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/workspaceprobe/b$l;->a:I

    return p0
.end method

.method private synthetic a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->U(Ldev/duo/workspaceprobe/b;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->c(Ldev/duo/workspaceprobe/b;I)I

    .line 4
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->V(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Ldev/duo/workspaceprobe/b$l;->a:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l;->c:Landroid/telephony/TelephonyCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$l;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$l;->c:Landroid/telephony/TelephonyCallback;

    .line 3
    :cond_1
    iput p1, p0, Ldev/duo/workspaceprobe/b$l;->a:I

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l;->d:Ldev/duo/workspaceprobe/b$h0;

    const-string v1, ""

    iput-object v1, v0, Ldev/duo/workspaceprobe/b$h0;->d0:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->S(Ldev/duo/workspaceprobe/b;)V

    .line 6
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$l;->b:Landroid/telephony/TelephonyManager;

    .line 16
    new-instance v0, Ldev/duo/workspaceprobe/b$l$a;

    invoke-direct {v0, p0, p1}, Ldev/duo/workspaceprobe/b$l$a;-><init>(Ldev/duo/workspaceprobe/b$l;I)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/b$l;->c:Landroid/telephony/TelephonyCallback;

    .line 17
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$l;->b:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$l;->c:Landroid/telephony/TelephonyCallback;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->D1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/b$l$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/duo/workspaceprobe/b$l$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$l;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
