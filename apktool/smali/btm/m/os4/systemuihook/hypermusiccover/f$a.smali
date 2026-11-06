.class Lbtm/m/os4/systemuihook/hypermusiccover/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/hypermusiccover/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "[MCGate] the panel has been hidden for 6000ms with nothing moving it - restoring unconditionally. A panel at alpha 0 still takes touches, so leaving it there is a phone that looks dead."

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->d()V

    return-void
.end method
