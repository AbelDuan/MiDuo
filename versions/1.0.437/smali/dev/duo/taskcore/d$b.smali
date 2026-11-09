.class public final Ldev/duo/taskcore/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ldev/duo/taskcore/d$b;->a:I

    iput p2, p0, Ldev/duo/taskcore/d$b;->b:I

    iput p3, p0, Ldev/duo/taskcore/d$b;->c:I

    iput-object p4, p0, Ldev/duo/taskcore/d$b;->d:Ljava/lang/Object;

    .line 3
    iput-object p5, p0, Ldev/duo/taskcore/d$b;->e:Ljava/lang/Object;

    iput-object p6, p0, Ldev/duo/taskcore/d$b;->f:Ljava/lang/Object;

    iput-object p7, p0, Ldev/duo/taskcore/d$b;->g:Ljava/lang/Object;

    iput-object p8, p0, Ldev/duo/taskcore/d$b;->h:Ljava/lang/String;

    .line 4
    iput-object p9, p0, Ldev/duo/taskcore/d$b;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;II)Z
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/taskcore/d$b;->a:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Ldev/duo/taskcore/d$b;->e:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    iget p1, p0, Ldev/duo/taskcore/d$b;->b:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Ldev/duo/taskcore/d$b;->c:I

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
