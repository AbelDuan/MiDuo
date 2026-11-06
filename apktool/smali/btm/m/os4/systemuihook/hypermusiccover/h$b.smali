.class Lbtm/m/os4/systemuihook/hypermusiccover/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/hypermusiccover/h;
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
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c()V

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e()V

    :cond_0
    return-void
.end method
