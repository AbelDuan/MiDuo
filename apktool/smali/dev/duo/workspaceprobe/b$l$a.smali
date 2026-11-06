.class final Ldev/duo/workspaceprobe/b$l$a;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b$l;->onActiveDataSubscriptionIdChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ldev/duo/workspaceprobe/b$l;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b$l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$l$a;->b:Ldev/duo/workspaceprobe/b$l;

    iput p2, p0, Ldev/duo/workspaceprobe/b$l$a;->a:I

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l$a;->b:Ldev/duo/workspaceprobe/b$l;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b$l;->a(Ldev/duo/workspaceprobe/b$l;)I

    move-result v0

    iget v1, p0, Ldev/duo/workspaceprobe/b$l$a;->a:I

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$l$a;->b:Ldev/duo/workspaceprobe/b$l;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b$l;->d:Ldev/duo/workspaceprobe/b$h0;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->a(Landroid/telephony/TelephonyDisplayInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Ldev/duo/workspaceprobe/b$h0;->c0:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$l$a;->b:Ldev/duo/workspaceprobe/b$l;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b$l;->e:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->O(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
