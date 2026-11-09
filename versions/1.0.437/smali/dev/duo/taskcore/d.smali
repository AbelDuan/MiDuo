.class public final Ldev/duo/taskcore/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/d$a;,
        Ldev/duo/taskcore/d$b;,
        Ldev/duo/taskcore/d$c;
    }
.end annotation


# instance fields
.field public final a:Ldev/duo/taskcore/d$b;

.field public final b:J

.field public final c:I

.field public d:Ldev/duo/taskcore/d$c;

.field public e:Ldev/duo/taskcore/d$a;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Z

.field public k:Z

.field public l:Z

.field public final m:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ldev/duo/taskcore/d$b;JI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ldev/duo/taskcore/d$a;->a:Ldev/duo/taskcore/d$a;

    iput-object v0, p0, Ldev/duo/taskcore/d;->e:Ldev/duo/taskcore/d$a;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/d;->m:Landroid/graphics/Rect;

    .line 14
    iput-object p1, p0, Ldev/duo/taskcore/d;->a:Ldev/duo/taskcore/d$b;

    iput-wide p2, p0, Ldev/duo/taskcore/d;->b:J

    iput p4, p0, Ldev/duo/taskcore/d;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/d;->e:Ldev/duo/taskcore/d$a;

    sget-object v1, Ldev/duo/taskcore/d$a;->b:Ldev/duo/taskcore/d$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Ldev/duo/taskcore/d$a;->c:Ldev/duo/taskcore/d$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Ldev/duo/taskcore/d$a;->d:Ldev/duo/taskcore/d$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/d;->a:Ldev/duo/taskcore/d$b;

    iget v1, v1, Ldev/duo/taskcore/d$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/d;->a:Ldev/duo/taskcore/d$b;

    iget-object v1, v1, Ldev/duo/taskcore/d$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/d;->a:Ldev/duo/taskcore/d$b;

    iget v1, v1, Ldev/duo/taskcore/d$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldev/duo/taskcore/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/d;->e:Ldev/duo/taskcore/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
