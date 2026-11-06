.class Ldev/duo/hookprobe/L$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/L;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceBind(Lio/github/libxposed/service/XposedService;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ldev/duo/hookprobe/L;->a(Lio/github/libxposed/service/XposedService;)Lio/github/libxposed/service/XposedService;

    .line 3
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "duo_top"

    invoke-virtual {p1, v0}, Lio/github/libxposed/service/XposedService;->getRemotePreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_mem

    goto :goto_listen

    :cond_mem
    new-instance v0, Ldev/duo/hookprobe/MemPrefs;

    invoke-direct {v0}, Ldev/duo/hookprobe/MemPrefs;-><init>()V

    :goto_listen

    sget-object v1, Ldev/duo/hookprobe/L;->p:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 7
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->g:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 8
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 9
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->n:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 12
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 13
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 14
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->j:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 15
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->k:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 16
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->m:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 17
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->l:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 20
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ldev/duo/hookprobe/L;->o:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 22
    :try_start_0
    invoke-static {}, Ldev/duo/hookprobe/L;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, p1}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    const-string v0, "MiDuoGuide"

    const-string v1, "Master switch default not settled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onServiceDied(Lio/github/libxposed/service/XposedService;)V
    .locals 1

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/L;->a()Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ldev/duo/hookprobe/L;->a(Lio/github/libxposed/service/XposedService;)Lio/github/libxposed/service/XposedService;

    :cond_0
    return-void
.end method
