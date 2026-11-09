.class Ldev/duo/fold/Engine$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
.method public static synthetic $r8$lambda$Rzr1OynXv-0WzD-pvF-IizfWWvc(Ldev/duo/fold/Engine$c;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/fold/Engine$c;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$zu5Tir7eP94JwgwsDE7Oy39o3SI()V
    .locals 0

    invoke-static {}, Ldev/duo/fold/Engine$c;->b()V

    return-void
.end method

.method constructor <init>(Ldev/duo/fold/Engine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/fold/Engine$c;->a:Ldev/duo/fold/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldev/duo/fold/Engine$c;->a:Ldev/duo/fold/Engine;

    invoke-static {v0}, Ldev/duo/fold/Engine;->n(Ldev/duo/fold/Engine;)Ldev/duo/fold/Engine$f;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/fold/Engine$c;->a:Ldev/duo/fold/Engine;

    invoke-static {v0}, Ldev/duo/fold/Engine;->i(Ldev/duo/fold/Engine;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "local:4639175402683733248"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Ldev/duo/fold/Engine;->c(Ldev/duo/fold/Engine;Z)Z

    iget-object v0, p0, Ldev/duo/fold/Engine$c;->a:Ldev/duo/fold/Engine;

    const-string v1, "\u663e\u793a\u53d8\u5316"

    invoke-static {v0, v1}, Ldev/duo/fold/Engine;->b(Ldev/duo/fold/Engine;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldev/duo/fold/Engine$c;->a:Ldev/duo/fold/Engine;

    invoke-static {v0}, Ldev/duo/fold/Engine;->j(Ldev/duo/fold/Engine;)V

    return-void
.end method

.method private static synthetic b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u9ed8\u8ba4\u5c4f\u88ab\u79fb\u9664"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ldev/duo/fold/Engine$c;->a:Ldev/duo/fold/Engine;

    new-instance v0, Ldev/duo/fold/Engine$c$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/duo/fold/Engine$c$$ExternalSyntheticLambda0;-><init>(Ldev/duo/fold/Engine$c;)V

    invoke-static {p1, v0}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;Ldev/duo/fold/Engine$e;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ldev/duo/fold/Engine$c;->a:Ldev/duo/fold/Engine;

    new-instance v0, Ldev/duo/fold/Engine$c$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ldev/duo/fold/Engine$c$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;Ldev/duo/fold/Engine$e;)V

    :cond_0
    return-void
.end method
