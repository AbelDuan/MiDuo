.class public final Ldev/duo/hookprobe/IosNcActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Landroid/content/SharedPreferences;

.field private c:Z

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$3-3MvG98OI4QXzegkwqXEzyoc0g(Ldev/duo/hookprobe/IosNcActivity;[Ldev/duo/hookprobe/T$e;Ljava/util/function/IntConsumer;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/IosNcActivity;->a([Ldev/duo/hookprobe/T$e;Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Av9DmwAwtIfm7YmI-wwgaTHhsPM(Ldev/duo/hookprobe/IosNcActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/IosNcActivity;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$MHZKog7kdVAXW_UKgwkFfEcag24(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/IosNcActivity;->a(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PC-dONKttDJMejKxSY45IbIiAsQ(Ldev/duo/hookprobe/IosNcActivity;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/IosNcActivity;->a(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RhnCDqU5H9MFjaJnRWZT_ZK9LBs(Ldev/duo/hookprobe/IosNcActivity;Landroid/content/SharedPreferences;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/IosNcActivity;->a(Landroid/content/SharedPreferences;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iHtHOBRbbx7LA8FdcP-jd0XhqV0(Ldev/duo/hookprobe/IosNcActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/IosNcActivity;->a(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pKJFcUv2cM33io9Vo2tJNogYtVk(Ldev/duo/hookprobe/IosNcActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/IosNcActivity;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wrcQyvX7XXQVAELxwWBLpqUEvbE(Ldev/duo/hookprobe/IosNcActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/IosNcActivity;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$zIECbjZ0XvvuN_i_ta6wykplbik(Ljava/lang/String;ZLandroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/IosNcActivity;->a(Ljava/lang/String;ZLandroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/hookprobe/IosNcActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    const-string v1, "duo_top"

    invoke-virtual {v0, v1}, Lio/github/libxposed/service/XposedService;->getRemotePreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Ldev/duo/hookprobe/IosNcActivity;->a:Landroid/os/Handler;

    new-instance v2, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda7;-><init>(Ldev/duo/hookprobe/IosNcActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    .line 5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "ios_notification_wallpaper"

    invoke-direct {p0, v0, p1}, Ldev/duo/hookprobe/IosNcActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic a(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/IosNcActivity;->b(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private synthetic a(Landroid/content/SharedPreferences;Ljava/util/function/Consumer;)V
    .locals 0

    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 46
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 47
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/duo/hookprobe/IosNcActivity;->a:Landroid/os/Handler;

    new-instance p2, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda6;-><init>(Ldev/duo/hookprobe/IosNcActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 42
    new-instance v0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/IosNcActivity;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;ILandroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 41
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 25
    iget-boolean p2, p0, Ldev/duo/hookprobe/IosNcActivity;->c:Z

    if-nez p2, :cond_0

    new-instance p2, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, p3}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p2}, Ldev/duo/hookprobe/IosNcActivity;->a(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 6
    invoke-static {p0}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 7
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/view/View;F)V

    .line 8
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 10
    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 11
    sget v1, Ldev/duo/hookprobe/T;->b:I

    const/high16 v2, 0x41700000    # 15.0f

    const/16 v4, 0x258

    invoke-static {p0, v2, v1, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {}, Ldev/duo/hookprobe/T;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance p1, Landroid/widget/Switch;

    invoke-direct {p1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {p1}, Ldev/duo/hookprobe/T;->a(Landroid/widget/Switch;)V

    .line 16
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldev/duo/hookprobe/IosNcActivity;->c:Z

    .line 17
    iget-object v1, p0, Ldev/duo/hookprobe/IosNcActivity;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 18
    iput-boolean v3, p0, Ldev/duo/hookprobe/IosNcActivity;->c:Z

    .line 19
    new-instance p3, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p2}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda8;-><init>(Ldev/duo/hookprobe/IosNcActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p2, p0, p3}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;ZLandroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 24
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;ILjava/util/function/IntConsumer;)V
    .locals 4

    .line 26
    sget v0, Ldev/duo/hookprobe/T;->d:I

    const/high16 v1, 0x41500000    # 13.0f

    const/16 v2, 0x1f4

    invoke-static {p0, v1, v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p0, p1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 29
    iget-object p1, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    const/4 p1, 0x1

    new-array v0, p1, [Ldev/duo/hookprobe/T$e;

    .line 31
    new-instance v1, Ldev/duo/hookprobe/T$e;

    new-instance v2, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p4}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/IosNcActivity;[Ldev/duo/hookprobe/T$e;Ljava/util/function/IntConsumer;)V

    const/4 p4, 0x0

    invoke-direct {v1, p0, p2, p4, v2}, Ldev/duo/hookprobe/T$e;-><init>(Landroid/content/Context;[Ljava/lang/String;[ILjava/util/function/IntConsumer;)V

    aput-object v1, v0, v3

    .line 35
    iput-boolean p1, p0, Ldev/duo/hookprobe/IosNcActivity;->c:Z

    .line 36
    invoke-virtual {v1, p3}, Ldev/duo/hookprobe/T$e;->a(I)V

    .line 37
    iput-boolean v3, p0, Ldev/duo/hookprobe/IosNcActivity;->c:Z

    .line 38
    iget-object p1, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    aget-object p2, v0, v3

    iget-object p2, p2, Ldev/duo/hookprobe/T$e;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p3, p0, p4}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/SharedPreferences$Editor;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Ldev/duo/hookprobe/IosNcActivity;->b:Landroid/content/SharedPreferences;

    .line 44
    sget-object v1, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/IosNcActivity;Landroid/content/SharedPreferences;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a([Ldev/duo/hookprobe/T$e;Ljava/util/function/IntConsumer;I)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1, p3}, Ldev/duo/hookprobe/T$e;->a(I)V

    .line 40
    iget-boolean p1, p0, Ldev/duo/hookprobe/IosNcActivity;->c:Z

    if-nez p1, :cond_0

    invoke-interface {p2, p3}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 22
    const-string v0, "\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u91cd\u5f00\u672c\u9875\u518d\u8bd5"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 4

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/IosNcActivity;->b:Landroid/content/SharedPreferences;

    .line 2
    iget-object p1, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    sget p1, Ldev/duo/hookprobe/T;->b:I

    const/high16 v0, 0x41e00000    # 28.0f

    const/16 v1, 0x320

    invoke-static {p0, v0, p1, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p1

    .line 4
    const-string v0, "iOS \u98ce\u683c\u901a\u77e5\u4e2d\u5fc3"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Ldev/duo/hookprobe/IosNcActivity;->b:Landroid/content/SharedPreferences;

    const/16 v1, 0x190

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 7
    sget p1, Ldev/duo/hookprobe/T;->d:I

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0, p1, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p1

    .line 8
    const-string v0, "\u6ca1\u6709\u8fde\u4e0a LSPosed\u3002\u5148\u5728\u7ba1\u7406\u5668\u91cc\u542f\u7528 MiDuo\uff0c\u518d\u6253\u5f00\u8fd9\u4e00\u9875\u3002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 10
    iget-object v0, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 13
    :cond_0
    sget p1, Ldev/duo/hookprobe/T;->d:I

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {p0, v3, p1, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p1

    .line 14
    const-string v1, "\u4e0b\u62c9\u65f6\u5c55\u793a\u5706\u89d2\u58c1\u7eb8\u9762\u677f\u3002\u6539\u5b8c\u540e\u4e0b\u4e00\u6b21\u62c9\u5f00\u5c31\u751f\u6548\u3002\u63a7\u5236\u4e2d\u5fc3\u4ecd\u662f\u5c0f\u7c73\u539f\u6765\u7684\u3002"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 16
    iget-object v1, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    const-string p1, "ios_notification_center"

    invoke-direct {p0, v0, p1, v2}, Ldev/duo/hookprobe/IosNcActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    const-string p1, "\u9501\u5c4f\u58c1\u7eb8"

    const-string v0, "\u4e0d\u663e\u793a\u58c1\u7eb8"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Ldev/duo/hookprobe/IosNcActivity;->b:Landroid/content/SharedPreferences;

    const-string v1, "ios_notification_wallpaper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    new-instance v0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/IosNcActivity;)V

    .line 21
    const-string v1, "\u58c1\u7eb8\u6765\u6e90"

    invoke-direct {p0, v1, p1, v2, v0}, Ldev/duo/hookprobe/IosNcActivity;->a(Ljava/lang/String;[Ljava/lang/String;ILjava/util/function/IntConsumer;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    .line 4
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {p0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    sget v0, Ldev/duo/hookprobe/T;->d:I

    const/high16 v1, 0x41600000    # 14.0f

    const/16 v2, 0x190

    invoke-static {p0, v1, v0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/IosNcActivity;->e:Landroid/widget/TextView;

    .line 6
    const-string v1, "\u6b63\u5728\u8fde\u63a5 LSPosed\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ldev/duo/hookprobe/IosNcActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Ldev/duo/hookprobe/IosNcActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 10
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/IosNcActivity$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/IosNcActivity;)V

    const-string v1, "IosNcLoad"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
