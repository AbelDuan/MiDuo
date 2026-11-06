.class Ldev/duo/hookprobe/MainActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/MainActivity;->a(ILjava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:I

.field final synthetic c:Ldev/duo/hookprobe/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$_0k1KGEbRO4PSohiUPikxKKUDO0(Ldev/duo/hookprobe/MainActivity$d;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/MainActivity$d;->a(II)V

    return-void
.end method

.method constructor <init>(Ldev/duo/hookprobe/MainActivity;Landroid/widget/TextView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    iput-object p2, p0, Ldev/duo/hookprobe/MainActivity$d;->a:Landroid/widget/TextView;

    iput p3, p0, Ldev/duo/hookprobe/MainActivity$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->m(Ldev/duo/hookprobe/MainActivity;)[Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldev/duo/hookprobe/o;->a(II)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    const-string p2, "\u65f6\u949f\u6a21\u5757\u4f4d\u7f6e\u4fdd\u5b58\u5931\u8d25"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    add-int/lit8 p2, p2, -0x3c

    .line 1
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->a:Landroid/widget/TextView;

    invoke-static {p2}, Ldev/duo/hookprobe/MainActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->k(Ldev/duo/hookprobe/MainActivity;)V

    if-eqz p3, :cond_2

    .line 3
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->l(Ldev/duo/hookprobe/MainActivity;)Ldev/duo/hookprobe/o;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Ldev/duo/hookprobe/MainActivity;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->m(Ldev/duo/hookprobe/MainActivity;)[Ljava/lang/Runnable;

    move-result-object p1

    iget p3, p0, Ldev/duo/hookprobe/MainActivity$d;->b:I

    aget-object p1, p1, p3

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->n(Ldev/duo/hookprobe/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p3}, Ldev/duo/hookprobe/MainActivity;->m(Ldev/duo/hookprobe/MainActivity;)[Ljava/lang/Runnable;

    move-result-object p3

    iget v0, p0, Ldev/duo/hookprobe/MainActivity$d;->b:I

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->m(Ldev/duo/hookprobe/MainActivity;)[Ljava/lang/Runnable;

    move-result-object p1

    iget p3, p0, Ldev/duo/hookprobe/MainActivity$d;->b:I

    new-instance v0, Ldev/duo/hookprobe/MainActivity$d$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2}, Ldev/duo/hookprobe/MainActivity$d$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/MainActivity$d;II)V

    aput-object v0, p1, p3

    .line 10
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->n(Ldev/duo/hookprobe/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ldev/duo/hookprobe/MainActivity$d;->c:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p2}, Ldev/duo/hookprobe/MainActivity;->m(Ldev/duo/hookprobe/MainActivity;)[Ljava/lang/Runnable;

    move-result-object p2

    iget p3, p0, Ldev/duo/hookprobe/MainActivity$d;->b:I

    aget-object p2, p2, p3

    const-wide/16 v0, 0x50

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
