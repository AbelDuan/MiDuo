.class Ldev/duo/hookprobe/G$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/G;->b(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Field;

.field final synthetic b:Ljava/lang/reflect/Method;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Ldev/duo/hookprobe/G;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/G;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/G$a;->d:Ldev/duo/hookprobe/G;

    iput-object p2, p0, Ldev/duo/hookprobe/G$a;->a:Ljava/lang/reflect/Field;

    iput-object p3, p0, Ldev/duo/hookprobe/G$a;->b:Ljava/lang/reflect/Method;

    iput-object p4, p0, Ldev/duo/hookprobe/G$a;->c:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "DuoHookProbe"

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    invoke-static {}, Ldev/duo/hookprobe/G;->a()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    :try_start_0
    iget-object p3, p0, Ldev/duo/hookprobe/G$a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3

    .line 6
    iget-object p4, p0, Ldev/duo/hookprobe/G$a;->b:Ljava/lang/reflect/Method;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    iget-object p6, p0, Ldev/duo/hookprobe/G$a;->c:Ljava/lang/reflect/Field;

    const/4 p7, 0x0

    invoke-virtual {p6, p7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    filled-new-array {p5, p6}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Ldev/duo/hookprobe/G$a;->d:Ldev/duo/hookprobe/G;

    const-string p4, "batteryBlurReplay"

    const/4 p5, 0x4

    invoke-static {p1, p4, p5}, Ldev/duo/hookprobe/G;->a(Ldev/duo/hookprobe/G;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "BATTERY_BLUR replayed radius="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    const-string p3, "BATTERY_BLUR replay failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
