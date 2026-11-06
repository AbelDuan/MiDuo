.class Ldev/duo/icons/a$a;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/icons/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldev/duo/icons/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/icons/a$c;

.field final synthetic b:Ldev/duo/icons/a;


# direct methods
.method constructor <init>(Ldev/duo/icons/a;Landroid/os/Handler;Ldev/duo/icons/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/icons/a$a;->b:Ldev/duo/icons/a;

    iput-object p3, p0, Ldev/duo/icons/a$a;->a:Ldev/duo/icons/a$c;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/icons/a$a;->b:Ldev/duo/icons/a;

    invoke-static {v0}, Ldev/duo/icons/a;->a(Ldev/duo/icons/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "backupFd"

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :cond_0
    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Ldev/duo/icons/a$a;->b:Ldev/duo/icons/a;

    invoke-static {v0}, Ldev/duo/icons/a;->b(Ldev/duo/icons/a;)V

    iget-object v0, p0, Ldev/duo/icons/a$a;->a:Ldev/duo/icons/a$c;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Ldev/duo/icons/a$c;->a(ZLandroid/os/Bundle;)V

    return-void
.end method
