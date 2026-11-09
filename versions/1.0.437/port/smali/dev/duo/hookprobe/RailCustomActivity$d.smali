.class final Ldev/duo/hookprobe/RailCustomActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/RailCustomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Landroid/graphics/drawable/Drawable;

.field final e:I

.field final f:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/hookprobe/RailCustomActivity$d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ldev/duo/hookprobe/RailCustomActivity$d;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ldev/duo/hookprobe/RailCustomActivity$d;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ldev/duo/hookprobe/RailCustomActivity$d;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    iput p5, p0, Ldev/duo/hookprobe/RailCustomActivity$d;->e:I

    .line 7
    iput-boolean p6, p0, Ldev/duo/hookprobe/RailCustomActivity$d;->f:Z

    return-void
.end method
