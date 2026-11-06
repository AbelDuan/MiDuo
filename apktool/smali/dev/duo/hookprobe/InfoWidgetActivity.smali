.class public final Ldev/duo/hookprobe/InfoWidgetActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public static synthetic $r8$lambda$UZX72UrAn9bSlvtdJ7Q62OkxGAw(Ldev/duo/hookprobe/InfoWidgetActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d4xCIQwy2_-My31mPPp8IxgRLZk(Ldev/duo/hookprobe/InfoWidgetActivity;[Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity;->a([Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i6OWjOeOkq04MK0pabryfOVGRTE(Ldev/duo/hookprobe/InfoWidgetActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity;->c(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l42BvHeSdjNgOCrEfg9eshHaM0c(Ldev/duo/hookprobe/InfoWidgetActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oDwi-jaujUVdan3ONY9vMFeTCJ4(Ldev/duo/hookprobe/InfoWidgetActivity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/InfoWidgetActivity;->a(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2U2u4_s9jBXgoV8gYltFrZ3-yQ(Ldev/duo/hookprobe/InfoWidgetActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uPeMS0-Jf7m-vl4-iCrEJYP967w(Ldev/duo/hookprobe/InfoWidgetActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/InfoWidgetActivity;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$xVRZZSru2_ZFdd-8ZbuJDX7NwzE(Ldev/duo/hookprobe/InfoWidgetActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/InfoWidgetActivity;->a(ZI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/Bundle;

    .line 3
    :try_start_0
    const-string v1, "battery"

    invoke-static {p0, v1}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1}, Ldev/duo/hookprobe/A;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    invoke-static {p0}, Ldev/duo/hookprobe/A;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    const-string v1, "weather"

    invoke-static {p0, v1}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/hookprobe/A;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    new-instance v1, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/InfoWidgetActivity;[Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    const-string v1, "MiDuoWidgets"

    const-string v2, "preview interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 17
    sget-object v0, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda3;-><init>(Ldev/duo/hookprobe/InfoWidgetActivity;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity;->a(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic a(ZI)V
    .locals 3

    .line 18
    iget-boolean v0, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 20
    const-string p1, "\u672a\u80fd\u6253\u5f00\u684c\u9762\u5feb\u6377\u65b9\u5f0f\u6743\u9650"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 23
    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Ldev/duo/hookprobe/InfoWidgetProvider;->c:[Ljava/lang/Class;

    aget-object p2, v2, p2

    invoke-direct {v1, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, p2}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 24
    const-string p1, "\u5f53\u524d\u684c\u9762\u4e0d\u652f\u6301\u76f4\u63a5\u6dfb\u52a0"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic a([Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity;->b([Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 0

    int-to-float p1, p1

    .line 1
    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 4

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    sget v0, Ldev/duo/hookprobe/T;->c:I

    const/high16 v1, 0x41600000    # 14.0f

    const/16 v2, 0x190

    invoke-static {p0, v1, v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 6
    const-string v1, "\u6b63\u5728\u8bfb\u53d6\u7ec4\u4ef6\u6570\u636e\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    sget-object v0, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/InfoWidgetActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 57
    const-string p1, "android.permission.READ_CALENDAR"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x18c

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private b([Landroid/os/Bundle;)V
    .locals 16

    .line 9
    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    const-string v1, "\u8fd4\u56de\u5c0f\u7ec4\u4ef6"

    const/4 v2, 0x0

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v0, v1, v2, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v1

    .line 11
    new-instance v4, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda4;-><init>(Ldev/duo/hookprobe/InfoWidgetActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v4, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    const-string v1, "\u65e5\u5386"

    const-string v4, "\u5929\u6c14"

    const-string v5, "\u7535\u6c60"

    filled-new-array {v5, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move v5, v2

    :goto_0
    const/4 v6, 0x3

    const/16 v7, 0xa

    if-ge v5, v6, :cond_9

    if-ltz v4, :cond_0

    const/4 v6, 0x6

    if-ge v4, v6, :cond_0

    .line 16
    div-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_0

    goto/16 :goto_6

    .line 17
    :cond_0
    sget v6, Ldev/duo/hookprobe/T;->b:I

    const/high16 v8, 0x41900000    # 18.0f

    const/16 v9, 0x2bc

    invoke-static {v0, v8, v6, v9}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v6

    .line 18
    aget-object v8, v1, v5

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    const/16 v8, 0xc

    invoke-direct {v0, v8}, Ldev/duo/hookprobe/InfoWidgetActivity;->b(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-direct {v0, v9}, Ldev/duo/hookprobe/InfoWidgetActivity;->b(I)I

    move-result v9

    invoke-virtual {v6, v2, v8, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 20
    iget-object v8, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    invoke-static {v0}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 22
    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 23
    invoke-static {v0}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    move v9, v2

    :goto_1
    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v9, v10, :cond_7

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v9

    .line 26
    sget-object v12, Ldev/duo/hookprobe/InfoWidgetProvider;->d:[Ljava/lang/String;

    aget-object v12, v12, v10

    if-ne v9, v11, :cond_1

    move v13, v11

    goto :goto_2

    :cond_1
    move v13, v2

    :goto_2
    aget-object v14, p1, v5

    invoke-static {v12, v13, v14}, Ldev/duo/hookprobe/z;->a(Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 27
    iget-object v13, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 31
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 32
    sget-object v12, Ldev/duo/hookprobe/InfoWidgetProvider;->e:[Ljava/lang/String;

    aget-object v12, v12, v10

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v9, v11, :cond_2

    const/high16 v14, 0x43a90000    # 338.0f

    goto :goto_3

    :cond_2
    const/high16 v14, 0x431e0000    # 158.0f

    :goto_3
    const/4 v15, -0x2

    invoke-direct {v12, v2, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-ne v9, v11, :cond_3

    .line 34
    invoke-direct {v0, v7}, Ldev/duo/hookprobe/InfoWidgetActivity;->b(I)I

    move-result v14

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 35
    :cond_3
    invoke-virtual {v6, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v9, v11, :cond_4

    .line 36
    const-string v12, "\u6dfb\u52a0 4\u00d72"

    goto :goto_4

    :cond_4
    const-string v12, "\u6dfb\u52a0 2\u00d72"

    :goto_4
    invoke-static {v0, v12, v2, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v12

    .line 37
    new-instance v13, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda5;

    invoke-direct {v13, v0, v10}, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/InfoWidgetActivity;I)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x28

    invoke-direct {v0, v13}, Ldev/duo/hookprobe/InfoWidgetActivity;->b(I)I

    move-result v13

    if-ne v9, v11, :cond_5

    const/high16 v14, 0x43a90000    # 338.0f

    goto :goto_5

    :cond_5
    const/high16 v14, 0x431e0000    # 158.0f

    :goto_5
    invoke-direct {v10, v2, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-ne v9, v11, :cond_6

    .line 39
    invoke-direct {v0, v7}, Ldev/duo/hookprobe/InfoWidgetActivity;->b(I)I

    move-result v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 40
    :cond_6
    invoke-virtual {v8, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 42
    :cond_7
    iget-object v7, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    iget-object v6, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v7, v0, v9}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v5, v11, :cond_8

    .line 44
    const-string v6, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_8

    .line 45
    const-string v6, "\u5141\u8bb8\u8bfb\u53d6\u65e5\u5386"

    invoke-static {v0, v6, v11, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v6

    .line 46
    new-instance v7, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0}, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda6;-><init>(Ldev/duo/hookprobe/InfoWidgetActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v7, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-static {v8, v0, v9}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 50
    :cond_9
    const-string v1, "\u5237\u65b0"

    invoke-static {v0, v1, v2, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v1

    .line 51
    new-instance v3, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda7;-><init>(Ldev/duo/hookprobe/InfoWidgetActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v3, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v4, v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    sget v1, Ldev/duo/hookprobe/T;->c:I

    const/high16 v3, 0x41400000    # 12.0f

    const/16 v4, 0x190

    invoke-static {v0, v3, v1, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 54
    const-string v3, "\u5929\u6c14\u6cbf\u7528\u5c0f\u7c73\u5929\u6c14\u7684\u57ce\u5e02\uff1b\u672a\u8fde\u63a5\u8bbe\u5907\u663e\u793a\u7a7a\u7535\u91cf\u73af\u3002\u9884\u89c8\u4f7f\u7528\u5f53\u524d\u6570\u636e\u3002"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-direct {v0, v7}, Ldev/duo/hookprobe/InfoWidgetActivity;->b(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    iget-object v0, v0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(I)V
    .locals 2

    .line 2
    invoke-static {}, Ldev/duo/hookprobe/WidgetCenterActivity;->a()Z

    move-result v0

    .line 3
    new-instance v1, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Ldev/duo/hookprobe/InfoWidgetActivity$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/InfoWidgetActivity;ZI)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Ldev/duo/hookprobe/InfoWidgetActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Ldev/duo/hookprobe/T$d;

    invoke-direct {p1, p0}, Ldev/duo/hookprobe/T$d;-><init>(Landroid/app/Activity;)V

    .line 3
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1}, Ldev/duo/hookprobe/T$d;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Ldev/duo/hookprobe/T$d;->a(I)I

    move-result v1

    .line 6
    iget-object v2, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ldev/duo/hookprobe/T$d;->d()I

    move-result v3

    invoke-virtual {p1}, Ldev/duo/hookprobe/T$d;->b()I

    move-result v4

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    iget-object v1, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 8
    iget-object v1, p1, Ldev/duo/hookprobe/T$d;->b:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p1, Ldev/duo/hookprobe/T$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p1}, Ldev/duo/hookprobe/T$d;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 3
    iget-boolean p1, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->c:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ldev/duo/hookprobe/InfoWidgetActivity;->b()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->c:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x18c

    if-ne p1, p2, :cond_0

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Ldev/duo/hookprobe/InfoWidgetActivity;->b()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/hookprobe/InfoWidgetActivity;->c:Z

    invoke-direct {p0}, Ldev/duo/hookprobe/InfoWidgetActivity;->b()V

    return-void
.end method
