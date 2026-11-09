.class Ldev/duo/hookprobe/AlbumWidgetProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldev/duo/hookprobe/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;)Ldev/duo/hookprobe/b$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$fx6jHKe6ROzfp6G_z_GDK94TyEo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/AlbumWidgetProvider$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public a(Ldev/duo/hookprobe/b$c;Ljava/lang/Exception;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget page not set (provider process)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ldev/duo/hookprobe/b$c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiDuoAlbum"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    const-string p1, "\u6ca1\u80fd\u81ea\u52a8\u8bbe\u4e3a\u7b2c 1 \u9875\uff0c\u8bf7\u6253\u5f00 MiDuo \u7684\u5c0f\u7ec4\u4ef6\u9875\u70b9\u300c\u8bbe\u4e3a\u7b2c 1 \u9875\u300d"

    invoke-virtual {p0, p1}, Ldev/duo/hookprobe/AlbumWidgetProvider$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$a;->a:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$a;->b:Landroid/content/Context;

    new-instance v2, Ldev/duo/hookprobe/AlbumWidgetProvider$a$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Ldev/duo/hookprobe/AlbumWidgetProvider$a$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
