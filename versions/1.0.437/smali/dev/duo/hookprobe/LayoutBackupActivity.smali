.class public final Ldev/duo/hookprobe/LayoutBackupActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final k:Ljava/lang/String; = "/data/user_de/0/com.miui.home/files/miduo-layout"

.field private static final l:Ljava/lang/String; = "/data/user_de/0/com.miui.home/databases"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ldev/duo/hookprobe/U$d;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method public static synthetic $r8$lambda$-9Y6lmb1uEvjwqJXwToECNcjnmI(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$69H82zlTLmUS3TXdjUlPzoFx4_4(Ldev/duo/hookprobe/LayoutBackupActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F0GnZH_5bjmp0PxmfnuAj3Ri5l0(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F7Z55nTNBuUYejEclyfrBKPp-IA(Ldev/duo/hookprobe/LayoutBackupActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/LayoutBackupActivity;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$_klOO2nISZ9H3th4Z0nh7_LiLl4(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nsztgcjAiLyttAm32rDmGJZUgl0(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wl1ykTcUwbM_clRE5Htn4KwCzg0(Ldev/duo/hookprobe/LayoutBackupActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x5bPiBtQnj8sOn4SAGqrkdQdeh4(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->b(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(F)I
    .locals 0

    .line 7
    invoke-static {p0, p1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;
    .locals 5

    .line 27
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 28
    invoke-static {p0, p2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-direct {p0}, Ldev/duo/hookprobe/LayoutBackupActivity;->e()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 30
    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {p0, v3}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v4

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v1

    invoke-direct {p0, v3}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v3

    invoke-virtual {p2, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6

    .line 11
    invoke-static {p0}, Ldev/duo/hookprobe/U;->c(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 12
    const/high16 v1, 0x42880000    # 68.0f

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 13
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 14
    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    sget v2, Ldev/duo/hookprobe/U;->b:I

    const/high16 v4, 0x41700000    # 15.0f

    const/16 v5, 0x258

    invoke-static {p0, v4, v2, v5}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v2

    .line 16
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    sget p2, Ldev/duo/hookprobe/U;->d:I

    const/high16 v2, 0x41400000    # 12.0f

    const/16 v4, 0x190

    invoke-static {p0, v2, p2, v4}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p2

    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    const/high16 p3, 0x40400000    # 3.0f

    invoke-direct {p0, p3}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result p3

    invoke-virtual {p2, v3, p3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 21
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    invoke-static {}, Ldev/duo/hookprobe/U;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    sget p2, Ldev/duo/hookprobe/U;->c:I

    const/high16 p3, 0x41500000    # 13.0f

    const/16 v1, 0x1f4

    invoke-static {p0, p3, p2, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p2

    .line 24
    const-string p3, "\u8bfb\u53d6\u4e2d\u2026"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set -e\nS=/data/user_de/0/com.miui.home/files/miduo-layout; D=/data/user_de/0/com.miui.home/databases; A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n[ -d $S ] || { echo NO_STORE; exit 3; }\nact=duo; [ -f $S/active ] && act=$(cat $S/active)\n[ \"$act\" = duo ] || { echo NOT_DUO; exit 3; }\n[ -e $S/swapping ] || [ -e $S/restoring ] && { echo SWAPPING; exit 3; }\n[ -e $D/launcher4x5.db ] && { echo MIGRATED; exit 3; }\n[ -f $D/launcher4x6.db ] || { echo NO_DB; exit 3; }\nf=launcher4x6.db; for x in -wal -journal; do if [ -f $D/launcher4x6.db$x ]; then f=\"$f launcher4x6.db$x\"; fi; done\nT=$A.tmp; rm -rf $T; mkdir -p $T\nb=$(cd $D && sha256sum $f)\nfor n in $f; do cp $D/$n $T/$n; done\na=$(cd $D && sha256sum $f); c=$(cd $T && sha256sum $f)\n[ \"$b\" = \"$a\" ] && [ \"$b\" = \"$c\" ] || { rm -rf $T; echo BUSY; exit 4; }\ndate +%s > $T/stamp\nM=$S/manual.tmp; rm -rf $M; cp -r $T $M; chmod 700 $M; chmod 600 $M/*\nchown -R $(stat -c %u:%g $S) $M; chcon -R $(stat -c %C $S) $M\nrm -rf $S/manual.old; if [ -d $S/manual ]; then mv $S/manual $S/manual.old; fi; mv $M $S/manual; rm -rf $S/manual.old\nrm -f $S/hold\nP=$(dirname $A); chown -R $(stat -c %u:%g $P) $T; chcon -R $(stat -c %C $P) $T\nrm -rf $A.old; if [ -d $A ]; then mv $A $A.old; fi; mv $T $A; rm -rf $A.old\nsync\necho OK $(cat $A/stamp)\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 39
    iget-boolean v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->j:Z

    .line 41
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5907\u4efd\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "layout-backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    sget-object v1, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda4;-><init>(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/duo/hookprobe/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 3
    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/hookprobe/LayoutBackupActivity;->a()V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 4

    .line 8
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9
    sget v1, Ldev/duo/hookprobe/U;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0, v2}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic a(Ljava/io/File;)V
    .locals 3

    const-string v0, ""

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ldev/duo/hookprobe/M;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(?s).*OK "

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5907\u4efd\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, "\u5b8c\u6210"

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Ldev/duo/hookprobe/LayoutBackupActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    :goto_0
    nop

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\uff09"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 46
    :catch_0
    move-exception p1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5907\u4efd\u5931\u8d25\uff1a\u9700\u8981 root\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 46
    :catch_1
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_2
    const-string p1, "BUSY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u684c\u9762\u6b63\u5728\u5199\u6570\u636e\uff0c\u8fc7\u51e0\u79d2\u518d\u70b9\u4e00\u6b21"

    goto :goto_3

    .line 59
    :cond_3
    const-string p1, "NOT_DUO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u73b0\u5728\u7528\u7684\u662f\u5c0f\u7c73\u539f\u751f\u5e03\u5c40\uff0c\u4e0d\u7528\u5907\u4efd"

    goto :goto_3

    .line 60
    :cond_4
    const-string p1, "MIGRATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "\u684c\u9762\u73b0\u5728\u662f\u88ab\u6253\u4e71\u7684\u72b6\u6001\uff0c\u5148\u522b\u5907\u4efd\uff08\u91cd\u542f\u4e00\u6b21\u684c\u9762\u4f1a\u81ea\u52a8\u6362\u56de\uff09"

    goto :goto_3

    .line 61
    :cond_5
    const-string p1, "NO_STORE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u684c\u9762\u8fd8\u6ca1\u5e26 MiDuo \u542f\u52a8\u8fc7\uff0c\u5148\u91cd\u542f\u4e00\u6b21\u684c\u9762\u518d\u5907\u4efd"

    goto :goto_3

    .line 62
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5907\u4efd\u5931\u8d25\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    :goto_3
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->a:Landroid/os/Handler;

    new-instance v1, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->h:Landroid/view/View;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    const-string p1, "restored "

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ldev/duo/hookprobe/LayoutBackupActivity;->b()V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 44
    const-string p1, "\u672a\u77e5\u5c0f\u90e8\u4ef6"

    return-object p1

    .line 45
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    .line 48
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\uff09"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff08App \u5df2\u5378\u8f7d\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "layout-check"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    sget-object v1, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic b(Ljava/io/File;)V
    .locals 7

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set -e\nD=/data/user_de/0/com.miui.home/databases; C="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nrm -rf $C; mkdir -p $C\nfor n in launcher4x6.db launcher4x6.db-wal; do if [ -f $D/$n ]; then cp $D/$n $C/$n; fi; done\nchown -R $(stat -c %u:%g $(dirname $C)) $C; chcon -R $(stat -c %C $(dirname $C)) $C\ndumpsys appwidget\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/duo/hookprobe/M;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 10
    const-string v3, "\\] id=(\\d+)\\s*\\n\\s*host=HostId\\{[^}]*pkg:com\\.miui\\.home\\}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v3, Ljava/io/File;

    const-string v4, "launcher4x6.db"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    const-string v5, "select appWidgetId, appWidgetProvider from favorites where itemType=4 and appWidgetId>0"

    invoke-virtual {p1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v5, v4

    .line 17
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 19
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Ldev/duo/hookprobe/LayoutBackupActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 21
    :cond_2
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 22
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 24
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u5c0f\u90e8\u4ef6\uff1a\u8bfb\u4e0d\u5230\u7cfb\u7edf\u7684\u5c0f\u90e8\u4ef6\u767b\u8bb0\uff0c\u6ca1\u6cd5\u68c0\u67e5\u3002"

    goto :goto_2

    .line 25
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5c0f\u90e8\u4ef6\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u4e2a\u90fd\u8fd8\u5728\uff0c\u4e0d\u7528\u91cd\u65b0\u6dfb\u52a0\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fd9\u4e9b\u5c0f\u90e8\u4ef6\u6062\u590d\u540e\u53ef\u80fd\u662f\u7a7a\u767d\uff0c\u9700\u8981\u957f\u6309\u684c\u9762\u91cd\u65b0\u6dfb\u52a0\uff1a\n\u00b7 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n\u00b7 "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 24
    :goto_2
    goto :goto_4

    .line 19
    :catchall_0
    move-exception v0

    .line 26
    if-eqz v3, :cond_5

    .line 27
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 28
    :cond_5
    :goto_3
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 26
    :catchall_2
    move-exception v0

    .line 34
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 35
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 11
    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c0f\u90e8\u4ef6\u68c0\u67e5\u6ca1\u505a\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    :goto_4
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->a:Landroid/os/Handler;

    new-instance v1, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic c()V
    .locals 15

    .line 1
    const-string v1, ""

    .line 3
    :try_start_0
    const-string v0, "S=/data/user_de/0/com.miui.home/files/miduo-layout\n[ -d /data/user_de/0/com.miui.home/databases ] || { echo \u770b\u4e0d\u5230\u684c\u9762\u7684\u6570\u636e\u76ee\u5f55; exit 5; }\nfor d in manual duo-snapshot; do echo \"$d $(cat $S/$d/stamp 2>/dev/null)\"; done\necho \"status $(cat $S/guard-status 2>/dev/null)\"\n[ -e $S/hold ] && echo hold\necho \"active $(cat $S/active 2>/dev/null)\"\n"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ldev/duo/hookprobe/M;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 10
    nop

    .line 12
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "duo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, v1

    move-object v10, v4

    move-object v7, v5

    move v8, v6

    move v11, v8

    :goto_0
    if-ge v8, v3, :cond_5

    :try_start_1
    aget-object v12, v0, v8

    .line 13
    const-string v13, "manual "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x7

    if-eqz v13, :cond_0

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldev/duo/hookprobe/LayoutBackupActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 14
    :cond_0
    const-string v13, "duo-snapshot "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v7, 0xd

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldev/duo/hookprobe/LayoutBackupActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 15
    :cond_1
    const-string v13, "status "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 16
    :cond_2
    const-string v13, "hold"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v11, v2

    goto :goto_1

    .line 17
    :cond_3
    const-string v13, "active "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 19
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v3, " "

    const/4 v8, 0x3

    invoke-virtual {v9, v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 21
    array-length v8, v3

    const/4 v12, 0x2

    if-lt v8, v12, :cond_9

    aget-object v8, v3, v2

    invoke-static {v8}, Ldev/duo/hookprobe/LayoutBackupActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 22
    aget-object v2, v3, v2

    invoke-static {v2}, Ldev/duo/hookprobe/LayoutBackupActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\uff1a"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    aget-object v2, v3, v6

    const-string v6, "restored"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\u53d1\u73b0\u684c\u9762\u88ab\u5c0f\u7c73\u684c\u9762\u6253\u4e71\uff0c\u5df2\u6362\u56de\u5907\u4efd\u3002\u88ab\u6253\u4e71\u7684\u90a3\u4efd\u7559\u5728 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 24
    array-length v6, v3

    if-le v6, v12, :cond_6

    aget-object v3, v3, v12

    goto :goto_2

    .line 25
    :cond_6
    move-object v3, v1

    .line 24
    :goto_2
    nop

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 26
    :cond_7
    const-string v2, "\u53d1\u73b0\u684c\u9762\u88ab\u5c0f\u7c73\u684c\u9762\u6253\u4e71\uff0c\u4f46\u6ca1\u6709\u6362\u56de\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v6, v3

    if-le v6, v12, :cond_8

    aget-object v3, v3, v12

    goto :goto_3

    .line 27
    :cond_8
    move-object v3, v1

    .line 26
    :goto_3
    nop

    .line 27
    invoke-static {v3}, Ldev/duo/hookprobe/LayoutBackupActivity;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    :goto_4
    nop

    .line 27
    :cond_9
    const-string v2, "\n\n"

    if-eqz v11, :cond_b

    .line 29
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_a

    move-object v3, v2

    goto :goto_5

    .line 30
    :cond_a
    move-object v3, v1

    .line 29
    :goto_5
    nop

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\u81ea\u52a8\u5907\u4efd\u5df2\u6682\u505c\uff0c\u514d\u5f97\u6253\u4e71\u7684\u684c\u9762\u9876\u6389\u65e7\u5907\u4efd\u3002\u786e\u8ba4\u684c\u9762\u6446\u597d\u540e\u70b9\u201c\u7acb\u5373\u5907\u4efd\u201d\u5c31\u6062\u590d\u3002"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_b
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_c

    move-object v1, v2

    goto :goto_6

    .line 32
    :cond_c
    nop

    .line 31
    :goto_6
    nop

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u73b0\u5728\u7528\u7684\u662f\u5c0f\u7c73\u539f\u751f\u5e03\u5c40\uff08\u603b\u5f00\u5173\u5173\u7740\uff09\uff0c\u5907\u4efd\u548c\u6062\u590d\u53ea\u7ba1 MiDuo \u5e03\u5c40\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_d
    const-string v1, "\u8fd8\u6ca1\u6709"

    if-nez v5, :cond_e

    .line 33
    move-object v5, v1

    :cond_e
    if-nez v7, :cond_f

    .line 34
    move-object v7, v1

    .line 35
    :cond_f
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v5

    move-object v11, v9

    move-object v9, v7

    move-object v10, v0

    goto :goto_8

    .line 13
    :catch_0
    move-exception v0

    move-object v1, v9

    goto :goto_7

    :catch_1
    move-exception v0

    .line 37
    :goto_7
    nop

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u4e0d\u5230\u5907\u4efd\u4fe1\u606f\uff1a\u9700\u8981 root\u3002\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u8bfb\u4e0d\u5230"

    move-object v11, v1

    move-object v8, v5

    move-object v9, v8

    move-object v10, v0

    .line 41
    :goto_8
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->a:Landroid/os/Handler;

    new-instance v6, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda7;

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda7;-><init>(Ldev/duo/hookprobe/LayoutBackupActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 2

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->j:Z

    .line 43
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->e:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u5907\u4efd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 45
    invoke-direct {p0}, Ldev/duo/hookprobe/LayoutBackupActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    sget-object v0, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda6;-><init>(Ldev/duo/hookprobe/LayoutBackupActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->i:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private e()Landroid/widget/LinearLayout;
    .locals 5

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    iget-boolean v1, v1, Ldev/duo/hookprobe/U$d;->e:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x41d00000    # 26.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41e00000    # 28.0f

    :goto_0
    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/view/View;F)V

    .line 3
    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v4

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v1

    invoke-direct {p0, v3}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 4
    sget v0, Ldev/duo/hookprobe/U;->c:I

    const/high16 v1, 0x41500000    # 13.0f

    const/16 v2, 0x190

    invoke-static {p0, v1, v0, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v0

    .line 5
    const/4 v1, 0x0

    const v2, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v1, "schema-newer-than-home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_1
    const-string v1, "no-copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_2
    const-string v1, "home-db-unreadable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u590d\u5236\u6216\u642c\u6587\u4ef6\u6ca1\u6210\u529f\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff09\uff0c\u684c\u9762\u4fdd\u6301\u539f\u6837\u3002"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_0
    const-string p0, "\u5907\u4efd\u6bd4\u73b0\u5728\u7684\u684c\u9762\u7248\u672c\u65b0\uff0c\u76f4\u63a5\u6362\u56de\u53ef\u80fd\u6253\u4e0d\u5f00\u3002"

    return-object p0

    .line 7
    :pswitch_1
    const-string p0, "\u624b\u673a\u4e0a\u8fd8\u6ca1\u6709\u5907\u4efd\u3002"

    return-object p0

    .line 9
    :pswitch_2
    const-string p0, "\u8bfb\u4e0d\u4e86\u73b0\u5728\u7684\u684c\u9762\u6570\u636e\u3002"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x783fd1ca -> :sswitch_2
        0x7b003401 -> :sswitch_1
        0x7fefeddf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M\u6708d\u65e5 HH:mm"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Ldev/duo/hookprobe/U$d;

    invoke-direct {p1, p0}, Ldev/duo/hookprobe/U$d;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    .line 3
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    invoke-virtual {v0}, Ldev/duo/hookprobe/U$d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ldev/duo/hookprobe/U$d;->a(I)I

    move-result v0

    .line 5
    iget-object v1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    invoke-virtual {v1}, Ldev/duo/hookprobe/U$d;->d()I

    move-result v1

    iget-object v2, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    invoke-virtual {v2}, Ldev/duo/hookprobe/U$d;->b()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    const-string v1, "\u684c\u9762\u5e03\u5c40\u5907\u4efd"

    const-string v2, "\u6389 root \u540e\u684c\u9762\u88ab\u6253\u4e71\uff0croot \u56de\u6765\u81ea\u52a8\u6362\u56de"

    invoke-static {p0, v0, v1, v2}, Ldev/duo/hookprobe/WidgetCenterActivity;->a(Landroid/app/Activity;Ldev/duo/hookprobe/U$d;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-direct {p0}, Ldev/duo/hookprobe/LayoutBackupActivity;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 9
    const-string v1, "\u624b\u52a8\u5907\u4efd"

    const-string v2, "\u70b9\u4e0b\u9762\u7684\u6309\u94ae\u5b58\u7684"

    invoke-direct {p0, v0, v1, v2}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->c:Landroid/widget/TextView;

    .line 10
    invoke-direct {p0, v0}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Landroid/widget/LinearLayout;)V

    .line 11
    const-string v1, "\u81ea\u52a8\u5907\u4efd"

    const-string v2, "\u684c\u9762\u6bcf\u6b21\u542f\u52a8\u65f6\u5b58\u7684"

    invoke-direct {p0, v0, v1, v2}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->d:Landroid/widget/TextView;

    .line 12
    const/4 v1, 0x1

    const/high16 v2, 0x42300000    # 44.0f

    const-string v3, "\u7acb\u5373\u5907\u4efd"

    invoke-static {p0, v3, v1, v2}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->e:Landroid/widget/TextView;

    .line 13
    new-instance v2, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/LayoutBackupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, p0, v2}, Ldev/duo/hookprobe/U;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 15
    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 16
    iget-object v2, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    const-string v1, "\u5907\u4efd"

    invoke-static {p0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-static {}, Ldev/duo/hookprobe/U;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    const-string v0, ""

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/LayoutBackupActivity;->e(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->f:Landroid/widget/TextView;

    .line 21
    const-string v2, "\u4e0a\u6b21\u68c0\u67e5"

    invoke-direct {p0, p1, v2, v1}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->h:Landroid/view/View;

    .line 22
    invoke-direct {p0, v0}, Ldev/duo/hookprobe/LayoutBackupActivity;->e(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->g:Landroid/widget/TextView;

    .line 23
    const-string v1, "\u5c0f\u90e8\u4ef6"

    invoke-direct {p0, p1, v1, v0}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->i:Landroid/view/View;

    .line 24
    const-string v0, "\u6389 root \u540e\u5c0f\u7c73\u684c\u9762\u4f1a\u628a MiDuo \u7684\u684c\u9762\u91cd\u65b0\u6392\u4e00\u904d\u3002root \u56de\u6765\u3001\u684c\u9762\u7b2c\u4e00\u6b21\u542f\u52a8\u65f6\uff0cMiDuo \u81ea\u52a8\u6362\u56de\u6700\u65b0\u7684\u4e00\u4efd\u5907\u4efd\uff1b\u88ab\u6253\u4e71\u7684\u90a3\u4efd\u53e6\u5916\u7559\u7740\uff0c\u4e0d\u5220\u3002\n\u6389 root \u671f\u95f4\u65b0\u88c5\u7684 App \u53ef\u80fd\u4e0d\u5728\u684c\u9762\u4e0a\uff0c\u53bb App \u62bd\u5c49\u91cc\u627e\u3002\u521a\u6446\u597d\u684c\u9762\u53ef\u4ee5\u70b9\u201c\u7acb\u5373\u5907\u4efd\u201d\uff0c\u4ee5\u514d\u6f0f\u6389\u6700\u8fd1\u7684\u6539\u52a8\u3002"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/LayoutBackupActivity;->e(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf4\u660e"

    invoke-direct {p0, p1, v1, v0}, Ldev/duo/hookprobe/LayoutBackupActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    .line 27
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 34
    iget-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    iget-object p1, p1, Ldev/duo/hookprobe/U$d;->b:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    new-instance v0, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/LayoutBackupActivity$$ExternalSyntheticLambda3;-><init>(Ldev/duo/hookprobe/LayoutBackupActivity;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Ldev/duo/hookprobe/U$d;->a(ILjava/util/function/IntConsumer;)V

    .line 36
    iget-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    iget-object p1, p1, Ldev/duo/hookprobe/U$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->b:Ldev/duo/hookprobe/U$d;

    invoke-virtual {p1}, Ldev/duo/hookprobe/U$d;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-boolean v0, p0, Ldev/duo/hookprobe/LayoutBackupActivity;->j:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ldev/duo/hookprobe/LayoutBackupActivity;->d()V

    :cond_0
    return-void
.end method
