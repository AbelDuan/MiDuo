.class Ldev/duo/hookprobe/TentClockActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/TentClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/TentClockActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/TentClockActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$b;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$b;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/TentClockActivity;->n(Ldev/duo/hookprobe/TentClockActivity;)V

    return-void
.end method
