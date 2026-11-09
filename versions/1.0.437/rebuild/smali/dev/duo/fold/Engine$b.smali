.class Ldev/duo/fold/Engine$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/fold/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/fold/Engine;


# direct methods
.method public static synthetic $r8$lambda$vAJTV18JG2KWQXltJQF-Qi_d-rM(Ldev/duo/fold/Engine$b;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/fold/Engine$b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/fold/Engine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/fold/Engine$b;->a:Ldev/duo/fold/Engine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldev/duo/fold/Engine$b;->a:Ldev/duo/fold/Engine;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/duo/fold/Engine;->b(Ldev/duo/fold/Engine;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldev/duo/fold/Engine$b;->a:Ldev/duo/fold/Engine;

    new-instance v0, Ldev/duo/fold/Engine$b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Ldev/duo/fold/Engine$b$$ExternalSyntheticLambda0;-><init>(Ldev/duo/fold/Engine$b;Landroid/content/Intent;)V

    invoke-static {p1, v0}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;Ldev/duo/fold/Engine$e;)V

    return-void
.end method
