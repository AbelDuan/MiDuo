.class public Lio/github/libxposed/service/RemotePreferences$Editor;
.super Ljava/lang/Object;
.source "RemotePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/libxposed/service/RemotePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field private mClear:Z

.field private final mDelete:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPut:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/github/libxposed/service/RemotePreferences;


# direct methods
.method public static synthetic $r8$lambda$-3hADX60NAwN2-TvVzEHv0K-ti4(Lio/github/libxposed/service/RemotePreferences$Editor;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/github/libxposed/service/RemotePreferences$Editor;->lambda$apply$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lio/github/libxposed/service/RemotePreferences;)V
    .locals 1
    .param p1, "this$0"    # Lio/github/libxposed/service/RemotePreferences;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mDelete:Ljava/util/HashSet;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mPut:Ljava/util/HashMap;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mClear:Z

    return-void
.end method

.method private buildCommitBundle()Landroid/os/Bundle;
    .locals 3

    .line 211
    iget-boolean v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mClear:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mDelete:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mPut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "clear"

    iget-boolean v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mClear:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mDelete:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v2, "delete"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 215
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mPut:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "put"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 216
    return-object v0
.end method

.method private doCommit(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 220
    if-eqz p1, :cond_0

    .line 222
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-static {v0}, Lio/github/libxposed/service/RemotePreferences;->-$$Nest$fgetmService(Lio/github/libxposed/service/RemotePreferences;)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/libxposed/service/XposedService;->asInterface()Lio/github/libxposed/service/IXposedService;

    move-result-object v0

    iget-object v1, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-static {v1}, Lio/github/libxposed/service/RemotePreferences;->-$$Nest$fgetmGroup(Lio/github/libxposed/service/RemotePreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/github/libxposed/service/IXposedService;->updateRemotePreferences(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemotePreferences"

    const-string v2, "Failed to commit changes to framework"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v1, 0x0

    return v1

    .line 228
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private doUpdate()V
    .locals 6

    .line 184
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    monitor-enter v0

    .line 185
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-static {v2}, Lio/github/libxposed/service/RemotePreferences;->-$$Nest$fgetmMap(Lio/github/libxposed/service/RemotePreferences;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 186
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mClear:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 187
    :cond_0
    iget-object v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mDelete:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lio/github/libxposed/service/RemotePreferences$Editor$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lio/github/libxposed/service/RemotePreferences$Editor$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 188
    iget-object v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mPut:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 189
    iget-object v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lio/github/libxposed/service/RemotePreferences;->-$$Nest$fputmMap(Lio/github/libxposed/service/RemotePreferences;Ljava/util/Map;)V

    .line 190
    .end local v1    # "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-static {v0}, Lio/github/libxposed/service/RemotePreferences;->-$$Nest$fgetmListeners(Lio/github/libxposed/service/RemotePreferences;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 195
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-static {v2}, Lio/github/libxposed/service/RemotePreferences;->-$$Nest$fgetmListeners(Lio/github/libxposed/service/RemotePreferences;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 198
    .local v2, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    iget-boolean v3, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mClear:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lio/github/libxposed/service/RemotePreferences;->shouldNotifyCleared:Z

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 201
    :cond_1
    iget-object v3, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mDelete:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 202
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 203
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_1

    .line 204
    :cond_2
    iget-object v3, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mPut:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v5, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->this$0:Lio/github/libxposed/service/RemotePreferences;

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 206
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_2

    .line 207
    .end local v2    # "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_3
    goto :goto_0

    .line 208
    :cond_4
    return-void

    .line 196
    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 190
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private synthetic lambda$apply$0(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 244
    invoke-direct {p0, p1}, Lio/github/libxposed/service/RemotePreferences$Editor;->doCommit(Landroid/os/Bundle;)Z

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mDelete:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mPut:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 241
    invoke-direct {p0}, Lio/github/libxposed/service/RemotePreferences$Editor;->buildCommitBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 242
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lio/github/libxposed/service/RemotePreferences$Editor;->doUpdate()V

    .line 244
    invoke-static {}, Lio/github/libxposed/service/RemotePreferences;->-$$Nest$sfgetEXECUTOR()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lio/github/libxposed/service/RemotePreferences$Editor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lio/github/libxposed/service/RemotePreferences$Editor$$ExternalSyntheticLambda0;-><init>(Lio/github/libxposed/service/RemotePreferences$Editor;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mClear:Z

    .line 178
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mDelete:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 179
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mPut:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 180
    return-object p0
.end method

.method public commit()Z
    .locals 2

    .line 233
    invoke-direct {p0}, Lio/github/libxposed/service/RemotePreferences$Editor;->buildCommitBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    .line 235
    :cond_0
    invoke-direct {p0}, Lio/github/libxposed/service/RemotePreferences$Editor;->doUpdate()V

    .line 236
    invoke-direct {p0, v0}, Lio/github/libxposed/service/RemotePreferences$Editor;->doCommit(Landroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 164
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/github/libxposed/service/RemotePreferences$Editor;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 158
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/github/libxposed/service/RemotePreferences$Editor;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/github/libxposed/service/RemotePreferences$Editor;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 152
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/github/libxposed/service/RemotePreferences$Editor;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 132
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lio/github/libxposed/service/RemotePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/github/libxposed/service/RemotePreferences$Editor;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 139
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lio/github/libxposed/service/RemotePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/github/libxposed/service/RemotePreferences$Editor;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mDelete:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences$Editor;->mPut:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-object p0
.end method
