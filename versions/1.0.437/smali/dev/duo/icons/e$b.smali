.class public final Ldev/duo/icons/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/icons/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/icons/e$b;->a:Ljava/lang/String;

    iput p2, p0, Ldev/duo/icons/e$b;->d:I

    iput-object p3, p0, Ldev/duo/icons/e$b;->b:Ljava/lang/String;

    iput p4, p0, Ldev/duo/icons/e$b;->e:I

    iput-object p5, p0, Ldev/duo/icons/e$b;->c:Ljava/lang/String;

    return-void
.end method
