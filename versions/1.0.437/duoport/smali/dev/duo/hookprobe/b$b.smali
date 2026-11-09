.class final Ldev/duo/hookprobe/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/io/File;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/hookprobe/b$b;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Ldev/duo/hookprobe/b$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ldev/duo/hookprobe/b$b;->c:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Ldev/duo/hookprobe/b$b;->d:J

    return-void
.end method
