.class public Ldev/duo/port/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# static fields
.field private static final KEYS:[Ljava/lang/String;

.field private static final TITLES:[Ljava/lang/String;

.field private static final DESCS:[Ljava/lang/String;

.field private static final DEFAULTS:[Z


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_global/master"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "_global/outerHideTop"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "_global/searchButton"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "_global/notificationIcons"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "_global/standbyClock"

    aput-object v7, v1, v6

    sput-object v1, Ldev/duo/port/SettingsActivity;->KEYS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v7, "Duo \u5e03\u5c40\u603b\u5f00\u5173"

    aput-object v7, v1, v2

    const-string v7, "\u9690\u85cf\u684c\u9762\u72b6\u6001\u680f"

    aput-object v7, v1, v3

    const-string v7, "\u663e\u793a\u641c\u7d22\u6309\u94ae"

    aput-object v7, v1, v4

    const-string v7, "\u663e\u793a\u901a\u77e5\u56fe\u6807"

    aput-object v7, v1, v5

    const-string v7, "\u9501\u5c4f Duo \u65f6\u949f"

    aput-object v7, v1, v6

    sput-object v1, Ldev/duo/port/SettingsActivity;->TITLES:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v7, "\u5173\u95ed\u540e\u5b8c\u5168\u6062\u590d\u539f\u751f\u684c\u9762"

    aput-object v7, v1, v2

    const-string v7, "\u5185\u5916\u5c4f\u684c\u9762\u9876\u90e8\u4e0d\u663e\u793a\u7cfb\u7edf\u72b6\u6001\u680f"

    aput-object v7, v1, v3

    const-string v7, "\u4fa7\u8fb9\u680f\u4e0a\u65b9\u663e\u793a\u641c\u7d22\u5165\u53e3"

    aput-object v7, v1, v4

    const-string v7, "\u4fa7\u8fb9\u680f\u4e0b\u65b9\u663e\u793a\u901a\u77e5\u56fe\u6807"

    aput-object v7, v1, v5

    const-string v7, "\u9501\u5c4f\u4f7f\u7528 Duo \u5e03\u5c40\u65f6\u949f"

    aput-object v7, v1, v6

    sput-object v1, Ldev/duo/port/SettingsActivity;->DESCS:[Ljava/lang/String;

    new-array v1, v0, [Z

    fill-array-data v1, :array_defaults

    sput-object v1, Ldev/duo/port/SettingsActivity;->DEFAULTS:[Z

    return-void

    :array_defaults
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Ldev/duo/port/SettingsActivity;->a()V

    invoke-direct {p0}, Ldev/duo/port/SettingsActivity;->b()V

    return-void
.end method

.method private a()V
    .locals 10

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldev/duo/port/SettingsActivity;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x38

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const-string v2, "DuoPort"

    const/high16 v3, 0x41e00000    # 28.0f

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Ldev/duo/port/SettingsActivity;->a(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "Duo \u684c\u9762 / \u9501\u5c4f\u5e03\u5c40\u79fb\u690d  v1.0.0"

    const/high16 v3, 0x41400000    # 12.0f

    const v4, -0x777778

    invoke-direct {p0, v2, v3, v4}, Ldev/duo/port/SettingsActivity;->a(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Ldev/duo/port/SettingsActivity;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ldev/duo/port/SettingsActivity;->c:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget-object v4, Ldev/duo/port/SettingsActivity;->KEYS:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_end

    aget-object v4, v4, v3

    sget-object v5, Ldev/duo/port/SettingsActivity;->TITLES:[Ljava/lang/String;

    aget-object v5, v5, v3

    sget-object v6, Ldev/duo/port/SettingsActivity;->DESCS:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {p0, v5, v6, v4}, Ldev/duo/port/SettingsActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_end
    const/16 v2, 0x40

    invoke-direct {p0, v2}, Ldev/duo/port/SettingsActivity;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "\u4fee\u6539\u540e\u9700\u91cd\u542f SystemUI / \u684c\u9762\u751f\u6548"

    const/high16 v3, 0x41200000    # 10.0f

    const v4, -0x777778

    invoke-direct {p0, v2, v3, v4}, Ldev/duo/port/SettingsActivity;->a(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x14

    const/16 v3, 0x1c

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    

    new-instance v4, Ldev/duo/port/SettingsActivity$a;

    invoke-direct {v4}, Ldev/duo/port/SettingsActivity$a;-><init>()V

    iput-object p3, v4, Ldev/duo/port/SettingsActivity$a;->key:Ljava/lang/String;

    iput-object v3, v4, Ldev/duo/port/SettingsActivity$a;->tv:Landroid/widget/TextView;

    iput-object p0, v4, Ldev/duo/port/SettingsActivity$a;->host:Ldev/duo/port/SettingsActivity;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Ldev/duo/port/SettingsActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Ldev/duo/port/SettingsActivity;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4}, Ldev/duo/port/SettingsActivity;->a(Ldev/duo/port/SettingsActivity$a;)V

    return-void
.end method

.method private a(Ldev/duo/port/SettingsActivity$a;)V
    .locals 4

    iget-object v0, p0, Ldev/duo/port/SettingsActivity;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p1, Ldev/duo/port/SettingsActivity$a;->tv:Landroid/widget/TextView;

    const-string v1, "\u914d\u7f6e\u672a\u5c31\u7eea"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldev/duo/port/SettingsActivity;->b:Landroid/content/SharedPreferences;

    iget-object v1, p1, Ldev/duo/port/SettingsActivity$a;->key:Ljava/lang/String;

    invoke-direct {p0, v1}, Ldev/duo/port/SettingsActivity;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Ldev/duo/port/SettingsActivity;->a(Ldev/duo/port/SettingsActivity$a;Z)V

    return-void
.end method

.method private a(Ldev/duo/port/SettingsActivity$a;Z)V
    .locals 5

    iget-object v0, p1, Ldev/duo/port/SettingsActivity$a;->tv:Landroid/widget/TextView;

    if-eqz p2, :cond_off

    const-string v1, "\u5df2\u5f00\u542f"

    const v2, -0xdd3301

    goto :goto_0

    :cond_off
    const-string v1, "\u5df2\u5173\u95ed"

    const v2, -0x777778

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Ldev/duo/port/SettingsActivity;->KEYS:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_end

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_hit

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_hit
    sget-object v0, Ldev/duo/port/SettingsActivity;->DEFAULTS:[Z

    aget-boolean v0, v0, v2

    return v0

    :cond_end
    return v1
.end method


.method private b()V
    .locals 3

    :try_start_0
    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    iget-object v0, v1, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    iput-object v0, p0, Ldev/duo/port/SettingsActivity;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ldev/duo/port/SettingsActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Ldev/duo/port/SettingsActivity;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_end

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/port/SettingsActivity$a;

    invoke-direct {p0, v1}, Ldev/duo/port/SettingsActivity;->a(Ldev/duo/port/SettingsActivity$a;)V

    goto :goto_0

    :cond_end
    return-void
.end method

.method private a(Ljava/lang/String;FI)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-object v0
.end method

.method static synthetic a(Ldev/duo/port/SettingsActivity;Ldev/duo/port/SettingsActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/port/SettingsActivity;->d(Ldev/duo/port/SettingsActivity$a;)V

    return-void
.end method

.method private d(Ldev/duo/port/SettingsActivity$a;)V
    .locals 5

    iget-object v0, p0, Ldev/duo/port/SettingsActivity;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "\u914d\u7f6e\u672a\u5c31\u7eea"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Ldev/duo/port/SettingsActivity;->b:Landroid/content/SharedPreferences;

    iget-object v1, p1, Ldev/duo/port/SettingsActivity$a;->key:Ljava/lang/String;

    invoke-direct {p0, v1}, Ldev/duo/port/SettingsActivity;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Ldev/duo/port/SettingsActivity;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, p1, v3}, Ldev/duo/port/SettingsActivity;->a(Ldev/duo/port/SettingsActivity$a;Z)V

    const-string v4, "\u91cd\u542f SystemUI \u4e0e\u684c\u9762\u540e\u751f\u6548"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method
