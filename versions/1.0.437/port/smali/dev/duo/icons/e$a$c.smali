.class final Ldev/duo/icons/e$a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/icons/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final d:J

.field final e:J

.field final f:J


# direct methods
.method constructor <init>(Ljava/lang/String;IIJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/icons/e$a$c;->a:Ljava/lang/String;

    iput p2, p0, Ldev/duo/icons/e$a$c;->b:I

    iput p3, p0, Ldev/duo/icons/e$a$c;->c:I

    iput-wide p4, p0, Ldev/duo/icons/e$a$c;->d:J

    iput-wide p6, p0, Ldev/duo/icons/e$a$c;->e:J

    iput-wide p8, p0, Ldev/duo/icons/e$a$c;->f:J

    return-void
.end method
