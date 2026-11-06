.class public final Ldev/duo/icons/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final o:I = 0x1

.field private static final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$2jlbD-l5zuycI_zz66ZY0OXgdrU(Ldev/duo/icons/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$4-FjaBkOcbgP7CpaMByapfJEku8(Ldev/duo/icons/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/icons/MainActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GPFII4Y1Mg78slOos5ZnwkFm1c4(Ldev/duo/icons/MainActivity;Ldev/duo/icons/e$b;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/icons/MainActivity;->a(Ldev/duo/icons/e$b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pe7ZkFpz5-zd7G2h7BLmFOBHEfI(Ldev/duo/icons/MainActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/icons/MainActivity;->a(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QPDIwe_MVMiWD-pPTMmLXTPj1L4(Ldev/duo/icons/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->e()V

    return-void
.end method

.method public static synthetic $r8$lambda$VqPEqRAsg4W5JU2_HNjBr5R4_R0(Ldev/duo/icons/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/icons/MainActivity;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_x54toBN99t2BgaiPCVEEltQocY(Ldev/duo/icons/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$hIw5HZOWUP4HGGp04Jdob1PlAM0(Ldev/duo/icons/MainActivity;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/icons/MainActivity;->a(Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$id3Bi185lmQ9pIK39jCrEmDK0p8(Ldev/duo/icons/MainActivity;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/icons/MainActivity;->a(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mFFbIR_ShtbZBNUYmroS-wGDBtM(Ldev/duo/icons/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$rR5DA-6CL_90gge4YxvRXw1P4oc(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/icons/MainActivity;->a(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xQt5mjvCiF1oz5-FMsK9iwTRmss(Ldev/duo/icons/MainActivity;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/icons/MainActivity;->a(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;ZLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ldev/duo/icons/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Ldev/duo/icons/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(I)I
    .locals 1

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .locals 3

    .line 3
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setAllCaps(Z)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x34

    invoke-direct {p0, v1}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p3}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 1

    .line 2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p2, p3

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x8

    invoke-direct {p0, p2}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result p3

    invoke-direct {p0, p2}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result p2

    const/4 p4, 0x0

    invoke-virtual {v0, p4, p3, p4, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a()V
    .locals 4

    .line 6
    iget-object v0, p0, Ldev/duo/icons/MainActivity;->g:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/duo/icons/MainActivity;->k:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Ldev/duo/icons/MainActivity;->j:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/duo/icons/MainActivity;->k:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Ldev/duo/icons/MainActivity;->h:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/duo/icons/MainActivity;->k:Z

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ldev/duo/icons/MainActivity;->l:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Ldev/duo/icons/MainActivity;->i:Landroid/widget/Button;

    iget-boolean v1, p0, Ldev/duo/icons/MainActivity;->k:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ldev/duo/icons/MainActivity;->l:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Ldev/duo/icons/MainActivity;->m:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5
    const-string p1, "RESTORE"

    invoke-direct {p0, p1}, Ldev/duo/icons/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8

    const-string v0, ".new"

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "import.mtz"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "prepared.zip"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_1

    const-wide/32 v4, 0x40000000

    :try_start_1
    invoke-static {p1, v1, v4, v5}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;Ljava/io/File;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 10
    new-instance p1, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v2, p2, p1}, Ldev/duo/icons/e;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ldev/duo/icons/e$c;)Ldev/duo/icons/e$b;

    move-result-object p1

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->g()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v5, v3

    sget-object v6, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {p2, v4, v5}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 14
    iget-object p2, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v4, "selectedTitle"

    iget-object v5, p1, Ldev/duo/icons/e$b;->a:Ljava/lang/String;

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v4, "selectedHash"

    iget-object v5, p1, Ldev/duo/icons/e$b;->b:Ljava/lang/String;

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v4, "selectedCount"

    iget v5, p1, Ldev/duo/icons/e$b;->d:I

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    new-instance p2, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda6;-><init>(Ldev/duo/icons/MainActivity;Ldev/duo/icons/e$b;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object p1, Ldev/duo/icons/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 20
    :cond_0
    :try_start_3
    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->g()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u5bfc\u5165\u4fe1\u606f\u672a\u80fd\u4fdd\u5b58\uff0c\u8bf7\u91cd\u65b0\u5bfc\u5165"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :cond_1
    :try_start_4
    new-instance p2, Ljava/io/IOException;

    const-string v4, "\u65e0\u6cd5\u8bfb\u53d6\u6240\u9009\u6587\u4ef6"

    invoke-direct {p2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :catchall_0
    move-exception p2

    .line 21
    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 22
    :cond_2
    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 19
    :catchall_2
    move-exception p1

    .line 31
    :try_start_7
    new-instance p2, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda7;-><init>(Ldev/duo/icons/MainActivity;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    sget-object p1, Ldev/duo/icons/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_3
    move-exception p1

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    sget-object p2, Ldev/duo/icons/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1
.end method

.method private synthetic a(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 6

    .line 44
    if-eqz p1, :cond_1

    .line 45
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "backup.new"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v2, 0x8000000

    invoke-static {v1, p1, v2, v3}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;Ljava/io/File;J)V

    .line 47
    invoke-static {p1}, Ldev/duo/icons/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "backup"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "backup.icons"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1, v0, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 50
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\u5907\u4efd\u526f\u672c\u6821\u9a8c\u5931\u8d25"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 51
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 49
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\u624b\u673a\u4e3b\u9898\u8fdb\u7a0b\u5185\u7684\u5907\u4efd\u4ecd\u4fdd\u7559\uff1bApp \u5185\u526f\u672c\u672a\u4fdd\u5b58\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    const-string p1, ""

    move-object v5, p1

    :goto_2
    new-instance v0, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda12;

    move-object v1, p0

    move-object v3, p2

    move v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda12;-><init>(Ldev/duo/icons/MainActivity;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ldev/duo/icons/e$b;)V
    .locals 4

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/icons/MainActivity;->k:Z

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->f()V

    iget-object v0, p0, Ldev/duo/icons/MainActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5bfc\u5165\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Ldev/duo/icons/e$b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a\u9759\u6001\u56fe\u6807\u8d44\u6e90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Ldev/duo/icons/e$b;->e:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uff0c\u8df3\u8fc7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ldev/duo/icons/e$b;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Ldev/duo/icons/e$b;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\uff09"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\u3002\u70b9\u51fb\u300c\u5e94\u7528\u56fe\u6807\u300d\u751f\u6548\u3002"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->a()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 36
    iget-boolean v0, p0, Ldev/duo/icons/MainActivity;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/icons/MainActivity;->k:Z

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->a()V

    iget-object v0, p0, Ldev/duo/icons/MainActivity;->d:Landroid/widget/TextView;

    const-string v1, "STATUS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u6b63\u5728\u8fde\u63a5\u4e3b\u9898\u58c1\u7eb8\u4e2d\u7684\u56fe\u6807\u6865\u2026"

    goto :goto_0

    :cond_1
    const-string v1, "APPLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u6b63\u5728\u5907\u4efd\u5e76\u5e94\u7528\u56fe\u6807\u2026"

    goto :goto_0

    :cond_2
    const-string v1, "\u6b63\u5728\u6062\u590d\u56fe\u6807\u5907\u4efd\u2026"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    new-instance v0, Ldev/duo/icons/a;

    invoke-direct {v0, p0}, Ldev/duo/icons/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    const-string v2, "selectedTitle"

    const-string v3, "\u4e3b\u9898"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    const-string v3, "selectedHash"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda8;-><init>(Ldev/duo/icons/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Ldev/duo/icons/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldev/duo/icons/a$c;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 7

    .line 38
    const-string v0, "STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "message"

    const-string v1, "\u672a\u6536\u5230\u660e\u786e\u7ed3\u679c"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastOperationResult"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    :cond_0
    const-string v0, "backupFd"

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 43
    iget-object v0, p0, Ldev/duo/icons/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda11;

    move-object v2, p0

    move-object v6, p1

    move v5, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda11;-><init>(Ldev/duo/icons/MainActivity;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 3

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/icons/MainActivity;->k:Z

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->f()V

    iget-object v0, p0, Ldev/duo/icons/MainActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5bfc\u5165\u5931\u8d25\uff0c\u5f53\u524d\u56fe\u6807\u672a\u6539\u53d8\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->a()V

    return-void
.end method

.method private synthetic a(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/icons/MainActivity;->k:Z

    iput-boolean p1, p0, Ldev/duo/icons/MainActivity;->l:Z

    if-eqz p1, :cond_0

    const-string v1, "canRestore"

    const-string v2, "false"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ldev/duo/icons/MainActivity;->m:Z

    .line 59
    iget-object v0, p0, Ldev/duo/icons/MainActivity;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string v1, "\u56fe\u6807\u6865\u5df2\u8fde\u63a5"

    goto :goto_0

    :cond_1
    const-string v1, "\u6a21\u5757\u672a\u5c31\u7eea\u6216\u64cd\u4f5c\u5931\u8d25"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const-string v0, "backup"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    iget-object v2, p0, Ldev/duo/icons/MainActivity;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9996\u6b21\u5e94\u7528\u524d\u7684\u56fe\u6807\u5df2\u5907\u4efd\u5230\u624b\u673a\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5907\u4efd\u4e3a\u7cfb\u7edf\u539f\u56fe\u6807\uff0c\u65e0\u8986\u76d6\u6587\u4ef6\u3002"

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_3
    const-string v0, "message"

    const-string v2, "\u672a\u6536\u5230\u660e\u786e\u7ed3\u679c"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "STATUS"

    if-eqz p1, :cond_4

    .line 62
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    const-string v3, "lastOperationResult"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\n\u4e0a\u6b21\u64cd\u4f5c\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 63
    :cond_4
    iget-object v2, p0, Ldev/duo/icons/MainActivity;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p1, :cond_5

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string v1, "\n\u684c\u9762\u4e0e Dock \u4f7f\u7528\u539f\u751f\u56fe\u6807\uff1bApp \u4fa7\u680f\u6700\u8fd1\u9879\u4f1a\u5728\u5207\u6362\u5e94\u7528\u540e\u5237\u65b0\u3002"

    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->a()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 1
    const-string v0, "STATUS"

    invoke-direct {p0, v0}, Ldev/duo/icons/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    .line 1
    const-string v0, "APPLY"

    invoke-direct {p0, v0}, Ldev/duo/icons/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6062\u590d\u56fe\u6807\u5907\u4efd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53ea\u6062\u590d\u672c App \u9996\u6b21\u5e94\u7528\u524d\u7684\u56fe\u6807\uff0c\u4e0d\u6539\u58c1\u7eb8\u3001\u684c\u9762\u5e03\u5c40\u6216 Dock\u3002\u7ee7\u7eed\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda4;-><init>(Ldev/duo/icons/MainActivity;)V

    const-string v2, "\u6062\u590d"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private f()V
    .locals 12

    const-string v0, ".png"

    .line 1
    iget-object v1, p0, Ldev/duo/icons/MainActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Ldev/duo/icons/MainActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u5c1a\u672a\u9009\u62e9 MTZ"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Ldev/duo/icons/MainActivity;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    const-string v4, "selectedTitle"

    const-string v5, "\u5df2\u5bfc\u5165\u4e3b\u9898"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    const-string v4, "selectedCount"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u56fe\u6807\u8d44\u6e90"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->g()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "res/drawable-xxhdpi/"

    .line 5
    const-string v6, "com.android.contacts"

    const-string v7, "com.android.mms"

    const-string v8, "com.android.settings"

    const-string v9, "com.android.camera"

    const-string v10, "com.tencent.mm"

    const-string v11, "com.miui.gallery"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    move v6, v5

    :goto_0
    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    aget-object v7, v4, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v7, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v5

    :cond_5
    :goto_2
    if-ge v3, v0, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/32 v7, 0x200000

    :try_start_2
    invoke-static {v6, v7, v8}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;J)[B

    move-result-object v7

    array-length v8, v7

    invoke-static {v7, v5, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x38

    invoke-direct {p0, v7}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v9

    invoke-direct {p0, v7}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v7

    invoke-direct {v4, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v7

    const/16 v9, 0xa

    invoke-direct {p0, v9}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v9

    const/16 v10, 0xc

    invoke-direct {p0, v10}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v10

    invoke-virtual {v4, v5, v7, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Ldev/duo/icons/MainActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v6, :cond_5

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_7

    .line 8
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 9
    :cond_7
    :goto_3
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 10
    :cond_8
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    .line 5
    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 11
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 10
    :catch_0
    move-exception v0

    .line 16
    iget-object v0, p0, Ldev/duo/icons/MainActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u9884\u89c8\u4e0d\u53ef\u7528\uff0c\u8bf7\u91cd\u65b0\u5bfc\u5165\u4e3b\u9898\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "selected.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string p1, "\u4e3b\u9898.mtz"

    .line 3
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p3, "_display_name"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_1

    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p3, v0

    :try_start_3
    invoke-virtual {v2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4
    :cond_2
    :goto_2
    sget-object p3, Ldev/duo/icons/MainActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Ldev/duo/icons/MainActivity;->d:Landroid/widget/TextView;

    const-string p2, "\u4e0a\u4e00\u6b21\u4e3b\u9898\u5bfc\u5165\u4ecd\u5728\u8fdb\u884c\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_3
    iput-boolean v1, p0, Ldev/duo/icons/MainActivity;->k:Z

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->a()V

    iget-object p2, p0, Ldev/duo/icons/MainActivity;->d:Landroid/widget/TextView;

    const-string p3, "\u6b63\u5728\u68c0\u67e5\u4e3b\u9898\u53ca\u56fe\u6807\u8d44\u6e90\u2026"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Ldev/duo/icons/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, v3, p1}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda10;-><init>(Ldev/duo/icons/MainActivity;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/icons/MainActivity;->n:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "labelBlocked"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x18

    invoke-direct {p0, v2}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v3

    const/16 v4, 0x20

    invoke-direct {p0, v4}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v4

    invoke-direct {p0, v2}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v2

    const/16 v5, 0x1c

    invoke-direct {p0, v5}, Ldev/duo/icons/MainActivity;->a(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 4
    const-string v2, "MiDuo \u56fe\u6807"

    const v3, -0xe8dcd5

    invoke-direct {p0, v1, v2, v5, v3}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 5
    const-string v2, "\u4ece MTZ \u4e3b\u9898\u4e2d\u5355\u72ec\u66f4\u6362\u5e94\u7528\u56fe\u6807"

    const/16 v5, 0xf

    const v6, -0xa29790

    invoke-direct {p0, v1, v2, v5, v6}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 6
    const v2, -0xe0ad9c

    const-string v5, "\u6a21\u5757\u72b6\u6001\uff1a\u5f85\u68c0\u67e5"

    const/16 v7, 0x10

    invoke-direct {p0, v1, v5, v7, v2}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/icons/MainActivity;->b:Landroid/widget/TextView;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e3b\u9898\u58c1\u7eb8\u7248\u672c\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ldev/duo/icons/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xd

    invoke-direct {p0, v1, v2, v5, v6}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 8
    new-instance v2, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda0;-><init>(Ldev/duo/icons/MainActivity;)V

    const-string v8, "\u68c0\u67e5\u6a21\u5757\u72b6\u6001"

    invoke-direct {p0, v1, v8, v2}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/icons/MainActivity;->j:Landroid/widget/Button;

    .line 9
    const-string v2, "\u9009\u62e9\u4e3b\u9898"

    const/16 v8, 0x13

    invoke-direct {p0, v1, v2, v8, v3}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 10
    const-string v0, "\u5c1a\u672a\u9009\u62e9 MTZ"

    invoke-direct {p0, v1, v0, v7, v3}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/icons/MainActivity;->c:Landroid/widget/TextView;

    .line 11
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ldev/duo/icons/MainActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    new-instance v0, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/icons/MainActivity;)V

    const-string v2, "\u9009\u62e9 .mtz \u4e3b\u9898\u5305\uff08.zip \u4e5f\u53ef\uff09"

    invoke-direct {p0, v1, v2, v0}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/icons/MainActivity;->g:Landroid/widget/Button;

    .line 13
    new-instance v0, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda2;-><init>(Ldev/duo/icons/MainActivity;)V

    const-string v2, "\u5e94\u7528\u56fe\u6807"

    invoke-direct {p0, v1, v2, v0}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/icons/MainActivity;->h:Landroid/widget/Button;

    .line 14
    const-string v0, "\u9996\u6b21\u5e94\u7528\u524d\u4f1a\u5907\u4efd\u5f53\u524d\u56fe\u6807\uff1b\u6062\u590d\u6309\u94ae\u56de\u5230\u8be5\u5907\u4efd\u3002"

    const/16 v2, 0xe

    invoke-direct {p0, v1, v0, v2, v6}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/icons/MainActivity;->e:Landroid/widget/TextView;

    .line 15
    new-instance v0, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda3;-><init>(Ldev/duo/icons/MainActivity;)V

    const-string v3, "\u6062\u590d\u9996\u6b21\u5e94\u7528\u524d\u7684\u56fe\u6807"

    invoke-direct {p0, v1, v3, v0}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/icons/MainActivity;->i:Landroid/widget/Button;

    .line 16
    const-string v0, "\u53ea\u4f7f\u7528\u9002\u914d\u5e94\u7528\u7684\u9759\u6001 PNG\uff0c\u672a\u9002\u914d\u5e94\u7528\u4fdd\u7559\u539f\u56fe\u6807\u3002\u58c1\u7eb8\u3001\u9501\u5c4f\u3001\u63a7\u5236\u4e2d\u5fc3\u3001\u5e03\u5c40\u548c Dock \u6837\u5f0f\u4e0d\u53c2\u4e0e\u5e94\u7528\u3002"

    invoke-direct {p0, v1, v0, v2, v6}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/icons/MainActivity;->d:Landroid/widget/TextView;

    .line 17
    const-string v0, "\u5728 LSPosed \u7684 MiDuo \u4f5c\u7528\u57df\u4e2d\u589e\u52a0\u300c\u4e3b\u9898\u58c1\u7eb8\u300d\uff0c\u539f\u6709\u52fe\u9009\u4fdd\u6301\u3002\u52a0\u8f7d\u56fe\u6807\u6865\u540e\u518d\u68c0\u67e5\u72b6\u6001\u3002\u65e0\u9700\u7535\u8111\u6216\u989d\u5916 Root \u6388\u6743\u3002"

    invoke-direct {p0, v1, v0, v5, v6}, Ldev/duo/icons/MainActivity;->a(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->f()V

    invoke-direct {p0}, Ldev/duo/icons/MainActivity;->a()V

    const-string p1, "STATUS"

    invoke-direct {p0, p1}, Ldev/duo/icons/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method
