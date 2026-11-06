.class public final Ldev/duo/hookprobe/ConfigProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x7d0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 167
    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(I)Landroid/os/Bundle;
    .locals 8

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_c

    .line 136
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "LSPosed service not bound"

    invoke-static {p1, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    iget-object v1, v1, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "_global/master"

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 142
    const-string v6, "/enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    instance-of v6, v2, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 143
    sget-object v4, Ldev/duo/hookprobe/P;->i:Ljava/util/Set;

    .line 144
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    check-cast v2, Ljava/lang/Boolean;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v7

    .line 147
    :goto_1
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v5}, Ldev/duo/hookprobe/P;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v5}, Ldev/duo/hookprobe/P;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 150
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 151
    :cond_5
    const-string v3, "_global/licenseToken"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 152
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_6
    invoke-static {v5}, Ldev/duo/hookprobe/P;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 154
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 155
    :cond_7
    invoke-static {v5}, Ldev/duo/hookprobe/P;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "_global/nonDuoOuterTopPx"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_8
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 156
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 160
    :cond_9
    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    invoke-virtual {v1}, Ldev/duo/hookprobe/o;->m()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    sget-object v0, Ldev/duo/hookprobe/P;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    invoke-static {v1}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_b
    return-object p1

    .line 164
    :cond_c
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "system_server only"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 113
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    const-string p2, "LSPosed service not bound"

    invoke-static {p1, p2}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    iget-object v0, v1, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    .line 119
    const-class v1, Ldev/duo/hookprobe/B;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    const-string v2, "_global/trialUsedSec"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-eq p2, v2, :cond_1

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "_global/trialUsedSec"

    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    const-string p2, "commit failed"

    invoke-static {p1, p2}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    monitor-exit v1

    return-object p2

    .line 124
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p2, v2, :cond_2

    .line 125
    :try_start_2
    invoke-static {p2}, Ldev/duo/hookprobe/B;->b(I)V

    .line 126
    :cond_2
    const-string v1, "trialUsedSec"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string p2, "token"

    const-string v1, "_global/licenseToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    .line 123
    :catchall_0
    move-exception p2

    .line 128
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    :catchall_1
    move-exception p2

    .line 134
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 135
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "system_server only"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.systemui"

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x1

    if-ne v0, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v10

    .line 3
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-eq v0, v6, :cond_2

    if-eqz v0, :cond_2

    const/16 v6, 0x7d0

    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v5

    :goto_2
    if-nez v4, :cond_6

    if-nez v6, :cond_6

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    const-string v0, "pickState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "picker writes require SystemUI"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "own package only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "package required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_6
    :goto_3
    const-string v0, "pickState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_11

    if-eqz v3, :cond_c

    .line 16
    const-string v0, "start"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v6, :cond_7

    if-eqz v4, :cond_b

    :cond_7
    if-eqz v2, :cond_b

    .line 18
    const-string v0, "[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 19
    invoke-static {v7, v8}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-nez v0, :cond_8

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "LSPosed service not bound"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 21
    :cond_8
    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    .line 22
    invoke-virtual {v1}, Ldev/duo/hookprobe/o;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1, v2}, Ldev/duo/hookprobe/o;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Ldev/duo/hookprobe/F;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 24
    :cond_a
    :goto_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Duo \u5df2\u5173\u95ed"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "picker start requires owner or SystemUI"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_5
    if-eqz v3, :cond_f

    .line 32
    const-string v0, "end"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v4, :cond_e

    if-eqz v6, :cond_d

    goto :goto_6

    .line 33
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "cannot end picker"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_e
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Ldev/duo/hookprobe/F;->a(Landroid/content/Context;J)V

    .line 36
    :cond_f
    invoke-static {v2}, Ldev/duo/hookprobe/F;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v4, :cond_10

    if-nez v6, :cond_10

    .line 37
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_10
    return-object v0

    :cond_11
    if-eqz v2, :cond_21

    .line 40
    const-string v0, "[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 41
    const-class v11, Ldev/duo/hookprobe/F;

    monitor-enter v11

    .line 42
    :try_start_1
    const-class v12, Ldev/duo/hookprobe/o;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    invoke-static {v2}, Ldev/duo/hookprobe/F;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v3, :cond_20

    .line 45
    const-string v4, "active"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "token"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v1, "token"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    cmp-long v1, v13, v15

    if-eqz v1, :cond_12

    goto/16 :goto_d

    .line 47
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_c

    .line 50
    :cond_13
    const-string v1, "page"

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v4, "night"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_14

    const-string v9, "dark"

    goto :goto_7

    .line 53
    :cond_14
    const-string v9, "light"

    .line 52
    :goto_7
    nop

    .line 53
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/[A-Za-z_$][A-Za-z0-9_.$]*\\|"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v1, "invalid page"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    .line 54
    :cond_15
    :try_start_4
    const-string v6, "color"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    ushr-int/lit8 v9, v6, 0x18

    const/16 v13, 0xff

    if-eq v9, v13, :cond_16

    .line 55
    const-string v1, "invalid colour"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v0

    :cond_16
    nop

    .line 56
    :try_start_6
    invoke-static {v7, v8}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v7

    if-nez v7, :cond_17

    .line 57
    const-string v1, "LSPosed service not bound"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-object v0

    .line 58
    :cond_17
    move-object v8, v1

    :try_start_8
    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, v7}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    .line 59
    invoke-virtual {v1}, Ldev/duo/hookprobe/o;->m()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v1, v2}, Ldev/duo/hookprobe/o;->i(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    goto/16 :goto_b

    .line 60
    :cond_18
    iget-object v7, v1, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "/pageColors/"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "_revision"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v13, 0x0

    invoke-interface {v7, v9, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v7, "revision"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-eqz v7, :cond_19

    const-string v1, "\u914d\u7f6e\u5df2\u53d8\u5316\uff0c\u8bf7\u91cd\u65b0\u53d6\u8272"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-object v0

    .line 61
    :cond_19
    :try_start_a
    const-string v7, "default"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 63
    invoke-virtual {v1, v2, v10}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v2, v5}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v4, :cond_1a

    goto :goto_8

    :cond_1a
    move-object v7, v9

    :goto_8
    if-eqz v4, :cond_1b

    move-object v5, v9

    .line 64
    :cond_1b
    invoke-virtual {v1, v2, v7, v5}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v1, "\u9ed8\u8ba4\u8272\u4fdd\u5b58\u5931\u8d25"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-object v0

    .line 66
    :cond_1c
    :try_start_c
    const-string v0, "edge"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, "revision"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v5, "default"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move v5, v6

    move-object v3, v8

    move-wide v7, v13

    move v6, v0

    invoke-virtual/range {v1 .. v9}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;Ljava/lang/String;ZIIJZ)Landroid/os/Bundle;

    move-result-object v3

    .line 69
    const-string v0, "bound"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_1d

    .line 71
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 72
    :try_start_e
    const-string v0, "MiDuoTones"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "page colours shared without App version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v0, 0x0

    .line 73
    :goto_9
    :try_start_f
    const-string v4, "share"

    invoke-static {v1, v2, v0}, Ldev/duo/hookprobe/B;->a(Ldev/duo/hookprobe/o;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 74
    :try_start_10
    const-string v1, "MiDuoTones"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page colours not shared: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1d
    :goto_a
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    return-object v3

    .line 77
    :cond_1e
    :goto_b
    :try_start_12
    const-string v1, "Duo \u5df2\u5173\u95ed"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v12
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    monitor-exit v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    return-object v0

    .line 78
    :cond_1f
    :goto_c
    :try_start_14
    const-string v1, "\u5c4f\u5e55\u5df2\u7ecf\u9501\u5b9a\uff0c\u53d6\u8272\u786e\u8ba4\u5df2\u53d6\u6d88"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v12
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    monitor-exit v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    return-object v0

    .line 79
    :cond_20
    :goto_d
    :try_start_16
    const-string v1, "\u53d6\u8272\u6a21\u5f0f\u5df2\u53d8\u5316\uff0c\u8bf7\u91cd\u65b0\u53d6\u8272"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v12
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    monitor-exit v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    .line 109
    :try_start_18
    monitor-exit v12
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    throw v0

    .line 53
    :catchall_1
    move-exception v0

    .line 110
    monitor-exit v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    throw v0

    .line 111
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 172
    const-string v0, "applied"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "errors"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    const-string v0, "error"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1

    .line 165
    sget-object v0, Ldev/duo/hookprobe/P;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {p1}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ldev/duo/hookprobe/P;->e(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 168
    :cond_0
    const-string v0, "side"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 169
    :goto_0
    const-string v0, "inner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "outer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    sget-object p0, Ldev/duo/hookprobe/P;->t:[Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_1
    nop

    .line 171
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2
    const-string v0, "widget396Probe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0x7d0

    if-eqz v0, :cond_2

    if-eqz v5, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "shell or root only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/duo/hookprobe/V;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "\u5929\u6c14\u63a5\u53e3\u9a8c\u8bc1\u7b49\u5f85\u4e2d\u65ad"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    throw v0

    .line 18
    :cond_2
    const-string v0, "foldStart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Ldev/duo/hookprobe/q;->a(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 19
    :cond_3
    const-string v0, "trialTick"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {v1, v5, v3}, Ldev/duo/hookprobe/ConfigProvider;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 20
    :cond_4
    const-string v0, "duoState"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {v1, v5}, Ldev/duo/hookprobe/ConfigProvider;->a(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 21
    :cond_5
    const-string v0, "pickState"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "pickConfirm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_23

    .line 23
    :cond_6
    const-string v0, "pageTones"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "railPanelOrder"

    const-string v8, "railSidebarApps"

    const-string v9, "keepScreen"

    const/4 v11, 0x0

    if-nez v0, :cond_8

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 24
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v12, v11

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v12, 0x1

    .line 25
    :goto_3
    const-string v0, "railEnabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "searchButton"

    const-string v14, "notificationIcons"

    const-string v15, "rotationSuggest"

    if-nez v0, :cond_a

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 26
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "pickButton"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "foldSplit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "standbyClock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "statusStyles"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 27
    const-string v0, "railCustom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "iosNc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "workbench"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v16, v11

    goto :goto_5

    :cond_a
    :goto_4
    const/16 v16, 0x1

    :goto_5
    if-nez v16, :cond_b

    if-eqz v12, :cond_c

    .line 30
    :cond_b
    :try_start_2
    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "com.android.systemui"

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v5, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :catch_1
    move-exception v0

    :cond_c
    move v0, v11

    :goto_6
    if-eqz v5, :cond_e

    if-eq v5, v6, :cond_e

    if-eqz v0, :cond_d

    goto :goto_7

    .line 34
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "shell or root only (SystemUI: rail reads, pageTones, keepScreen, railSidebarApps and railPanelOrder only)"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_e
    :goto_7
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-nez v16, :cond_10

    if-eqz v12, :cond_f

    goto :goto_8

    :cond_f
    const-wide/16 v17, 0x1388

    goto :goto_9

    :cond_10
    :goto_8
    const-wide/16 v17, 0x3e8

    .line 37
    :goto_9
    :try_start_3
    invoke-static/range {v17 .. v18}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-nez v0, :cond_11

    .line 38
    const-string v0, "LSPosed service not bound (module enabled in LSPosed?)"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 39
    :cond_11
    new-instance v6, Ldev/duo/hookprobe/o;

    invoke-direct {v6, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    .line 40
    iget-object v0, v6, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    .line 43
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v10, "saved"

    const-string v11, "commit failed"

    move/from16 v18, v9

    const-string v9, "set"

    if-eqz v18, :cond_15

    const-string v1, "_global/screenOffTimeoutSaved"

    if-eqz v4, :cond_14

    .line 44
    :try_start_4
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 45
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_12

    .line 46
    const-string v0, "negative timeout"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 47
    :cond_12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-nez v2, :cond_13

    .line 48
    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_a

    .line 49
    :cond_13
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    :goto_a
    nop

    .line 50
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v5, v11}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 52
    :cond_14
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_20

    .line 57
    :cond_15
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v18, v8

    const-string v8, "_global/railSidebarApps"

    move/from16 v19, v12

    const-string v12, ""

    if-eqz v18, :cond_17

    if-eqz v4, :cond_16

    .line 58
    :try_start_5
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 59
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/hookprobe/J;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/hookprobe/J;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v5, v11}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 62
    :cond_16
    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 66
    :cond_17
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v18, v7

    const-string v7, "_global/railPanelOrder"

    if-eqz v18, :cond_19

    if-eqz v4, :cond_18

    .line 67
    :try_start_6
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 68
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/hookprobe/J;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/hookprobe/J;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v5, v11}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 71
    :cond_18
    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 76
    :cond_19
    const-string v10, "iosNc"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_1a

    .line 80
    const-string v3, "ios_notification_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_b

    .line 81
    :cond_1b
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1c

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b

    .line 82
    :cond_1c
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1d

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b

    .line 83
    :cond_1d
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_1e

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_b

    .line 84
    :cond_1e
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_1f

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b

    .line 85
    :cond_1f
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1a

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 89
    :cond_20
    const-string v10, "standbyClock"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v18, v10

    const-string v10, "on"

    if-eqz v18, :cond_22

    .line 90
    :try_start_7
    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->m()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->z()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_c

    :cond_21
    const/4 v0, 0x0

    .line 91
    :goto_c
    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_20

    .line 94
    :cond_22
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 95
    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->n()Z

    move-result v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_20

    .line 98
    :cond_23
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 99
    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->y()Z

    move-result v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_20

    .line 102
    :cond_24
    const-string v13, "pickButton"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 103
    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->t()Z

    move-result v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_20

    .line 107
    :cond_25
    const-string v13, "railCustom"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 108
    const-string v1, "layout"

    const-string v2, "_global/railCustom"

    const-string v3, "back,home,recents,dock,dock,dock,-"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "sidebarApps"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "panelOrder"

    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "sidebarFreeform"

    const-string v2, "_global/railSidebarFreeform"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    const-string v1, "sidebarKeyEnd"

    const-string v2, "_global/railSidebarKeyEnd"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_20

    .line 116
    :cond_26
    const-string v7, "workbench"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 117
    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->B()Z

    move-result v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_20

    .line 120
    :cond_27
    const-string v7, "foldSplit"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 121
    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->g()Z

    move-result v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v0, "nudge"

    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->f()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_20

    .line 125
    :cond_28
    const-string v7, "statusStyles"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 126
    const-string v0, "cellular"

    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->c()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string v0, "thin"

    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->A()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v0, "percentTop"

    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->s()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    sget-object v0, Ldev/duo/hookprobe/P;->e0:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v0, :cond_29

    .line 130
    invoke-virtual {v6, v11}, Ldev/duo/hookprobe/o;->e(I)I

    move-result v2

    aput v2, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 131
    :cond_29
    const-string v0, "dy"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_20

    .line 135
    :cond_2a
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 136
    const-string v1, "portraitRight"

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ldev/duo/hookprobe/o;->a(Z)Z

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v1, "landscapeRight"

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ldev/duo/hookprobe/o;->a(Z)Z

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v1, "_global/rotationSuggest"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->x()Z

    move-result v0

    invoke-virtual {v5, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_20

    .line 141
    :cond_2b
    const-string v7, "global"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string v8, "outer"

    const-string v10, "px"

    const-string v13, "inner"

    if-eqz v7, :cond_2d

    if-eqz v4, :cond_2c

    .line 142
    :try_start_8
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Ldev/duo/hookprobe/o;->b(I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 143
    invoke-static {v5, v11}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 144
    :cond_2c
    const-string v0, "globalDefaultPx"

    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->j()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v0, "globalDefaultPxInner"

    invoke-virtual {v6, v13}, Ldev/duo/hookprobe/o;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v0, "globalDefaultPxOuter"

    invoke-virtual {v6, v8}, Ldev/duo/hookprobe/o;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_20

    .line 149
    :cond_2d
    const-string v7, "list"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "global default inner="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6, v13}, Ldev/duo/hookprobe/o;->j(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 151
    invoke-virtual {v6, v8}, Ldev/duo/hookprobe/o;->j(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->r()Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    invoke-static {v0, v4, v13}, Ldev/duo/hookprobe/P;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " enabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v4}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " railColor="

    .line 155
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Ldev/duo/hookprobe/P;->a(Landroid/content/Context;)Z

    move-result v9

    invoke-static {v0, v4, v9}, Ldev/duo/hookprobe/P;->d(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " topSafePxInner="

    .line 156
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v4, v13}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " topSafePxOuter="

    .line 157
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v4, v8}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v6, :cond_2e

    .line 158
    move-object v6, v12

    goto :goto_f

    .line 159
    :cond_2e
    const-string v6, "(default)"

    .line 158
    :goto_f
    nop

    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 161
    :cond_2f
    const-string v0, "apps"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_30
    if-eqz v3, :cond_51

    .line 164
    const-string v7, "[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    goto/16 :goto_22

    :cond_31
    if-eqz v19, :cond_34

    if-eqz v4, :cond_33

    .line 167
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_10

    .line 168
    :cond_32
    const-string v0, "use pickConfirm for confirmed colours"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 169
    :cond_33
    :goto_10
    invoke-virtual {v6, v3}, Ldev/duo/hookprobe/o;->q(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_34
    if-eqz v16, :cond_38

    .line 173
    const-string v2, "enabled"

    invoke-virtual {v6}, Ldev/duo/hookprobe/o;->m()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v6, v3}, Ldev/duo/hookprobe/o;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    const/4 v7, 0x1

    goto :goto_11

    :cond_35
    const/4 v7, 0x0

    .line 174
    :goto_11
    invoke-virtual {v5, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v2, "innerNativeBar"

    invoke-virtual {v6, v3}, Ldev/duo/hookprobe/o;->k(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const-string v2, "hiddenTop"

    iget-object v7, v6, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    invoke-static {v7, v3}, Ldev/duo/hookprobe/P;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v4, :cond_36

    .line 178
    const-string v2, "railNight"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 179
    const-string v1, "railNight"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_12

    .line 180
    :cond_36
    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/hookprobe/P;->a(Landroid/content/Context;)Z

    move-result v1

    .line 179
    :goto_12
    nop

    .line 181
    const-string v2, "railColor"

    invoke-virtual {v6, v3, v1}, Ldev/duo/hookprobe/o;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "railBlack"

    invoke-virtual {v6, v3, v1}, Ldev/duo/hookprobe/o;->b(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v2, "railBackground"

    invoke-static {v0, v3, v1}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v0, "railCustomBackground"

    invoke-virtual {v6, v3, v1}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_37

    const/4 v10, 0x1

    goto :goto_13

    :cond_37
    const/4 v10, 0x0

    :goto_13
    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_20

    .line 187
    :cond_38
    const-string v7, "railpalette"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    if-nez v4, :cond_39

    .line 188
    const-string v0, "railpalette needs light/dark or copyFrom"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 190
    :cond_39
    const-string v1, "copyFrom"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v2, "dark"

    const-string v7, "light"

    if-eqz v1, :cond_3e

    .line 191
    :try_start_9
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_15

    .line 193
    :cond_3a
    const-string v1, "copyFrom"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 194
    const-string v2, "[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_14

    .line 196
    :cond_3b
    invoke-virtual {v6, v3, v1}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_16

    .line 197
    :cond_3c
    :goto_14
    const-string v0, "copyFrom must be a package name"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 198
    :cond_3d
    :goto_15
    const-string v0, "copyFrom cannot be combined with light/dark"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 204
    :cond_3e
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_17

    .line 206
    :cond_3f
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/hookprobe/P;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 207
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldev/duo/hookprobe/P;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 208
    invoke-virtual {v6, v3, v1, v2}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v1

    .line 196
    :goto_16
    nop

    .line 208
    if-nez v1, :cond_40

    .line 211
    const-string v0, "palette save failed or source has no palette"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 212
    :cond_40
    const-string v1, "palette"

    invoke-static {v0, v3}, Ldev/duo/hookprobe/P;->i(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 213
    :cond_41
    :goto_17
    const-string v0, "light and dark required; use - for default"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 221
    :cond_42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_43
    goto :goto_18

    :sswitch_0
    const-string v9, "disable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    const/4 v9, 0x5

    goto :goto_19

    .line 223
    :sswitch_1
    const-string v9, "raicolor"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    const/4 v9, 0x3

    goto :goto_19

    .line 224
    :sswitch_2
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    const/4 v9, 0x1

    goto :goto_19

    .line 225
    :sswitch_3
    const-string v9, "get"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    const/4 v9, 0x0

    goto :goto_19

    .line 226
    :sswitch_4
    const-string v9, "enable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    const/4 v9, 0x4

    goto :goto_19

    .line 227
    :sswitch_5
    const-string v9, "delete"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    const/4 v9, 0x2

    goto :goto_19

    :cond_44
    :goto_18
    const/4 v9, -0x1

    :goto_19
    packed-switch v9, :pswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    goto/16 :goto_21

    .line 263
    :pswitch_0
    invoke-static {v3}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v7, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b

    .line 264
    :pswitch_1
    sget-object v4, Ldev/duo/hookprobe/P;->i:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8be5\u5e94\u7528\u56fa\u5b9a\u4e0d\u542f\u7528 Duo\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 266
    :cond_45
    invoke-static {v3}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v7, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b

    :pswitch_2
    if-nez v4, :cond_46

    const/4 v4, 0x0

    goto :goto_1a

    .line 267
    :cond_46
    const-string v6, "color"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :goto_1a
    if-nez v4, :cond_47

    .line 268
    const-string v0, "raicolor needs --extra color:s:white|black"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 269
    :cond_47
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 270
    const-string v6, "white"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    const-string v6, "black"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 271
    const-string v0, "color must be white or black"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 272
    :cond_48
    invoke-static {v3}, Ldev/duo/hookprobe/P;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    :goto_1b
    goto/16 :goto_1f

    .line 273
    :pswitch_3
    invoke-static {v4}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ldev/duo/hookprobe/o;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4d

    invoke-static {v5, v11}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_4
    const/4 v6, 0x0

    if-eqz v4, :cond_4c

    .line 274
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_49

    goto :goto_1e

    .line 275
    :cond_49
    invoke-virtual {v4, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 276
    instance-of v10, v9, Ljava/lang/Integer;

    if-eqz v10, :cond_4a

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1c

    .line 277
    :cond_4a
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 276
    :goto_1c
    nop

    .line 278
    invoke-static {v9}, Ldev/duo/hookprobe/P;->a(I)I

    move-result v10

    if-eq v10, v9, :cond_4b

    .line 279
    const-string v12, "clamped"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " -> "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v12, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_4b
    invoke-static {v4}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v4

    array-length v9, v4

    :goto_1d
    if-ge v6, v9, :cond_4e

    aget-object v12, v4, v6

    invoke-static {v3, v12}, Ldev/duo/hookprobe/P;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 281
    :cond_4c
    :goto_1e
    const-string v0, "set needs --extra px:i:N"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 273
    :cond_4d
    :pswitch_5
    const/4 v7, 0x0

    .line 281
    :cond_4e
    :goto_1f
    if-eqz v7, :cond_4f

    .line 313
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-static {v5, v11}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 314
    :cond_4f
    const-string v4, "package"

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v4, "enabled"

    invoke-static {v0, v3}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    const-string v4, "topSafePxInner"

    invoke-static {v0, v3, v13}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    const-string v4, "topSafePxOuter"

    invoke-static {v0, v3, v8}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v4, "custom"

    invoke-static {v0, v3, v13}, Ldev/duo/hookprobe/P;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    const-string v4, "railColor"

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldev/duo/hookprobe/P;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v3, v1}, Ldev/duo/hookprobe/P;->d(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "get"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "apply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force-stop and reopen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    :goto_20
    return-object v5

    .line 262
    :goto_21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 321
    :cond_51
    :goto_22
    const-string v0, "--arg must be a package name"

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-object v0

    .line 38
    :catchall_1
    move-exception v0

    .line 407
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Ldev/duo/hookprobe/ConfigProvider;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 408
    :cond_52
    :goto_23
    invoke-direct {v1, v5, v2, v3, v4}, Ldev/duo/hookprobe/ConfigProvider;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_5
        -0x4d6ada7d -> :sswitch_4
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x6567789 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/duo/hookprobe/L;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
