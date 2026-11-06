.class public final Ldev/duo/taskcore/TaskBinding$Origin;
.super Ljava/lang/Object;
.source "TaskBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/TaskBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Origin"
.end annotation


# instance fields
.field public final displayId:I

.field public final info:Ljava/lang/Object;

.field public final leash:Ljava/lang/Object;

.field public final originalOwner:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final taskId:I

.field public final token:Ljava/lang/Object;

.field public final tokenBinder:Ljava/lang/Object;

.field public final userId:I


# direct methods
.method public constructor <init>(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iput p2, p0, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    iput p3, p0, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    iput-object p4, p0, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    .line 25
    iput-object p5, p0, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    iput-object p6, p0, Ldev/duo/taskcore/TaskBinding$Origin;->info:Ljava/lang/Object;

    iput-object p7, p0, Ldev/duo/taskcore/TaskBinding$Origin;->leash:Ljava/lang/Object;

    iput-object p8, p0, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    .line 26
    iput-object p9, p0, Ldev/duo/taskcore/TaskBinding$Origin;->originalOwner:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public same(ILjava/lang/Object;II)Z
    .locals 1

    .line 30
    iget v0, p0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    iget p1, p0, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    if-ne p1, p3, :cond_0

    iget p1, p0, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
