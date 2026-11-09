.class Ldev/duo/hookprobe/G$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/G;->a(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:I

.field final synthetic c:Landroid/content/SharedPreferences;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ldev/duo/hookprobe/G;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/G;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/G$b;->e:Ldev/duo/hookprobe/G;

    iput-object p2, p0, Ldev/duo/hookprobe/G$b;->c:Landroid/content/SharedPreferences;

    iput-object p3, p0, Ldev/duo/hookprobe/G$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 p1, 0x64

    iput p1, p0, Ldev/duo/hookprobe/G$b;->b:I

    return-void
.end method


# virtual methods
.method public getAsInt()I
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Ldev/duo/hookprobe/G$b;->a:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 3
    iget-object v2, p0, Ldev/duo/hookprobe/G$b;->e:Ldev/duo/hookprobe/G;

    invoke-static {v2}, Ldev/duo/hookprobe/G;->a(Ldev/duo/hookprobe/G;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Ldev/duo/hookprobe/G$b;->c:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    .line 7
    invoke-static {}, Ldev/duo/hookprobe/G;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldev/duo/hookprobe/G$b;->c:Landroid/content/SharedPreferences;

    invoke-static {v2}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldev/duo/hookprobe/G$b;->c:Landroid/content/SharedPreferences;

    iget-object v3, p0, Ldev/duo/hookprobe/G$b;->d:Ljava/lang/String;

    .line 8
    invoke-static {v3}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldev/duo/hookprobe/G$b;->d:Ljava/lang/String;

    invoke-static {v4}, Ldev/duo/hookprobe/P;->e(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldev/duo/hookprobe/G$b;->c:Landroid/content/SharedPreferences;

    iget-object v3, p0, Ldev/duo/hookprobe/G$b;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Ldev/duo/hookprobe/P;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    :cond_1
    iget-object v2, p0, Ldev/duo/hookprobe/G$b;->c:Landroid/content/SharedPreferences;

    iget-object v3, p0, Ldev/duo/hookprobe/G$b;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Ldev/duo/hookprobe/P;->g(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x64

    .line 10
    :goto_0
    iput v2, p0, Ldev/duo/hookprobe/G$b;->b:I

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Ldev/duo/hookprobe/G$b;->a:J

    .line 13
    :cond_3
    iget v0, p0, Ldev/duo/hookprobe/G$b;->b:I

    return v0
.end method
