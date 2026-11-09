.class public Ldev/duo/port/SettingsActivity$a;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public host:Ldev/duo/port/SettingsActivity;

.field public key:Ljava/lang/String;

.field public tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ldev/duo/port/SettingsActivity$a;->host:Ldev/duo/port/SettingsActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p0}, Ldev/duo/port/SettingsActivity;->a(Ldev/duo/port/SettingsActivity;Ldev/duo/port/SettingsActivity$a;)V

    return-void
.end method
