.class final Ldev/duo/hookprobe/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:F

.field final c:J

.field d:[F

.field e:Z

.field f:Z

.field g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;FJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/x$a;->a:Ljava/lang/String;

    iput p2, p0, Ldev/duo/hookprobe/x$a;->b:F

    iput-wide p3, p0, Ldev/duo/hookprobe/x$a;->c:J

    return-void
.end method
