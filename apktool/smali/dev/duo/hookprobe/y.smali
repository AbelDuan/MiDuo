.class final Ldev/duo/hookprobe/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1

.field private static final b:Ljava/lang/String; = "guide"

.field private static final c:Ljava/lang/String; = "agreedTerms"

.field private static final d:Ljava/lang/String; = "newUserMasterOff"

.field private static final e:[[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6YCVwAvKq-NMp64JHduHB1VWrp0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/y;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bdb8gv6gT8ZKsA59wxvV0XxmolU(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/y;->a(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QxXE9Ju1KuBuvfNG1xVl6hF2zfc(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/y;->a(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lm_z85cXjQweWRsBrYw6p3HCBx4(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/y;->a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "\u9700\u8981"

    const-string v1, "\u5c0f\u7c73 18 Fold\uff1b\u5df2\u7528 KernelSU \u53d6\u5f97 Root\uff1b\u5df2\u88c5 LSPosed 2.2.1\u3002\u5176\u4ed6\u673a\u578b\u4e0d\u80fd\u6253\u5f00 MiDuo\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "1. \u540c\u610f\u672c\u8bf4\u660e"

    const-string v1, "\u70b9\u4e0b\u65b9\u201c\u6211\u5df2\u9605\u8bfb\u5e76\u540c\u610f\u201d\u3002\n\u6210\u529f\uff1a\u8bf4\u660e\u5173\u95ed\uff0c\u770b\u5230 MiDuo \u9996\u9875\u3002\n\u4e0d\u540c\u610f\uff1aMiDuo \u76f4\u63a5\u5173\u95ed\uff0c\u4e0d\u4f1a\u505a\u4efb\u4f55\u6539\u52a8\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "2. \u5141\u8bb8 Root"

    const-string v1, "\u6253\u5f00 KernelSU \u2192 \u8d85\u7ea7\u7528\u6237\uff08\u5e94\u7528\u6388\u6743\uff09\u2192 \u627e\u5230 MiDuo \u2192 \u6253\u5f00\u5141\u8bb8\u3002MiDuo \u4e0d\u4f1a\u81ea\u5df1\u53bb\u62ff Root\u3002\n\u6210\u529f\uff1a\u7b2c 4 \u6b65\u68c0\u67e5\u91cc\u201cRoot\u201d\u662f\u7eff\u8272\u3002\n\u4e0d\u6210\u529f\uff1a\u68c0\u67e5\u91cc Root \u663e\u793a\u7ea2\u8272\u65f6\uff0c\u56de KernelSU \u786e\u8ba4 MiDuo \u5df2\u5141\u8bb8\uff0c\u518d\u56de\u6765\u70b9\u4e00\u6b21\u603b\u5f00\u5173\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "3. \u5728 LSPosed \u542f\u7528"

    const-string v1, "\u6253\u5f00 LSPosed \u7ba1\u7406\u5668 \u2192 \u6a21\u5757 \u2192 MiDuo \u2192 \u6253\u5f00\u201c\u542f\u7528\u6a21\u5757\u201d\uff0c\u4f5c\u7528\u57df\u52fe\u4e0a\u6838\u5fc3\u4e94\u9879\uff1a\u7cfb\u7edf\u6846\u67b6\u3001\u7cfb\u7edf\u754c\u9762\u3001\u5c0f\u7c73\u684c\u9762\u3001\u667a\u80fd\u52a9\u7406\u3001\u7cfb\u7edf\u641c\u7d22\u3002\u4e3b\u9898\u3001\u5fae\u4fe1\u3001\u6296\u97f3\u3001\u8bbe\u7f6e\u3001\u5e94\u7528\u5546\u5e97\u3001\u58c1\u7eb8\u662f\u9644\u52a0\u529f\u80fd\uff0c\u7528\u5230\u518d\u52fe\u3002\u4e5f\u53ef\u4ee5\u5728 MiDuo \u9996\u9875\u70b9\u201c\u8865\u9f50\u4f5c\u7528\u57df\u201d\uff0c\u5728 LSPosed \u7684\u901a\u77e5\u91cc\u6279\u51c6\u3002\n\u6210\u529f\uff1aMiDuo \u9996\u9875 LSPosed \u4e00\u680f\u663e\u793a\u201c\u5df2\u8fde\u63a5\u201d\u3002\n\u4e0d\u6210\u529f\uff1a\u663e\u793a\u201c\u672a\u8fde\u63a5\u201d\u65f6\uff0c\u56de LSPosed \u786e\u8ba4 MiDuo \u5df2\u542f\u7528\uff1b\u9996\u9875\u5982\u679c\u5199\u7740\u7cfb\u7edf\u6846\u67b6\u8fd8\u6ca1\u52a0\u8f7d MiDuo\uff0c\u6309\u9996\u9875\u90a3\u4e00\u884c\u7684\u8bf4\u660e\u5904\u7406\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "4. \u6253\u5f00\u603b\u5f00\u5173"

    const-string v1, "\u5728 MiDuo \u9996\u9875\u6253\u5f00\u603b\u5f00\u5173\u3002\u4f1a\u5148\u68c0\u67e5\u673a\u578b\u3001Root\u3001LSPosed\u3001\u4f5c\u7528\u57df\u3001\u5c0f\u7c73\u684c\u9762\u7248\u672c\u548c\u667a\u80fd\u52a9\u7406\u5b89\u88c5\u72b6\u6001\u7b49\uff0c\u5168\u90e8\u901a\u8fc7\u624d\u6253\u5f00\uff1b\u667a\u80fd\u52a9\u7406\u4e0d\u9650\u5b9a\u7248\u672c\u53f7\uff0c\u4ecd\u9700\u5b89\u88c5\u5e76\u52fe\u9009\u4f5c\u7528\u57df\u3002\u540c\u65f6\u81ea\u52a8\u5904\u7406 MiDuo \u81ea\u5df1\u7684\u5e94\u7528\u5217\u8868\u3001\u65e5\u5386\u3001\u901a\u77e5\u3001\u684c\u9762\u5feb\u6377\u65b9\u5f0f\u548c\u9501\u5c4f\u663e\u793a\u6743\u9650\uff0c\u9010\u9879\u663e\u793a\u7ed3\u679c\u3002\n\u6210\u529f\uff1a\u9996\u9875\u663e\u793a\u201cMiDuo \u8fd0\u884c\u4e2d\u201d\uff0c\u684c\u9762\u81ea\u52a8\u91cd\u5f00\u4e00\u6b21\u6362\u6210 MiDuo \u7684\u5e03\u5c40\u3002\n\u4e0d\u6210\u529f\uff1a\u7ea2\u8272\u9879\u6309\u65c1\u8fb9\u7684\u8bf4\u660e\u5904\u7406\u540e\u518d\u70b9\u4e00\u6b21\u5f00\u5173\uff1b\u9ec4\u8272\u9879\u53ea\u5f71\u54cd\u5bf9\u5e94\u7684\u5c0f\u529f\u80fd\uff0c\u4e0d\u5f71\u54cd\u6253\u5f00\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "5. \u786e\u8ba4\u751f\u6548"

    const-string v1, "\u684c\u9762\u91cd\u5f00\u540e\uff0c\u5c55\u5f00\u5185\u5c4f\u770b\u684c\u9762\u5e03\u5c40\uff0c\u5408\u4e0a\u7528\u5916\u5c4f\u6253\u5f00\u4e00\u4e2a App \u770b\u53f3\u4fa7\u680f\u3002\u8bbe\u7f6e\u6539\u52a8\u591a\u6570\u5728 App \u56de\u5230\u524d\u53f0\u6216\u4e0b\u6b21\u6253\u5f00\u65f6\u7528\u4e0a\uff0c\u63d0\u793a\u91cc\u4f1a\u5199\u660e\u3002\n\u6ca1\u53d8\u5316\uff1a\u5148\u786e\u8ba4\u7b2c 3 \u6b65\u6838\u5fc3\u4e94\u9879\u90fd\u52fe\u4e86\uff0c\u518d\u770b\u9996\u9875\u6709\u6ca1\u6709\u63d0\u793a\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "\u6388\u6743"

    const-string v1, "\u6709\u514d\u8d39\u8bd5\u7528\uff0c\u5230\u671f\u540e\u5728\u201c\u6388\u6743\u201d\u9875\u8d2d\u4e70\uff1b\u6362\u624b\u673a\u65f6\u5728\u201c\u6388\u6743\u201d\u9875\u8f93\u5165\u6388\u6743\u7801\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "\u6ce8\u610f"

    const-string v1, "\u5728 LSPosed \u505c\u7528\u6216\u5378\u8f7d MiDuo \u4e4b\u524d\uff0c\u5148\u5728\u9996\u9875\u5173\u6389\u603b\u5f00\u5173\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "\u51fa\u95ee\u9898"

    const-string v1, "\u5728\u9996\u9875\u5173\u6389\u603b\u5f00\u5173\uff0c\u5c31\u56de\u5230\u5c0f\u7c73\u539f\u88c5\uff08\u684c\u9762\u4f1a\u81ea\u52a8\u91cd\u5f00\u4e00\u6b21\uff09\u3002\u53ef\u4ee5\u5728\u201c\u4f7f\u7528\u8bf4\u660e\u201d\u5361\u7247\u91cc\u968f\u65f6\u518d\u770b\u672c\u8bf4\u660e\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "\u611f\u8c22"

    const-string v1, "\u7279\u522b\u611f\u8c22 \u5e7b\u534e_official \u4e00\u8def\u4ee5\u6765\u7684\u652f\u6301\u4e0e\u9f13\u52b1\u3002\u4e5f\u8c22\u8c22\u6bcf\u4e00\u4f4d\u613f\u610f\u8bd5\u7528\u3001\u613f\u610f\u53cd\u9988\u95ee\u9898\u7684\u670b\u53cb\uff0c\u4f60\u4eec\u7684\u6bcf\u4e00\u6761\u610f\u89c1\uff0c\u90fd\u8ba9\u5b83\u53d8\u5f97\u66f4\u597d\u7528\u4e00\u70b9\u3002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/y;->e:[[Ljava/lang/String;

    .line 25
    const-string v0, "\u4f7f\u7528\u524d\u8bf7\u5907\u4efd\u91cd\u8981\u6570\u636e\u3002"

    const-string v1, "\u56e0\u4f7f\u7528\u672c\u5de5\u5177\u9020\u6210\u7684\u6570\u636e\u4e22\u5931\u3001\u8bbe\u5907\u6545\u969c\u6216\u5176\u4ed6\u635f\u5931\uff0c\u4f5c\u8005\u4e0d\u627f\u62c5\u8d23\u4efb\u3002"

    const-string v2, "MiDuo \u662f\u4e2a\u4eba\u5f00\u53d1\u7684\u7b2c\u4e09\u65b9\u5de5\u5177\uff0c\u4e0e\u5c0f\u7c73\u516c\u53f8\u65e0\u5173\u3002"

    const-string v3, "\u4f7f\u7528\u9700\u8981 Root \u5e76\u4fee\u6539\u7cfb\u7edf\u884c\u4e3a\uff0c\u53ef\u80fd\u5bfc\u81f4\u754c\u9762\u5f02\u5e38\u3001\u684c\u9762\u5e03\u5c40\u53d8\u5316\u6216\u5176\u4ed6\u95ee\u9898\uff0c\u98ce\u9669\u7531\u4f7f\u7528\u8005\u81ea\u884c\u627f\u62c5\u3002"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/y;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 88
    invoke-static {p0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 89
    sget v1, Ldev/duo/hookprobe/T;->b:I

    const/high16 v2, 0x41700000    # 15.0f

    const/16 v3, 0x2bc

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 90
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    sget p1, Ldev/duo/hookprobe/T;->c:I

    const/high16 v1, 0x41600000    # 14.0f

    const/16 v2, 0x190

    invoke-static {p0, v1, p1, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 p2, 0x0

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 95
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p2, p0, v1}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    .line 7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldev/duo/hookprobe/y;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 80
    const-string p2, "guide"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 82
    invoke-static {p0}, Ldev/duo/hookprobe/y;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "newUserMasterOff"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    :cond_0
    const-string v0, "agreedTerms"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 85
    invoke-static {p0}, Ldev/duo/hookprobe/y;->d(Landroid/content/Context;)V

    .line 86
    instance-of p1, p0, Ldev/duo/hookprobe/MainActivity;

    if-eqz p1, :cond_1

    check-cast p0, Ldev/duo/hookprobe/MainActivity;

    invoke-virtual {p0}, Ldev/duo/hookprobe/MainActivity;->D()V

    :cond_1
    return-void
.end method

.method private static a(Landroid/app/Activity;Z)V
    .locals 16

    .line 8
    move-object/from16 v0, p0

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    xor-int/lit8 v3, p1, 0x1

    .line 10
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 11
    invoke-static {v0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 12
    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/view/View;F)V

    .line 13
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    .line 14
    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v0, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v5, v5, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    sget v5, Ldev/duo/hookprobe/T;->b:I

    const/16 v7, 0x320

    invoke-static {v0, v4, v5, v7}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 16
    const-string v7, "\u4f7f\u7528\u524d\u8bf7\u9605\u8bfb"

    goto :goto_0

    :cond_0
    const-string v7, "\u4f7f\u7528\u8bf4\u660e"

    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    invoke-static {v0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 20
    sget-object v7, Ldev/duo/hookprobe/y;->e:[[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    const/high16 v11, 0x41600000    # 14.0f

    if-ge v10, v8, :cond_1

    aget-object v12, v7, v10

    aget-object v13, v12, v9

    aget-object v12, v12, v2

    invoke-static {v0, v13, v12}, Ldev/duo/hookprobe/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v12

    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-static {v13, v0, v11}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 21
    :cond_1
    sget v7, Ldev/duo/hookprobe/T;->b:I

    const/high16 v8, 0x41700000    # 15.0f

    const/16 v10, 0x2bc

    invoke-static {v0, v8, v7, v10}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v7

    .line 22
    const-string v8, "\u514d\u8d23\u58f0\u660e"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-static {v8, v0, v4}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    sget-object v4, Ldev/duo/hookprobe/y;->f:[Ljava/lang/String;

    array-length v7, v4

    move v8, v9

    :goto_2
    const/4 v10, 0x0

    const/16 v12, 0x190

    if-ge v8, v7, :cond_2

    aget-object v13, v4, v8

    .line 25
    sget v14, Ldev/duo/hookprobe/T;->c:I

    invoke-static {v0, v11, v14, v12}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v12

    .line 26
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u00b7 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const/high16 v13, 0x3fa00000    # 1.25f

    invoke-virtual {v12, v10, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 28
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v10, v0, v13}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 30
    :cond_2
    sget v4, Ldev/duo/hookprobe/T;->d:I

    const/high16 v7, 0x41500000    # 13.0f

    const/16 v8, 0x1f4

    invoke-static {v0, v7, v4, v8}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v4

    .line 31
    const-string v7, "\u2014\u2014 lcbbb"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v7, 0x800005

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 33
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v0, v8}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    sget v4, Ldev/duo/hookprobe/T;->d:I

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v0, v7, v4, v12}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v4

    .line 37
    const-string v8, "\u53d6\u8272\u4fdd\u5b58\u540e\uff0c\u8fd9\u4e2a App \u5df2\u786e\u8ba4\u7684\u9875\u9762\u989c\u8272\u4f1a\u4e0a\u4f20\u5230 MiDuo \u670d\u52a1\u5668\uff0c\u7528\u4e8e\u7ed9\u6240\u6709\u7528\u6237\u9002\u914d\u66f4\u591a App\u3002\u4e0a\u4f20\u5185\u5bb9\uff1aApp \u5305\u540d\u548c\u7248\u672c\u3001\u754c\u9762\u540d\u3001\u6df1\u6d45\u8272\u3001\u989c\u8272\u503c\uff0c\u4ee5\u53ca\u672c\u673a\u8bbe\u5907\u6807\u8bc6\uff08\u548c\u6388\u6743\u3001\u8bd5\u7528\u7528\u7684\u662f\u540c\u4e00\u4e2a\uff0c\u80fd\u5bf9\u5e94\u5230\u8fd9\u53f0\u624b\u673a\uff09\u3002\u4e0d\u542b\u622a\u56fe\u548c\u9875\u9762\u5185\u5bb9\u3002"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v8, 0x3f99999a    # 1.2f

    invoke-virtual {v4, v10, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 41
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-static {v8, v0, v6}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v4, v9}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 44
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 45
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v5, v0, v10}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-static {v0}, Ldev/duo/hookprobe/T;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/high16 v5, 0x42300000    # 44.0f

    if-eqz p1, :cond_3

    .line 49
    const-string v6, "\u4e0d\u540c\u610f"

    invoke-static {v0, v6, v9, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v6

    .line 50
    new-instance v10, Ldev/duo/hookprobe/y$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1, v0}, Ldev/duo/hookprobe/y$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v10, v9, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    const-string v6, "\u6211\u5df2\u9605\u8bfb\u5e76\u540c\u610f"

    invoke-static {v0, v6, v2, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 53
    new-instance v6, Ldev/duo/hookprobe/y$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v1}, Ldev/duo/hookprobe/y$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v6, v9, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 63
    invoke-static {v0, v7}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 64
    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 66
    :cond_3
    const-string v7, "\u77e5\u9053\u4e86"

    invoke-static {v0, v7, v2, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    .line 67
    new-instance v7, Ldev/duo/hookprobe/y$$ExternalSyntheticLambda3;

    invoke-direct {v7, v1}, Ldev/duo/hookprobe/y$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_3
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v2, v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 74
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 76
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x440c0000    # 560.0f

    invoke-static {v0, v5}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v4, 0x3f51eb85    # 0.82f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 78
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Dialog;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Ldev/duo/hookprobe/o;)V
    .locals 4

    const-class v0, Ldev/duo/hookprobe/y;

    monitor-enter v0

    .line 2
    :try_start_0
    const-string v1, "guide"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3
    iget-object v1, p1, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    const-string v3, "_global/master"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "agreedTerms"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    const-string v1, "newUserMasterOff"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    .line 5
    invoke-virtual {p1, v1}, Ldev/duo/hookprobe/o;->h(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "MiDuoGuide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Master switch set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_1

    const-string p0, "on (existing user)"

    goto :goto_0

    :cond_1
    const-string p0, "off (new user)"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 6
    :cond_2
    :try_start_1
    const-string p0, "MiDuoGuide"

    const-string p1, "Master switch default not saved; retried when LSPosed connects again"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    .line 1
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "guide"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "agreedTerms"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method static b(Landroid/app/Activity;)V
    .locals 1

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/y;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldev/duo/hookprobe/y;->a(Landroid/app/Activity;Z)V

    return-void
.end method

.method static b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "guide"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "agreedTerms"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic c(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/L;->c()Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    invoke-static {p0, v1}, Ldev/duo/hookprobe/y;->a(Landroid/content/Context;Ldev/duo/hookprobe/o;)V

    :cond_0
    return-void
.end method

.method static d(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/duo/hookprobe/y$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/y$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p0, "MiDuoSettleMaster"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
