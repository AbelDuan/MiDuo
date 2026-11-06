.class final Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtm/m/os4/systemuihook/newnotificationcenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final g:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;


# instance fields
.field final a:Z

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->g:[Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    array-length v1, v1

    new-array v6, v1, [I

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-direct/range {v0 .. v6}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;-><init>(ZIIII[I)V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->g:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    return-void
.end method

.method constructor <init>(ZIIII[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->a:Z

    .line 3
    iput p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->b:I

    .line 4
    iput p3, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->c:I

    .line 5
    iput p4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->d:I

    .line 6
    iput p5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->e:I

    .line 7
    iput-object p6, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->f:[I

    return-void
.end method
