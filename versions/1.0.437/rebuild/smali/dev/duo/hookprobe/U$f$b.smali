.class final Ldev/duo/hookprobe/U$f$b;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/U$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/U$f;


# direct methods
.method private constructor <init>(Ldev/duo/hookprobe/U$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/U$f$b;->a:Ldev/duo/hookprobe/U$f;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/duo/hookprobe/U$f;Ldev/duo/hookprobe/U$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/U$f$b;-><init>(Ldev/duo/hookprobe/U$f;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/U$f$b;->a:Ldev/duo/hookprobe/U$f;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ldev/duo/hookprobe/U$f;->a(Landroid/telephony/SignalStrength;)I

    move-result p1

    :goto_0
    invoke-static {v0, p1}, Ldev/duo/hookprobe/U$f;->a(Ldev/duo/hookprobe/U$f;I)I

    .line 2
    iget-object p1, p0, Ldev/duo/hookprobe/U$f$b;->a:Ldev/duo/hookprobe/U$f;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
