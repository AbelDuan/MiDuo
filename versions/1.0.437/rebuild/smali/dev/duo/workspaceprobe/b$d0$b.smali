.class Ldev/duo/workspaceprobe/b$d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b$d0;-><init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$K;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b;

.field final synthetic b:Ldev/duo/workspaceprobe/b$d0;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b$d0;Ldev/duo/workspaceprobe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$d0$b;->b:Ldev/duo/workspaceprobe/b$d0;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$d0$b;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$d0$b;->b:Ldev/duo/workspaceprobe/b$d0;

    invoke-virtual {p1}, Ldev/duo/workspaceprobe/b$d0;->d()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
