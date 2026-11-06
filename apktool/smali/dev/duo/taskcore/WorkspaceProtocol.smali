.class public final Ldev/duo/taskcore/WorkspaceProtocol;
.super Ljava/lang/Object;
.source "WorkspaceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/WorkspaceProtocol$Client;,
        Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;,
        Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;
    }
.end annotation


# static fields
.field public static final BEGIN_RETURN:I = 0x4

.field public static final CALL_STATE:I = 0x4

.field public static final CANCEL_SOURCE:I = 0xa

.field public static final ERR_BUILD:I = 0x2

.field public static final ERR_CALLER:I = 0x1

.field public static final ERR_INTERNAL:I = 0x5

.field public static final ERR_SESSION:I = 0x3

.field public static final ERR_TASK:I = 0x4

.field public static final EVENT_INTERFACE:Ljava/lang/String; = "dev.duo.taskcore.WorkspaceEvents"

.field public static final FINISH_RETURN:I = 0x5

.field public static final FSI_FINISHED:I = 0x3

.field public static final FSI_FOREGROUND:I = 0x2

.field public static final HELLO:I = 0x7

.field public static final INTERFACE:Ljava/lang/String; = "android.view.IWindowManager"

.field public static final LAYOUT:I = 0x3

.field public static final LOOKUP_SOURCE:I = 0xb

.field private static final MAGIC_BASE:I = 0x74420000

.field public static final MAX_PAYLOAD:I = 0x1000

.field public static final OK:I = 0x0

.field public static final OPEN:I = 0x1

.field public static final QUERY:I = 0x6

.field public static final REGISTER_SOURCE:I = 0x9

.field public static final RELEASE_TASK:I = 0x8

.field public static final SNAPSHOT:I = 0x2

.field public static final SOURCE_CALLBACK:I = 0x1

.field public static final SOURCE_CROSS_APP:I = 0x3

.field public static final SOURCE_FSI:I = 0x2

.field public static final SOURCE_KEY:Ljava/lang/String; = "dev.duo.taskcore.source"

.field public static final SOURCE_NOTIFICATION:I = 0x1

.field public static final SOURCE_RESULT:I = 0x1

.field public static final SOURCE_SELF_HOME:I = 0x4

.field public static final TRANSACTION:I = 0xf40201

.field public static final USER_SELECTION:I = 0xc

.field public static final VERSION:I = 0x1

.field public static volatile buildId:Ljava/lang/String;

.field public static volatile modulePackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, ""

    sput-object v0, Ldev/duo/taskcore/WorkspaceProtocol;->modulePackage:Ljava/lang/String;

    sput-object v0, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static header(Landroid/os/Parcel;IJLandroid/os/IBinder;)V
    .locals 1

    .line 52
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ldev/duo/taskcore/WorkspaceProtocol;->magic()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 58
    sget-object p1, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static magic()I
    .locals 2

    .line 46
    sget-object v0, Ldev/duo/taskcore/WorkspaceProtocol;->modulePackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/high16 v1, 0x74420000

    xor-int/2addr v0, v1

    return v0
.end method

.method static readRect(Landroid/os/Parcel;)Landroid/graphics/Rect;
    .locals 4

    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method static withdraw(Ljava/util/Map;Landroid/os/Parcel;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TS;>;",
            "Landroid/os/Parcel;",
            "Ljava/util/function/Function<",
            "TS;",
            "Landroid/os/IBinder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "task "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " has no lease with this token"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static writeRect(Landroid/os/Parcel;Landroid/graphics/Rect;)V
    .locals 1

    .line 62
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method

.method static writeRelease(Landroid/os/Parcel;ILandroid/os/IBinder;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 76
    return-void
.end method
