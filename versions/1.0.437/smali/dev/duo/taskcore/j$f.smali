.class final Ldev/duo/taskcore/j$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field final a:Landroid/app/PendingIntent;

.field final b:I


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$f;->a:Landroid/app/PendingIntent;

    iput p2, p0, Ldev/duo/taskcore/j$f;->b:I

    return-void
.end method
