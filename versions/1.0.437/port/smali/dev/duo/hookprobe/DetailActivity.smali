.class public final Ldev/duo/hookprobe/DetailActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$CoO2aUPk-D38zEQyYGdlziygDUY(Ldev/duo/hookprobe/DetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/DetailActivity;->a(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ldev/duo/hookprobe/DetailActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/duo/hookprobe/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 3
    const-string v0, "pkg"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "label"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    const/high16 p2, 0x24000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 4
    const-string p1, "[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+"

    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ldev/duo/hookprobe/MainActivity;->d:Ljava/util/Set;

    .line 5
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ldev/duo/hookprobe/U$d;

    invoke-direct {p1, p0}, Ldev/duo/hookprobe/U$d;-><init>(Landroid/app/Activity;)V

    .line 10
    iget v0, p1, Ldev/duo/hookprobe/U$d;->c:I

    const/16 v1, 0x348

    const/4 v12, 0x1

    if-lt v0, v1, :cond_1

    .line 11
    invoke-direct {p0, v12, v3, v4}, Ldev/duo/hookprobe/DetailActivity;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    new-instance v1, Ldev/duo/hookprobe/f;

    new-instance v5, Ldev/duo/hookprobe/DetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Ldev/duo/hookprobe/DetailActivity$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/DetailActivity;)V

    .line 15
    invoke-virtual {p1}, Ldev/duo/hookprobe/U$d;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ldev/duo/hookprobe/U$d;->a(I)I

    move-result v7

    invoke-virtual {p1}, Ldev/duo/hookprobe/U$d;->d()I

    move-result v8

    invoke-virtual {p1}, Ldev/duo/hookprobe/U$d;->c()I

    move-result v9

    invoke-virtual {p1}, Ldev/duo/hookprobe/U$d;->b()I

    move-result v10

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ldev/duo/hookprobe/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZIIIILjava/lang/Runnable;)V

    .line 16
    iget-object v0, p1, Ldev/duo/hookprobe/U$d;->b:Landroid/widget/FrameLayout;

    iget-object v1, v1, Ldev/duo/hookprobe/f;->e:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    new-instance v0, Ldev/duo/hookprobe/DetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/DetailActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/DetailActivity;)V

    invoke-virtual {p1, v12, v0}, Ldev/duo/hookprobe/U$d;->a(ILjava/util/function/IntConsumer;)V

    .line 18
    iget-object v0, p1, Ldev/duo/hookprobe/U$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 19
    invoke-virtual {p1}, Ldev/duo/hookprobe/U$d;->a()V

    return-void

    .line 4
    :cond_2
    move-object v2, p0

    goto :goto_0

    .line 3
    :cond_3
    move-object v2, p0

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
