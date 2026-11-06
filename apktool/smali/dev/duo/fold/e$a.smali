.class Ldev/duo/fold/e$a;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/fold/e;-><init>(Landroid/os/Handler;Ldev/duo/fold/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ldev/duo/fold/e$b;

.field final synthetic c:Ldev/duo/fold/e;


# direct methods
.method public static synthetic $r8$lambda$ueoY-O7uBZYj6w6Fv8GSvMhm4lw(Ldev/duo/fold/e$b;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ldev/duo/fold/e$a;->a(Ldev/duo/fold/e$b;IJJ)V

    return-void
.end method

.method constructor <init>(Ldev/duo/fold/e;Landroid/os/Handler;Ldev/duo/fold/e$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/fold/e$a;->c:Ldev/duo/fold/e;

    iput-object p2, p0, Ldev/duo/fold/e$a;->a:Landroid/os/Handler;

    iput-object p3, p0, Ldev/duo/fold/e$a;->b:Ldev/duo/fold/e$b;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method private static synthetic a(Ldev/duo/fold/e$b;IJJ)V
    .locals 0

    .line 1
    invoke-interface/range {p0 .. p5}, Ldev/duo/fold/e$b;->a(IJJ)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    const-string p4, "dev.duo.foldanim1.FRAME"

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 5
    iget-object p2, p0, Ldev/duo/fold/e$a;->a:Landroid/os/Handler;

    iget-object v2, p0, Ldev/duo/fold/e$a;->b:Ldev/duo/fold/e$b;

    new-instance v1, Ldev/duo/fold/e$a$$ExternalSyntheticLambda0;

    move v3, p1

    invoke-direct/range {v1 .. v7}, Ldev/duo/fold/e$a$$ExternalSyntheticLambda0;-><init>(Ldev/duo/fold/e$b;IJJ)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p3

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "\u7cfb\u7edf\u63d0\u4ea4\u56de\u8c03\u4e13\u7528"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
