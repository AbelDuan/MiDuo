.class Lbtm/m/os4/systemuihook/hypermusiccover/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtm/m/os4/systemuihook/hypermusiccover/h;->b(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/h$a;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/h$a;->a:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
