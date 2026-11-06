.class Ldev/duo/hookprobe/MainActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/MainActivity;->d()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/MainActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/MainActivity$b;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/duo/hookprobe/MainActivity$b;->a:Ldev/duo/hookprobe/MainActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/MainActivity;->a(Ldev/duo/hookprobe/MainActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
