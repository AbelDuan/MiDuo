.class Ldev/duo/hookprobe/U$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/U;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;I[Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p4, p0, Ldev/duo/hookprobe/U$a;->a:Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object p2, p0, Ldev/duo/hookprobe/U$a;->a:Landroid/app/Activity;

    sget p3, Ldev/duo/hookprobe/U;->b:I

    const/high16 v0, 0x41600000    # 14.0f

    const/16 v1, 0x1f4

    invoke-static {p2, v0, p3, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object p2

    .line 2
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Ldev/duo/hookprobe/U$a;->a:Landroid/app/Activity;

    const/high16 p3, 0x42600000    # 56.0f

    invoke-static {p1, p3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 4
    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    iget-object p1, p0, Ldev/duo/hookprobe/U$a;->a:Landroid/app/Activity;

    const/high16 p3, 0x41b00000    # 22.0f

    invoke-static {p1, p3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Ldev/duo/hookprobe/U$a;->a:Landroid/app/Activity;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Ldev/duo/hookprobe/U$a;->a:Landroid/app/Activity;

    invoke-static {v2, p3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result p3

    iget-object v2, p0, Ldev/duo/hookprobe/U$a;->a:Landroid/app/Activity;

    invoke-static {v2, v1}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2, p1, v0, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object p2
.end method
