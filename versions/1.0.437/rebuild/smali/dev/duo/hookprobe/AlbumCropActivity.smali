.class public final Ldev/duo/hookprobe/AlbumCropActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "MiDuoAlbum"

.field private static final g:J = 0xf42400L

.field private static final h:Ljava/lang/String; = "zoom"

.field private static final i:Ljava/lang/String; = "centerX"

.field private static final j:Ljava/lang/String; = "centerY"

.field private static final k:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Ldev/duo/hookprobe/U$d;

.field private b:Landroid/os/Bundle;

.field private c:Landroid/widget/LinearLayout;

.field private d:Ldev/duo/hookprobe/a;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public static synthetic $r8$lambda$8K0kgmrp9PbIA95f6BVCwQh5ytg(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/AlbumCropActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8OgZOsPwLE6Fi9zvUK_s2_UCQes(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/AlbumCropActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LOMJKzH0myKjvTKRByHg365t0wg(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/AlbumCropActivity;->b(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YGHiLIjKxJ6Z1Ad32YJvvRE2PxI(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/AlbumCropActivity;->b(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$e-zTvmsEj79OsRLGRB0y9FqjOwo(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/content/Context;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/AlbumCropActivity;->a(Landroid/content/Context;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wYUFRmpaE-GeQOcFRNU9sKn0h2o(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/AlbumCropActivity;->a(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/AlbumCropActivity;->k:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    new-instance v0, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    const-string v0, "MiDuoAlbum"

    const-string v1, "decode failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 19
    invoke-static {p0, v0}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    const-string v0, "\u8fd9\u4e2a\u7ec4\u4ef6\u5df2\u7ecf\u5220\u9664\u4e86"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->d:Ldev/duo/hookprobe/a;

    invoke-virtual {v1}, Ldev/duo/hookprobe/a;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 26
    sget-object v3, Ldev/duo/hookprobe/AlbumCropActivity;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v2, v0, v1}, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/content/Context;ILandroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Landroid/content/Context;ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 27
    invoke-static {p1, p2}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Ldev/duo/hookprobe/c;->a(Landroid/content/Context;ILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    new-instance p3, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1, p2, v0}, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda4;-><init>(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/content/Context;IZ)V

    invoke-virtual {p0, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;IZ)V
    .locals 0

    if-nez p3, :cond_0

    .line 30
    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 34
    :cond_0
    invoke-static {p1, p2}, Ldev/duo/hookprobe/AlbumWidgetProvider;->b(Landroid/content/Context;I)V

    .line 35
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/AlbumCropActivity;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic a(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 6

    .line 11
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    :goto_0
    int-to-long v2, p2

    mul-long/2addr v2, v2

    .line 14
    div-long v2, v0, v2

    const-wide/32 v4, 0xf42400

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 17
    invoke-direct {p0}, Ldev/duo/hookprobe/AlbumCropActivity;->a()V

    return-void
.end method

.method private synthetic b(Landroid/content/Context;IZ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/AlbumCropActivity;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 8
    const-string p1, "\u8fd9\u5f20\u7167\u7247\u6253\u4e0d\u5f00"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 12
    :cond_2
    iput-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->e:Landroid/graphics/Bitmap;

    .line 13
    new-instance p1, Ldev/duo/hookprobe/a;

    iget-object v1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->e:Landroid/graphics/Bitmap;

    invoke-direct {p1, p0, v1}, Ldev/duo/hookprobe/a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->d:Ldev/duo/hookprobe/a;

    .line 14
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->b:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string v1, "zoom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->d:Ldev/duo/hookprobe/a;

    iget-object v2, p0, Ldev/duo/hookprobe/AlbumCropActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Ldev/duo/hookprobe/AlbumCropActivity;->b:Landroid/os/Bundle;

    const-string v3, "centerX"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Ldev/duo/hookprobe/AlbumCropActivity;->b:Landroid/os/Bundle;

    const-string v4, "centerY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ldev/duo/hookprobe/a;->a(FFF)V

    .line 17
    :cond_3
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->d:Ldev/duo/hookprobe/a;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v2, p0, v0}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    const-string p1, "\u5b8c\u6210"

    const/high16 v0, 0x42300000    # 44.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object p1

    .line 19
    new-instance v0, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/AlbumCropActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {p0, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v0, p0, v2}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 24
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 25
    iget-object v1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic b(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/AlbumCropActivity;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance v0, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iput-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->b:Landroid/os/Bundle;

    .line 3
    new-instance p1, Ldev/duo/hookprobe/U$d;

    invoke-direct {p1, p0}, Ldev/duo/hookprobe/U$d;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->a:Ldev/duo/hookprobe/U$d;

    .line 4
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->c:Landroid/widget/LinearLayout;

    .line 5
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->a:Ldev/duo/hookprobe/U$d;

    invoke-virtual {p1}, Ldev/duo/hookprobe/U$d;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ldev/duo/hookprobe/U$d;->a(I)I

    move-result p1

    .line 6
    iget-object v0, p0, Ldev/duo/hookprobe/AlbumCropActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->a:Ldev/duo/hookprobe/U$d;

    invoke-virtual {v1}, Ldev/duo/hookprobe/U$d;->d()I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Ldev/duo/hookprobe/AlbumCropActivity;->a:Ldev/duo/hookprobe/U$d;

    const-string v1, "\u88c1\u5207\u7167\u7247"

    const-string v2, "\u79fb\u52a8\u548c\u7f29\u653e\uff0c\u6846\u91cc\u5c31\u662f\u684c\u9762\u4e0a\u7684\u6837\u5b50"

    invoke-static {p0, v0, v1, v2}, Ldev/duo/hookprobe/WidgetCenterActivity;->a(Landroid/app/Activity;Ldev/duo/hookprobe/U$d;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->a:Ldev/duo/hookprobe/U$d;

    iget-object p1, p1, Ldev/duo/hookprobe/U$d;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Ldev/duo/hookprobe/AlbumCropActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->a:Ldev/duo/hookprobe/U$d;

    iget-object p1, p1, Ldev/duo/hookprobe/U$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumCropActivity;->a:Ldev/duo/hookprobe/U$d;

    invoke-virtual {p1}, Ldev/duo/hookprobe/U$d;->a()V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/AlbumCropActivity$$ExternalSyntheticLambda3;-><init>(Ldev/duo/hookprobe/AlbumCropActivity;Landroid/net/Uri;)V

    const-string p1, "album-crop"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/AlbumCropActivity;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/AlbumCropActivity;->d:Ldev/duo/hookprobe/a;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ldev/duo/hookprobe/a;->e()F

    move-result v0

    const-string v1, "zoom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/AlbumCropActivity;->d:Ldev/duo/hookprobe/a;

    invoke-virtual {v0}, Ldev/duo/hookprobe/a;->b()F

    move-result v0

    const-string v1, "centerX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 5
    iget-object v0, p0, Ldev/duo/hookprobe/AlbumCropActivity;->d:Ldev/duo/hookprobe/a;

    invoke-virtual {v0}, Ldev/duo/hookprobe/a;->c()F

    move-result v0

    const-string v1, "centerY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method
