.class final Ldev/duo/workspaceprobe/b$f0$a;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b$f0;->onSubscriptionsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ldev/duo/workspaceprobe/b$f0;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b$f0;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$f0$a;->c:Ldev/duo/workspaceprobe/b$f0;

    iput p2, p0, Ldev/duo/workspaceprobe/b$f0$a;->a:I

    iput p3, p0, Ldev/duo/workspaceprobe/b$f0$a;->b:I

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 1
    iget v0, p0, Ldev/duo/workspaceprobe/b$f0$a;->a:I

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$f0$a;->c:Ldev/duo/workspaceprobe/b$f0;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b$f0;->a(Ldev/duo/workspaceprobe/b$f0;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$f0$a;->c:Ldev/duo/workspaceprobe/b$f0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$f0;->a(Ldev/duo/workspaceprobe/b$f0;)[I

    move-result-object v0

    iget v1, p0, Ldev/duo/workspaceprobe/b$f0$a;->a:I

    aget v0, v0, v1

    iget v1, p0, Ldev/duo/workspaceprobe/b$f0$a;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->a(Landroid/telephony/SignalStrength;)I

    move-result p1

    .line 3
    :goto_0
    iget v0, p0, Ldev/duo/workspaceprobe/b$f0$a;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$f0$a;->c:Ldev/duo/workspaceprobe/b$f0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$f0;->b(Ldev/duo/workspaceprobe/b$f0;)Ldev/duo/workspaceprobe/b$h0;

    move-result-object v0

    iget v0, v0, Ldev/duo/workspaceprobe/b$h0;->e0:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$f0$a;->c:Ldev/duo/workspaceprobe/b$f0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$f0;->b(Ldev/duo/workspaceprobe/b$f0;)Ldev/duo/workspaceprobe/b$h0;

    move-result-object v0

    iget v0, v0, Ldev/duo/workspaceprobe/b$h0;->f0:I

    :goto_1
    if-ne p1, v0, :cond_3

    goto :goto_3

    .line 4
    :cond_3
    iget v0, p0, Ldev/duo/workspaceprobe/b$f0$a;->a:I

    if-nez v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$f0$a;->c:Ldev/duo/workspaceprobe/b$f0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$f0;->b(Ldev/duo/workspaceprobe/b$f0;)Ldev/duo/workspaceprobe/b$h0;

    move-result-object v0

    iput p1, v0, Ldev/duo/workspaceprobe/b$h0;->e0:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$f0$a;->c:Ldev/duo/workspaceprobe/b$f0;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$f0;->b(Ldev/duo/workspaceprobe/b$f0;)Ldev/duo/workspaceprobe/b$h0;

    move-result-object v0

    iput p1, v0, Ldev/duo/workspaceprobe/b$h0;->f0:I

    .line 5
    :goto_2
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$f0$a;->c:Ldev/duo/workspaceprobe/b$f0;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b$f0;->e:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->S(Ldev/duo/workspaceprobe/b;)V

    :cond_5
    :goto_3
    return-void
.end method
