.class Ldev/duo/hookprobe/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/f;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:[I

.field final synthetic c:I

.field final synthetic d:Ldev/duo/hookprobe/f;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/f;Landroid/widget/EditText;[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/f$b;->d:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$b;->a:Landroid/widget/EditText;

    iput-object p3, p0, Ldev/duo/hookprobe/f$b;->b:[I

    iput p4, p0, Ldev/duo/hookprobe/f$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Ldev/duo/hookprobe/f$b;->a:Landroid/widget/EditText;

    iget-object p3, p0, Ldev/duo/hookprobe/f$b;->b:[I

    const/4 v0, 0x0

    aget p3, p3, v0

    iget v0, p0, Ldev/duo/hookprobe/f$b;->c:I

    const/16 v1, 0xff

    shl-int/2addr v1, v0

    not-int v1, v1

    and-int/2addr p3, v1

    shl-int/2addr p2, v0

    or-int/2addr p2, p3

    invoke-static {p2}, Ldev/duo/hookprobe/f;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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
