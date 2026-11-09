.class public final Ldev/duo/taskcore/SystemGate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:[Ljava/lang/String;

.field private static volatile m:[Ljava/lang/reflect/Field;

.field public static final n:Ldev/duo/taskcore/SystemGate;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
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

    sput-object v0, Ldev/duo/taskcore/SystemGate;->l:[Ljava/lang/String;

    .line 9
    new-instance v0, Ldev/duo/taskcore/SystemGate;

    const/16 v1, 0xa

    new-array v1, v1, [Z

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldev/duo/taskcore/SystemGate;-><init>([ZZ)V

    sput-object v0, Ldev/duo/taskcore/SystemGate;->n:Ldev/duo/taskcore/SystemGate;

    return-void
.end method

.method private constructor <init>([Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/SystemGate;-><init>([ZZ)V

    return-void
.end method

.method private constructor <init>([ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->k:Z

    .line 4
    const/4 p2, 0x0

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->a:Z

    const/4 p2, 0x1

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->b:Z

    const/4 p2, 0x2

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->c:Z

    const/4 p2, 0x3

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->d:Z

    const/4 p2, 0x4

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->e:Z

    .line 5
    const/4 p2, 0x5

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->f:Z

    const/4 p2, 0x6

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->g:Z

    const/4 p2, 0x7

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->h:Z

    const/16 p2, 0x8

    aget-boolean p2, p1, p2

    iput-boolean p2, p0, Ldev/duo/taskcore/SystemGate;->i:Z

    const/16 p2, 0x9

    aget-boolean p1, p1, p2

    iput-boolean p1, p0, Ldev/duo/taskcore/SystemGate;->j:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ldev/duo/taskcore/SystemGate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1
    sget-object v0, Ldev/duo/taskcore/SystemGate;->m:[Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Ldev/duo/taskcore/SystemGate;->l:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/reflect/Field;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ldev/duo/taskcore/SystemGate;->l:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sput-object v2, Ldev/duo/taskcore/SystemGate;->m:[Ljava/lang/reflect/Field;

    move-object v0, v2

    .line 7
    :cond_1
    sget-object v2, Ldev/duo/taskcore/SystemGate;->l:[Ljava/lang/String;

    array-length v2, v2

    new-array v3, v2, [Z

    :goto_1
    if-ge v1, v2, :cond_2

    .line 8
    aget-object v4, v0, v1

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Ldev/duo/taskcore/SystemGate;

    invoke-direct {p0, v3}, Ldev/duo/taskcore/SystemGate;-><init>([Z)V

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->d:Z

    if-eqz v0, :cond_0

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
    iget-boolean v0, p0, Ldev/duo/taskcore/SystemGate;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bouncer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " panel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remoteInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headsUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " switching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldev/duo/taskcore/SystemGate;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
