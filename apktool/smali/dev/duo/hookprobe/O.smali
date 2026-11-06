.class final Ldev/duo/hookprobe/O;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$0LzRiGPXIPmnA2mq4SAeVQDaagk(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->a(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9PrYgvjN7EdSw901igY0wf49Ouk(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZsIp83Sld2AISp9JFxCIGtO4fnM(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pMQYTFahNinb_Tr94m7-AljJiww(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/O;->d(Landroid/app/Activity;Landroid/view/View;)V

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

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 23
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

    .line 24
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 25
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 26
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 27
    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 25
    :catch_0
    move-exception p0

    .line 27
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 8

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/view/View;F)V

    .line 3
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    sget v1, Ldev/duo/hookprobe/T;->b:I

    const/high16 v2, 0x41800000    # 16.0f

    const/16 v3, 0x2bc

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 6
    const-string v2, "\u8d5e\u52a9\u4f5c\u8005"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    sget v1, Ldev/duo/hookprobe/T;->d:I

    const/high16 v2, 0x41500000    # 13.0f

    const/16 v3, 0x190

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 9
    const-string v2, "\u8d5e\u52a9\u540e\u8bf7\u8054\u7cfb\u4f5c\u8005\uff0c\u5907\u6ce8\u201cMiDuo\u201d\uff0c\u5373\u53ef\u83b7\u5f97\u6388\u6743\u7801\u3002"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    const/4 v2, 0x0

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 11
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, p0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-static {p0}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 13
    const-string v2, "\u5fae\u4fe1"

    const/4 v3, 0x0

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v2, v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 14
    new-instance v5, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    const-string v2, "\u652f\u4ed8\u5b9d"

    invoke-static {p0, v2, v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 17
    new-instance v5, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v5, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 19
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 20
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, p0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 75
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

    .line 76
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

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 28
    invoke-static {p0, p3}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 30
    const-string p1, "\u4e8c\u7ef4\u7801\u8bfb\u53d6\u5931\u8d25"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 33
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 35
    invoke-static {p0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 36
    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/view/View;F)V

    .line 37
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    .line 38
    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v4, v4, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 40
    sget v4, Ldev/duo/hookprobe/T;->b:I

    const/high16 v5, 0x41a00000    # 20.0f

    const/16 v6, 0x320

    invoke-static {p0, v5, v4, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v4

    .line 41
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 46
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, -0x1

    invoke-static {v6, v5}, Ldev/duo/hookprobe/T;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/high16 v5, 0x43700000    # 240.0f

    invoke-static {p0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 51
    const/high16 v5, 0x43b40000    # 360.0f

    invoke-static {p0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 52
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v6, p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    sget p1, Ldev/duo/hookprobe/T;->d:I

    const/16 v6, 0x190

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8, p1, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p1

    .line 54
    const/16 v6, 0x11

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4fdd\u5b58\u5230\u76f8\u518c\u540e\uff0c\u7528"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, "\u201c\u626b\u4e00\u626b\u201d\u4ece\u76f8\u518c\u9009\u62e9\u8fd9\u5f20\u56fe"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-static {p2, p0, v8}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-static {p0}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 58
    const-string p2, "\u5173\u95ed"

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {p0, p2, v0, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object p2

    .line 59
    new-instance v8, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v0, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const-string p2, "\u4fdd\u5b58\u5230\u76f8\u518c"

    invoke-static {p0, p2, v2, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object p2

    .line 62
    new-instance v2, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p3, p4}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda5;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p4

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p3, v0, p4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 65
    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p0, p4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p4

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-static {p2, p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 70
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 72
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p0, p3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p1, p0, v7}, Landroid/view/Window;->setLayout(II)V

    .line 73
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4

    .line 77
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string p2, "mime_type"

    const-string v1, "image/png"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string p2, "relative_path"

    const-string v1, "Pictures/MiDuo"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 83
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 84
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 85
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 86
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

    .line 88
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 91
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return v0
.end method

.method static b(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 8

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/view/View;F)V

    .line 4
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    sget v1, Ldev/duo/hookprobe/T;->b:I

    const/high16 v2, 0x41800000    # 16.0f

    const/16 v3, 0x2bc

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 7
    const-string v2, "\u8054\u7cfb\u4f5c\u8005"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    sget v1, Ldev/duo/hookprobe/T;->d:I

    const/high16 v2, 0x41500000    # 13.0f

    const/16 v3, 0x190

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 10
    const-string v2, "\u8d5e\u52a9\u540e\u9886\u53d6\u6388\u6743\u7801\u3001\u53cd\u9988\u95ee\u9898\u6216\u7248\u672c\u9002\u914d\uff0c\u90fd\u53ef\u4ee5\u52a0\u4f5c\u8005\u3002"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    const/4 v2, 0x0

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 12
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, p0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-static {p0}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 14
    const-string v2, "\u5fae\u4fe1"

    const/4 v3, 0x0

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v2, v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 15
    new-instance v5, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    const-string v2, "QQ"

    invoke-static {p0, v2, v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 18
    new-instance v5, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Ldev/duo/hookprobe/O$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v5, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 20
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 21
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, p0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

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

.method private static synthetic c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "contact-wechat.png"

    const-string v0, "MiDuo-\u4f5c\u8005-\u5fae\u4fe1.png"

    const-string v1, "\u6dfb\u52a0\u5fae\u4fe1"

    const-string v2, "\u5fae\u4fe1"

    invoke-static {p0, v1, v2, p1, v0}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic d(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "contact-qq.png"

    const-string v0, "MiDuo-\u4f5c\u8005-QQ.png"

    const-string v1, "\u6dfb\u52a0 QQ"

    const-string v2, "QQ"

    invoke-static {p0, v1, v2, p1, v0}, Ldev/duo/hookprobe/O;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
