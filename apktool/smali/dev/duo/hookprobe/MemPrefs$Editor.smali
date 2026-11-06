.class public final Ldev/duo/hookprobe/MemPrefs$Editor;
.super Ljava/lang/Object;
.implements Landroid/content/SharedPreferences$Editor;

.field private final m:Ljava/util/concurrent/ConcurrentHashMap;

.field private final p:Ljava/util/HashMap;

.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/MemPrefs$Editor;->m:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/MemPrefs$Editor;->p:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Ldev/duo/hookprobe/MemPrefs$Editor;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/MemPrefs$Editor;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/MemPrefs$Editor;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/MemPrefs$Editor;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/MemPrefs$Editor;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/MemPrefs$Editor;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/MemPrefs$Editor;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/hookprobe/MemPrefs$Editor;->a(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Ldev/duo/hookprobe/MemPrefs$Editor;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p0
.end method

.method public commit()Z
    .locals 4

    iget-object v0, p0, Ldev/duo/hookprobe/MemPrefs$Editor;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Ldev/duo/hookprobe/MemPrefs$Editor;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldev/duo/hookprobe/MemPrefs$Editor;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public apply()V
    .locals 0

    invoke-virtual {p0}, Ldev/duo/hookprobe/MemPrefs$Editor;->commit()Z

    return-void
.end method