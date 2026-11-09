.class final Ldev/duo/hookprobe/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/hookprobe/r$a;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Ldev/duo/hookprobe/r$a;->c:I

    .line 4
    iput-object p3, p0, Ldev/duo/hookprobe/r$a;->b:Ljava/lang/String;

    return-void
.end method
