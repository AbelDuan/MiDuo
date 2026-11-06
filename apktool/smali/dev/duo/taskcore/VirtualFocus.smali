.class final Ldev/duo/taskcore/VirtualFocus;
.super Ljava/lang/Object;
.source "VirtualFocus.java"


# static fields
.field static final NONE:I = -0x80000000


# instance fields
.field focused:I

.field hovered:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/high16 v0, -0x80000000

    iput v0, p0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    iput v0, p0, Ldev/duo/taskcore/VirtualFocus;->hovered:I

    return-void
.end method


# virtual methods
.method clear(I)Z
    .locals 2

    .line 21
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    iget v1, p0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iput v0, p0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    .line 23
    const/4 p1, 0x1

    return p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method clearAll()I
    .locals 2

    .line 28
    iget v0, p0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    .line 29
    const/high16 v1, -0x80000000

    iput v1, p0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    .line 30
    iput v1, p0, Ldev/duo/taskcore/VirtualFocus;->hovered:I

    .line 31
    return v0
.end method

.method focus(I)[I
    .locals 1

    .line 13
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    iget v0, p0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    .line 15
    iput p1, p0, Ldev/duo/taskcore/VirtualFocus;->focused:I

    .line 16
    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method hover(I)[I
    .locals 1

    .line 36
    iget v0, p0, Ldev/duo/taskcore/VirtualFocus;->hovered:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    iget v0, p0, Ldev/duo/taskcore/VirtualFocus;->hovered:I

    .line 38
    iput p1, p0, Ldev/duo/taskcore/VirtualFocus;->hovered:I

    .line 39
    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method
