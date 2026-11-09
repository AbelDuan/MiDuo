.class Ldev/duo/hookprobe/MainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/MainActivity;->a(Ljava/lang/String;Ljava/lang/String;II[Landroid/widget/TextView;[Landroid/widget/SeekBar;Ljava/util/function/IntConsumer;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:I

.field final synthetic c:Ljava/util/function/IntConsumer;

.field final synthetic d:Ldev/duo/hookprobe/MainActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/MainActivity;Landroid/widget/TextView;ILjava/util/function/IntConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/MainActivity$a;->d:Ldev/duo/hookprobe/MainActivity;

    iput-object p2, p0, Ldev/duo/hookprobe/MainActivity$a;->a:Landroid/widget/TextView;

    iput p3, p0, Ldev/duo/hookprobe/MainActivity$a;->b:I

    iput-object p4, p0, Ldev/duo/hookprobe/MainActivity$a;->c:Ljava/util/function/IntConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$a;->a:Landroid/widget/TextView;

    iget p3, p0, Ldev/duo/hookprobe/MainActivity$a;->b:I

    add-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MainActivity$a;->c:Ljava/util/function/IntConsumer;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iget v1, p0, Ldev/duo/hookprobe/MainActivity$a;->b:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
