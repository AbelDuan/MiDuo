.class final Ldev/duo/taskcore/VirtualFocus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:I = -0x80000000


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/high16 v0, -0x80000000

    iput v0, p0, Ldev/duo/taskcore/VirtualFocus;->a:I

    iput v0, p0, Ldev/duo/taskcore/VirtualFocus;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .line 3
    iget v0, p0, Ldev/duo/taskcore/VirtualFocus;->a:I

    .line 4
    const/high16 v1, -0x80000000

    iput v1, p0, Ldev/duo/taskcore/VirtualFocus;->a:I

    .line 5
    iput v1, p0, Ldev/duo/taskcore/VirtualFocus;->b:I

    return v0
.end method

.method a(I)Z
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 1
    iget v1, p0, Ldev/duo/taskcore/VirtualFocus;->a:I

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput v0, p0, Ldev/duo/taskcore/VirtualFocus;->a:I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method b(I)[I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 1
    iget v0, p0, Ldev/duo/taskcore/VirtualFocus;->a:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Ldev/duo/taskcore/VirtualFocus;->a:I

    .line 4
    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method c(I)[I
    .locals 1

    .line 1
    iget v0, p0, Ldev/duo/taskcore/VirtualFocus;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Ldev/duo/taskcore/VirtualFocus;->b:I

    .line 4
    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method
