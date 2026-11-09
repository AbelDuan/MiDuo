.class Ldev/duo/hookprobe/f$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/f$f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/f$f;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/f$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/f$f$a;->a:Ldev/duo/hookprobe/f$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Ldev/duo/hookprobe/f$f$a;->a:Ldev/duo/hookprobe/f$f;

    iget-object p3, p1, Ldev/duo/hookprobe/f$f;->c:Landroid/widget/TextView;

    iget p1, p1, Ldev/duo/hookprobe/f$f;->a:I

    add-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/f$f$a;->a:Ldev/duo/hookprobe/f$f;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget-object v1, p0, Ldev/duo/hookprobe/f$f$a;->a:Ldev/duo/hookprobe/f$f;

    iget v1, v1, Ldev/duo/hookprobe/f$f;->a:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/f$f;->a(I)V

    return-void
.end method
