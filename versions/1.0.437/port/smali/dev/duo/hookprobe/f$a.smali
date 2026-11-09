.class Ldev/duo/hookprobe/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/f;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:[Landroid/widget/SeekBar;

.field final synthetic d:Ldev/duo/hookprobe/f;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/f;[ILandroid/widget/TextView;[Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/f$a;->d:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$a;->a:[I

    iput-object p3, p0, Ldev/duo/hookprobe/f$a;->b:Landroid/widget/TextView;

    iput-object p4, p0, Ldev/duo/hookprobe/f$a;->c:[Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string p2, "#?[0-9a-fA-F]{6}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object p2, p0, Ldev/duo/hookprobe/f$a;->a:[I

    invoke-static {p1}, Ldev/duo/hookprobe/P;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x0

    aput p1, p2, p3

    .line 4
    iget-object p1, p0, Ldev/duo/hookprobe/f$a;->b:Landroid/widget/TextView;

    iget-object p2, p0, Ldev/duo/hookprobe/f$a;->a:[I

    aget p2, p2, p3

    iget-object p4, p0, Ldev/duo/hookprobe/f$a;->d:Ldev/duo/hookprobe/f;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p4, v0}, Ldev/duo/hookprobe/f;->a(Ldev/duo/hookprobe/f;F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p2, p4}, Ldev/duo/hookprobe/U;->a(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Ldev/duo/hookprobe/f$a;->b:Landroid/widget/TextView;

    iget-object p2, p0, Ldev/duo/hookprobe/f$a;->a:[I

    aget p2, p2, p3

    invoke-static {p2}, Landroid/graphics/Color;->luminance(I)F

    move-result p2

    const p4, 0x3ee66666    # 0.45f

    cmpl-float p2, p2, p4

    if-lez p2, :cond_1

    const p2, -0xcfcdc8

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    move p1, p3

    :goto_1
    const/4 p2, 0x3

    if-ge p1, p2, :cond_2

    .line 6
    iget-object p2, p0, Ldev/duo/hookprobe/f$a;->c:[Landroid/widget/SeekBar;

    aget-object p2, p2, p1

    iget-object p4, p0, Ldev/duo/hookprobe/f$a;->a:[I

    aget p4, p4, p3

    mul-int/lit8 v0, p1, 0x8

    rsub-int/lit8 v0, v0, 0x10

    shr-int/2addr p4, v0

    and-int/lit16 p4, p4, 0xff

    invoke-virtual {p2, p4}, Landroid/widget/ProgressBar;->setProgress(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
