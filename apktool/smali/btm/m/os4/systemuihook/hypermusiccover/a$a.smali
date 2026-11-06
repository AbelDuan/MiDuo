.class Lbtm/m/os4/systemuihook/hypermusiccover/a$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtm/m/os4/systemuihook/hypermusiccover/a;->a(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lbtm/m/os4/systemuihook/hypermusiccover/a;


# direct methods
.method public static synthetic $r8$lambda$UJH2svqnlH04_w6z8mK0dR0nZHw(Lbtm/m/os4/systemuihook/hypermusiccover/a$a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/a$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lbtm/m/os4/systemuihook/hypermusiccover/a;Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/a$a;->c:Lbtm/m/os4/systemuihook/hypermusiccover/a;

    iput-object p3, p0, Lbtm/m/os4/systemuihook/hypermusiccover/a$a;->a:Landroid/os/Handler;

    iput-object p4, p0, Lbtm/m/os4/systemuihook/hypermusiccover/a$a;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/a$a;->c:Lbtm/m/os4/systemuihook/hypermusiccover/a;

    invoke-static {v0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/a;->a(Lbtm/m/os4/systemuihook/hypermusiccover/a;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lbtm/m/os4/systemuihook/hypermusiccover/a$a;->a:Landroid/os/Handler;

    iget-object v0, p0, Lbtm/m/os4/systemuihook/hypermusiccover/a$a;->b:Landroid/content/Context;

    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/a$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/a$a$$ExternalSyntheticLambda0;-><init>(Lbtm/m/os4/systemuihook/hypermusiccover/a$a;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
