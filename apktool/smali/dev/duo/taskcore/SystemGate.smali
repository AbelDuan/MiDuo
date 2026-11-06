.class public final Ldev/duo/taskcore/SystemGate;
.super Ljava/lang/Object;
.source "SystemGate.java"


# static fields
.field private static final NAMES:[Ljava/lang/String;

.field public static final UNKNOWN:Ldev/duo/taskcore/SystemGate;

.field private static volatile fields:[Ljava/lang/reflect/Field;


# instance fields
.field public final bouncer:Z

.field public final controlCenter:Z

.field public final dozing:Z

.field public final headsUp:Z

.field public final keyguard:Z

.field public final occluded:Z

.field public final panel:Z

.field public final remoteInput:Z

.field public final shade:Z

.field public final switchingUsers:Z

.field public final unknown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 10
    const-string v8, "headsUpNotificationShowing"

    const-string v9, "isSwitchingUsers"

    const-string v0, "keyguardShowing"

    const-string v1, "keyguardOccluded"

    const-string v2, "bouncerShowing"

    const-string v3, "dozing"

    const-string v4, "shadeOrQsExpanded"

    const-string v5, "controlCenterExpanded"

    const-string v6, "panelVisible"

    const-string v7, "remoteInputActive"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/taskcore/SystemGate;->NAMES:[Ljava/lang/String;

    .line 18
    new-instance v0, Ldev/duo/taskcore/SystemGate;

    sget-object v1, Ldev/duo/taskcore/SystemGate;->NAMES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/SystemGate;-><init>([ZZ)V

    sput-object v0, Ldev/duo/taskcore/SystemGate;->UNKNOWN:Ldev/duo/taskcore/SystemGate;

    return-void
.end method

.method private constructor <init>([Z)V
    .locals 1

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/SystemGate;-><init>([ZZ)V

    return-void
.end method

.method private constructor <init>([ZZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->unknown:Z

    .line 24
    const/4 p2, 0x0

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->keyguard:Z

    const/4 p2, 0x1

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->occluded:Z

    const/4 p2, 0x2

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->bouncer:Z

    const/4 p2, 0x3

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->dozing:Z

    const/4 p2, 0x4

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->shade:Z

    .line 25
    const/4 p2, 0x5

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->controlCenter:Z

    const/4 p2, 0x6

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->panel:Z

    const/4 p2, 0x7

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->remoteInput:Z

    const/16 p2, 0x8

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->headsUp:Z

    const/16 p2, 0x9

    aget-boolean p1, p1, p2

    iput-boolean p1, p0, Ldev/duo/taskcore/SystemGate;->switchingUsers:Z

    .line 26
    return-void
.end method

.method public static read(Ljava/lang/Object;)Ldev/duo/taskcore/SystemGate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 30
    sget-object v0, Ldev/duo/taskcore/SystemGate;->fields:[Ljava/lang/reflect/Field;

    .line 31
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 32
    sget-object v0, Ldev/duo/taskcore/SystemGate;->NAMES:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/reflect/Field;

    .line 33
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ldev/duo/taskcore/SystemGate;->NAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v4, v2, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_0
    sput-object v2, Ldev/duo/taskcore/SystemGate;->fields:[Ljava/lang/reflect/Field;

    move-object v0, v2

    .line 36
    :cond_1
    sget-object v2, Ldev/duo/taskcore/SystemGate;->NAMES:[Ljava/lang/String;

    array-length v2, v2

    new-array v3, v2, [Z

    .line 37
    nop

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_2
    new-instance p0, Ldev/duo/taskcore/SystemGate;

    invoke-direct {p0, v3}, Ldev/duo/taskcore/SystemGate;-><init>([Z)V

    return-object p0
.end method


# virtual methods
.method public blocksActions()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->unknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->keyguard:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->dozing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->shade:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->controlCenter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->panel:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->remoteInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->headsUp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->bouncer:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public requiresClose()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->unknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->switchingUsers:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public requiresPause()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->keyguard:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->dozing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->unknown:Z

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->keyguard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->occluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bouncer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->bouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->dozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->shade:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->controlCenter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " panel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->panel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remoteInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->remoteInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headsUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->headsUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " switching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->switchingUsers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
