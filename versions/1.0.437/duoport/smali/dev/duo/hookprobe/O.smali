.class final Ldev/duo/hookprobe/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0LzRiGPXIPmnA2mq4SAeVQDaagk(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->a(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7D0uBzavyIb7v-Pix5nb0CqFG2E(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->b(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9PrYgvjN7EdSw901igY0wf49Ouk(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fjam60v4sXY6hWIRinW6uCkHQqI(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XDo09qFbuaOitMMLDigz2gUYlO0(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/O;->a(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZsIp83Sld2AISp9JFxCIGtO4fnM(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a2PK1ad0tD8wibr83SGf7bzivuY(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->c(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bbdGm6lCAfIyFnCk-ZZ4J6DaVsQ(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/O;->b(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pnviurdT9GGP_K-BJx04EUf6Tgc(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->b(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4bqw9MH_Laoxlayp5mVSxttuag(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "xy3227604139"

    const-string v1, "Wztf050402"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/O;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sponsor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 45
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 46
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    :catch_0
    move-exception p0

    .line 47
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 8

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/view/View;F)V

    .line 3
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    sget v1, Ldev/duo/hookprobe/U;->b:I

    const/high16 v2, 0x41800000    # 16.0f

    const/16 v3, 0x2bc

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 6
    const-string v2, "\u8d5e\u52a9\u4f5c\u8005"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    sget v1, Ldev/duo/hookprobe/U;->d:I

    const/high16 v2, 0x41500000    # 13.0f

    const/16 v3, 0x190

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 9
    const-string v2, "\u8d5e\u52a9\u540e\u8bf7\u8054\u7cfb\u4f5c\u8005\uff0c\u5907\u6ce8\u201cMiDuo\u201d\uff0c\u5373\u53ef\u83b7\u5f97\u6388\u6743\u7801\u3002"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    const/4 v2, 0x0

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 11
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, p0, v3}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-static {p0}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 13
    const-string v2, "\u5fae\u4fe1"

    const/4 v3, 0x0

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v2, v3, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 14
    new-instance v5, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    const-string v2, "\u652f\u4ed8\u5b9d"

    invoke-static {p0, v2, v3, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 17
    new-instance v5, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v5, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 19
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 20
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, p0, v3}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 3

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 29
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 30
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p1, v1}, Ldev/duo/hookprobe/U;->a(Landroid/view/View;F)V

    .line 31
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v1

    .line 32
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 34
    sget v0, Ldev/duo/hookprobe/U;->b:I

    const/high16 v1, 0x41a00000    # 20.0f

    const/16 v2, 0x320

    invoke-static {p0, v1, v0, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p0

    .line 35
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private static a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 37
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 39
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 41
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, -0x2

    invoke-virtual {p2, p0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5df2\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    :goto_0
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 22
    const-string p1, "wechat.png"

    const-string v0, "MiDuo-\u8d5e\u52a9-\u5fae\u4fe1.png"

    const-string v1, "\u5fae\u4fe1\u8d5e\u52a9"

    const-string v2, "\u5fae\u4fe1"

    invoke-static {p0, v1, v2, p1, v0}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 25
    const-class p2, Landroid/content/ClipboardManager;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    .line 26
    const-string v0, "MiDuo \u6559\u5b66\u5fae\u4fe1"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 27
    const-string p1, "\u5df2\u590d\u5236\u5fae\u4fe1\u53f7"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 48
    invoke-static {p0, p3}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 50
    const-string p1, "\u4e8c\u7ef4\u7801\u8bfb\u53d6\u5931\u8d25"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 53
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {p0, v1, p1}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 55
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 58
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, -0x1

    invoke-static {v6, v5}, Ldev/duo/hookprobe/U;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    const/high16 v5, 0x43700000    # 240.0f

    invoke-static {p0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 63
    const/high16 v5, 0x43b40000    # 360.0f

    invoke-static {p0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 64
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5, p0, v4}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    sget v2, Ldev/duo/hookprobe/U;->d:I

    const/16 v5, 0x190

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6, v2, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v2

    .line 66
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4fdd\u5b58\u5230\u76f8\u518c\u540e\uff0c\u7528"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, "\u201c\u626b\u4e00\u626b\u201d\u4ece\u76f8\u518c\u9009\u62e9\u8fd9\u5f20\u56fe"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-static {p2, p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-static {p0}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 70
    const-string v2, "\u5173\u95ed"

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v2, v0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 71
    new-instance v6, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda6;

    invoke-direct {v6, v1}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const-string v2, "\u4fdd\u5b58\u5230\u76f8\u518c"

    invoke-static {p0, v2, v3, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 74
    new-instance v3, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p3, p4}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda7;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p3, v0, p4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 77
    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p0, p4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p4

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 78
    invoke-virtual {p2, v2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-static {p3, p0, v4}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-static {p0, v1, p1}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1}, Ldev/duo/hookprobe/O;->e(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string p2, "mime_type"

    const-string v1, "image/png"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string p2, "relative_path"

    const-string v1, "Pictures/MiDuo"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 90
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 91
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 92
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    move-exception p1

    .line 97
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return v0
.end method

.method static b(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 5

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/view/View;F)V

    .line 4
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    sget v1, Ldev/duo/hookprobe/U;->b:I

    const/high16 v2, 0x41800000    # 16.0f

    const/16 v3, 0x2bc

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 7
    const-string v2, "\u8054\u7cfb\u4f5c\u8005"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    sget v1, Ldev/duo/hookprobe/U;->d:I

    const/high16 v3, 0x41500000    # 13.0f

    const/16 v4, 0x190

    invoke-static {p0, v3, v1, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 10
    const-string v3, "\u8d5e\u52a9\u540e\u9886\u53d6\u6388\u6743\u7801\u3001\u53cd\u9988\u95ee\u9898\u6216\u7248\u672c\u9002\u914d\uff0c\u90fd\u53ef\u4ee5\u52a0\u4f5c\u8005\u3002"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    const/4 v3, 0x0

    const v4, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 12
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, p0, v4}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    const/4 v1, 0x0

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v1

    .line 14
    new-instance v2, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, p0, v3}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static synthetic b(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "alipay.png"

    const-string v0, "MiDuo-\u8d5e\u52a9-\u652f\u4ed8\u5b9d.png"

    const-string v1, "\u652f\u4ed8\u5b9d\u8d5e\u52a9"

    const-string v2, "\u652f\u4ed8\u5b9d"

    invoke-static {p0, v1, v2, p1, v0}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    const-string p0, "contact-wechat.png"

    const-string p2, "MiDuo-\u4f5c\u8005-\u5fae\u4fe1.png"

    const-string v0, "\u6dfb\u52a0\u5fae\u4fe1"

    const-string v1, "\u5fae\u4fe1"

    invoke-static {p1, v0, v1, p0, p2}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 9

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    const-string v1, "\u8054\u7cfb\u4f5c\u8005"

    invoke-static {p0, v0, v1}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 4
    sget v2, Ldev/duo/hookprobe/U;->c:I

    const/high16 v3, 0x41600000    # 14.0f

    const/16 v4, 0x190

    invoke-static {p0, v3, v2, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v2

    .line 5
    const/4 v3, 0x0

    const v4, 0x3faccccd    # 1.35f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6
    const-string v3, "\u4f5c\u8005\u6b63\u5fd9\u7740\u5f00\u53d1\uff0c\u6682\u4e0d\u63d0\u4f9b\u6559\u5b66\u670d\u52a1\u3002\n\u8bf7\u5148\u8bd5\u7528\uff0c\u51b3\u5b9a\u8d5e\u52a9\u540e\u518d\u8054\u7cfb\u4f5c\u8005\u9886\u53d6\u6388\u6743\u7801\u3002\n\u65b0\u624b\u9700\u8981\u6709\u4eba\u6559\u4f60\u88c5\u7684\uff0c\u53ef\u4ee5\u70b9\u4e0b\u65b9\u201c\u6559\u5b66\u670d\u52a1\u201d\u3002"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, p0, v4}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-static {p0}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 9
    const-string v3, "\u6559\u5b66\u670d\u52a1"

    const/4 v4, 0x0

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v3, v4, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v3

    .line 10
    new-instance v6, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    const-string v3, "\u7ee7\u7eed\u8054\u7cfb\u4f5c\u8005"

    const/4 v6, 0x1

    invoke-static {p0, v3, v6, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v3

    .line 13
    new-instance v6, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 18
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {p0, v7}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 19
    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v3, p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    const-string v2, "\u5173\u95ed"

    invoke-static {p0, v2, v4, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 22
    new-instance v3, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3, p0, v7}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-static {p0, v0, v1}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private static synthetic c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/O;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic c(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static d(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "sponsor"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    const/4 v0, 0x0

    const-string v1, "teacher"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v2, Ldev/duo/hookprobe/O;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v2, v0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 15

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/O;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3
    const-string v2, "\u6559\u5b66\u670d\u52a1\uff0810 \u5143\uff09"

    invoke-static {p0, v1, v2}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 4
    sget v3, Ldev/duo/hookprobe/U;->c:I

    const/high16 v4, 0x41600000    # 14.0f

    const/16 v5, 0x190

    invoke-static {p0, v4, v3, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 5
    const/4 v4, 0x0

    const v6, 0x3faccccd    # 1.35f

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6
    const-string v4, "\u4e00\u5bf9\u4e00\u6559\u4f60\u5b89\u88c5\u548c\u8bbe\u7f6e MiDuo\uff0c\u6536\u8d39 10 \u5143\u3002"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v4, p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    sget v3, Ldev/duo/hookprobe/U;->b:I

    const/high16 v4, 0x41a00000    # 20.0f

    const/16 v7, 0x2bc

    invoke-static {p0, v4, v3, v7}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 9
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5fae\u4fe1\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 12
    sget v8, Ldev/duo/hookprobe/U;->g:I

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {p0, v9}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8, v10}, Ldev/duo/hookprobe/U;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-static {p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v3, v8, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 14
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-static {v8, p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-static {p0}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 16
    const-string v8, "\u5173\u95ed"

    const/4 v10, 0x0

    const/high16 v11, 0x42300000    # 44.0f

    invoke-static {p0, v8, v10, v11}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v8

    .line 17
    new-instance v12, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda8;

    invoke-direct {v12, v1}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    const-string v8, "\u590d\u5236\u5fae\u4fe1\u53f7"

    invoke-static {p0, v8, v7, v11}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v7

    .line 20
    new-instance v8, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0, v0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v8

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v0, v10, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 26
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p0, v8}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 27
    invoke-virtual {v3, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-static {v0, p0, v9}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    sget v0, Ldev/duo/hookprobe/U;->d:I

    invoke-static {p0, v6, v0, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 31
    const-string v3, "\u590d\u5236\u540e\u6253\u5f00\u5fae\u4fe1\uff0c\u5728\u201c\u6dfb\u52a0\u670b\u53cb\u201d\u91cc\u7c98\u8d34\u641c\u7d22\uff0c\u5907\u6ce8\u201cMiDuo \u6559\u5b66\u201d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-static {v3, p0, v6}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-static {p0, v1, v2}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/widget/LinearLayout;)V

    return-void
.end method
