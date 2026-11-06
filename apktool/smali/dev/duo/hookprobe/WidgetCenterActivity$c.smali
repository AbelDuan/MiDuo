.class final Ldev/duo/hookprobe/WidgetCenterActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/WidgetCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final a:[I

.field final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final c:J


# direct methods
.method constructor <init>([ILjava/util/LinkedHashMap;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/hookprobe/WidgetCenterActivity$c;->a:[I

    .line 3
    iput-object p2, p0, Ldev/duo/hookprobe/WidgetCenterActivity$c;->b:Ljava/util/LinkedHashMap;

    .line 4
    iput-wide p3, p0, Ldev/duo/hookprobe/WidgetCenterActivity$c;->c:J

    return-void
.end method
