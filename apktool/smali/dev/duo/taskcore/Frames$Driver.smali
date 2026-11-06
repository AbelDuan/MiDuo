.class abstract Ldev/duo/taskcore/Frames$Driver;
.super Ljava/lang/Object;
.source "Frames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/Frames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Driver"
.end annotation


# instance fields
.field end:Ljava/lang/Runnable;

.field handle:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final finish()V
    .locals 2

    .line 21
    iget-object v0, p0, Ldev/duo/taskcore/Frames$Driver;->end:Ljava/lang/Runnable;

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/Frames$Driver;->end:Ljava/lang/Runnable;

    .line 23
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 24
    :cond_0
    return-void
.end method

.method abstract frame(J)V
.end method
