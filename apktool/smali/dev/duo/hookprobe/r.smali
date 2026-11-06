.class final Ldev/duo/hookprobe/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/r$a;
    }
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/lang/String; = "local:4639175402683733248"

.field private static final g:Ljava/lang/String; = "local:4639175068132267009"

.field private static final h:Ljava/lang/String; = "/data/adb/lspd/config/modules_config.db"

.field private static final i:Ljava/lang/String; = "\u9700\u8981 Root \u624d\u80fd\u68c0\u67e5"

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String; = "\uff1a\u684c\u9762\u5f00\u5408\u6709\u52a8\u753b\uff0cApp \u91cc\u5f00\u5408\u6ca1\u6709\u52a8\u753b\u3002"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "com.miui.home"

    const-string v1, "com.miui.personalassistant"

    const-string v2, "system"

    const-string v3, "com.android.systemui"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/r;->d:[Ljava/lang/String;

    .line 2
    const-string v0, "\u5c0f\u7c73\u684c\u9762"

    const-string v1, "\u667a\u80fd\u52a9\u7406"

    const-string v2, "\u7cfb\u7edf\u6846\u67b6"

    const-string v3, "\u7cfb\u7edf\u754c\u9762"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/r;->e:[Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme_magic/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const v2, 0x186a0

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wallpaper/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/r;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ldev/duo/hookprobe/r$a;
    .locals 6

    const-string v0, "\u58c1\u7eb8"

    .line 130
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object p0, v3

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 131
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 132
    const/4 p0, 0x4

    invoke-static {v2, p0}, Ldev/duo/fold/i;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p0

    .line 134
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 135
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    invoke-static {v2, v1}, Ldev/duo/fold/i;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string p1, "\u5185\u5916\u5c4f\u6362\u6210\u540c\u4e00\u5f20\u9759\u6001\u56fe\u7247\u5373\u53ef"

    const-string v2, "\uff1a\u684c\u9762\u5f00\u5408\u6709\u52a8\u753b\uff0cApp \u91cc\u5f00\u5408\u6ca1\u6709\u52a8\u753b\u3002"

    if-eqz p0, :cond_5

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 141
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "test -r "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ldev/duo/hookprobe/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " && test -r "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ldev/duo/hookprobe/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " || { echo unreadable; exit 0; }; cmp -s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    invoke-static {p0}, Ldev/duo/hookprobe/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v3}, Ldev/duo/hookprobe/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " && echo same || echo different"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-static {p0}, Ldev/duo/hookprobe/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 145
    const-string v3, "same"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance p0, Ldev/duo/hookprobe/r$a;

    const-string p1, "\u5185\u5916\u5c4f\u662f\u540c\u4e00\u5f20\u9759\u6001\u56fe\u7247"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    .line 146
    :cond_3
    new-instance v3, Ldev/duo/hookprobe/r$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unreadable"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "\u8bfb\u4e0d\u5230\u58c1\u7eb8\u539f\u56fe"

    goto :goto_2

    .line 147
    :cond_4
    const-string p0, "\u5185\u5916\u5c4f\u662f\u4e24\u5f20\u4e0d\u540c\u7684\u56fe\u7247"

    .line 146
    :goto_2
    nop

    .line 147
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v0, v1, p0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    .line 148
    :cond_5
    :goto_3
    new-instance v4, Ldev/duo/hookprobe/r$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_6

    if-nez v3, :cond_6

    const-string p0, "\u5185\u5916\u5c4f"

    goto :goto_4

    :cond_6
    if-nez p0, :cond_7

    .line 149
    const-string p0, "\u5916\u5c4f"

    goto :goto_4

    .line 150
    :cond_7
    const-string p0, "\u5185\u5c4f"

    .line 148
    :goto_4
    nop

    .line 150
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\u4e0d\u662f\u9759\u6001\u56fe\u7247\u58c1\u7eb8\uff08\u52a8\u6001\u3001\u5e26\u7279\u6548\u6216\u6a21\u7cca\uff09"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v0, v1, p0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 145
    :catch_0
    move-exception p0

    .line 158
    new-instance p1, Ldev/duo/hookprobe/r$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u58c1\u7eb8\u68c0\u67e5\u5931\u8d25\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\uff09"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method static a(Z)Ldev/duo/hookprobe/r$a;
    .locals 4

    .line 160
    const-string v0, "debug.duo.foldanim"

    invoke-static {v0}, Ldev/duo/hookprobe/MainActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "247"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u5f00\u5408\u52a8\u753b"

    if-nez p0, :cond_1

    .line 161
    new-instance p0, Ldev/duo/hookprobe/r$a;

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u5173\u95ed\uff0c\u7cfb\u7edf\u7aef\u8bb8\u53ef\u4ecd\u5728\u52a0\u8f7d\u72b6\u6001"

    goto :goto_0

    :cond_0
    const-string v0, "\u5df2\u5173\u95ed"

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x1

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Ldev/duo/hookprobe/r$a;

    const-string v2, "\u5df2\u6253\u5f00\uff0c\u7cfb\u7edf\u7aef\u8bb8\u53ef\u5c1a\u672a\u52a0\u8f7d"

    invoke-direct {v0, v1, p0, v2}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 164
    :cond_2
    const/4 v0, 0x2

    :try_start_0
    const-string v2, "pgrep -f \'^MiDuoFoldEngine\'; true"

    invoke-static {v2}, Ldev/duo/hookprobe/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    new-instance p0, Ldev/duo/hookprobe/r$a;

    const-string v2, "\u5f15\u64ce\u672a\u8fd0\u884c"

    invoke-direct {p0, v1, v0, v2}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    .line 166
    :cond_3
    new-instance v2, Ldev/duo/hookprobe/r$a;

    const-string v3, "\u5f15\u64ce\u8fd0\u884c\u4e2d\uff0c\u5b9e\u9645\u52a8\u753b\u6548\u679c\u5c1a\u672a\u786e\u8ba4"

    invoke-direct {v2, v1, p0, v3}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 165
    :catch_0
    move-exception p0

    .line 168
    new-instance p0, Ldev/duo/hookprobe/r$a;

    const-string v2, "\u65e0\u6cd5\u68c0\u67e5\uff08\u672a\u83b7\u5f97 Root\uff09"

    invoke-direct {p0, v1, v0, v2}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "foldcheck"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u5efa\u7acb\u7f13\u5b58\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "modules_config.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "modules_config.db-wal"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "modules_config.db-shm"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    filled-new-array {v1, v2, v3}, [Ljava/io/File;

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    new-array v4, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v3, p1, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 174
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    new-array v3, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p2, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 175
    :cond_2
    aget-object p1, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 176
    :try_start_1
    const-string v3, "select apk_path from modules where module_pkg_name=?"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 177
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :cond_3
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_1
    if-ge v1, v2, :cond_4

    .line 180
    aget-object p0, v0, v1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p2

    .line 177
    :catchall_0
    move-exception p2

    .line 180
    if-eqz p0, :cond_5

    .line 181
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 180
    :catchall_2
    move-exception p0

    .line 181
    if-eqz p1, :cond_6

    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 182
    :cond_6
    :goto_3
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 174
    :catchall_4
    move-exception p0

    .line 182
    nop

    :goto_4
    if-ge v1, v2, :cond_7

    .line 187
    aget-object p1, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 188
    :cond_7
    throw p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'\\\'\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ldev/duo/hookprobe/o;ZZLjava/util/Set;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldev/duo/hookprobe/o;",
            "ZZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ldev/duo/hookprobe/r$a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    move-object/from16 v2, p6

    const-string v3, "\u5173\u952e\u63a5\u53e3\u4e0e\u4f20\u611f\u5668\u6570\u636e"

    const-string v4, "\u58c1\u7eb8"

    const-string v5, "\u5185\u5916\u5c4f"

    const-string v6, "Root \u6743\u9650"

    const-string v7, "LSPosed \u767b\u8bb0\u7684\u5b89\u88c5\u5305"

    const-string v8, "\u9700\u8981 Root \u624d\u80fd\u68c0\u67e5"

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v1}, Ldev/duo/hookprobe/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 3
    new-instance v11, Ldev/duo/hookprobe/r$a;

    const/4 v13, 0x2

    if-nez v10, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    if-nez v10, :cond_1

    .line 4
    const-string v10, "\u4e0e\u9002\u914d\u7248\u672c\u4e00\u81f4"

    :cond_1
    const-string v15, "\u7cfb\u7edf\u4e0e\u5c0f\u7c73\u684c\u9762\u7248\u672c"

    invoke-direct {v11, v15, v14, v10}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    const-string v10, "\u672a\u5b89\u88c5"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 8
    new-instance v11, Ldev/duo/hookprobe/r$a;

    if-nez v10, :cond_2

    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    move v14, v13

    :goto_1
    if-nez v10, :cond_3

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\uff1b\u4e0d\u9650\u5b9a\u7248\u672c\u53f7"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, "\u672a\u5b89\u88c5\uff0c\u8bf7\u5148\u5b89\u88c5\u667a\u80fd\u52a9\u7406"

    :goto_2
    const-string v10, "\u667a\u80fd\u52a9\u7406"

    invoke-direct {v11, v10, v14, v2}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "\uff09"

    if-nez p1, :cond_4

    .line 14
    new-instance v0, Ldev/duo/hookprobe/r$a;

    const-string v10, "LSPosed"

    const-string v11, "\u672a\u8fde\u63a5\uff0c\u8bf7\u5728 LSPosed \u4e2d\u542f\u7528 MiDuo"

    invoke-direct {v0, v10, v13, v11}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_4
    const-string v10, "LSPosed \u4f5c\u7528\u57df"

    if-eqz v0, :cond_5

    .line 16
    new-instance v11, Ldev/duo/hookprobe/r$a;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u8bfb\u53d6\u5931\u8d25\uff08"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v10, v13, v0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x0

    goto :goto_6

    .line 18
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 19
    :goto_3
    sget-object v14, Ldev/duo/hookprobe/r;->d:[Ljava/lang/String;

    array-length v15, v14

    if-ge v11, v15, :cond_7

    aget-object v14, v14, v11

    move-object/from16 v15, p4

    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    sget-object v14, Ldev/duo/hookprobe/r;->e:[Ljava/lang/String;

    aget-object v14, v14, v11

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 20
    :cond_7
    new-instance v11, Ldev/duo/hookprobe/r$a;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    goto :goto_4

    :cond_8
    move v14, v13

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 21
    const-string v0, "\u7cfb\u7edf\u6846\u67b6\u3001\u7cfb\u7edf\u754c\u9762\u3001\u5c0f\u7c73\u684c\u9762\u3001\u667a\u80fd\u52a9\u7406\u90fd\u5df2\u52fe\u9009"

    const/16 v16, 0x0

    goto :goto_5

    .line 22
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const-string v12, "\u7f3a\u5c11"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "\u3001"

    invoke-static {v15, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "\uff0c\u53ef\u5728\u9996\u9875\u8bca\u65ad\u4fe1\u606f\u91cc\u8865\u9f50"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v11, v10, v14, v0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v10, 0x1

    if-eqz p1, :cond_a

    .line 27
    invoke-virtual/range {p1 .. p1}, Ldev/duo/hookprobe/o;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    move v0, v10

    goto :goto_7

    :cond_a
    move/from16 v0, v16

    .line 28
    :goto_7
    new-instance v11, Ldev/duo/hookprobe/r$a;

    if-eqz v0, :cond_b

    move/from16 v12, v16

    goto :goto_8

    :cond_b
    move v12, v13

    :goto_8
    if-eqz v0, :cond_c

    const-string v0, "\u8fd0\u884c\u4e2d"

    goto :goto_9

    :cond_c
    if-nez p1, :cond_d

    .line 29
    const-string v0, "\u672a\u8fde\u63a5 LSPosed"

    goto :goto_9

    :cond_d
    if-nez p3, :cond_e

    const-string v0, "\u8bd5\u7528\u5df2\u7ed3\u675f\uff0c\u8d2d\u4e70\u540e\u53ef\u7ee7\u7eed\u4f7f\u7528"

    goto :goto_9

    :cond_e
    if-nez p2, :cond_f

    .line 30
    const-string v0, "\u9700\u8981\u91cd\u542f\u624b\u673a\u4e00\u6b21\u540e\u624d\u80fd\u4f7f\u7528"

    goto :goto_9

    :cond_f
    const-string v0, "\u8bf7\u5148\u5728\u9996\u9875\u6253\u5f00 MiDuo"

    :goto_9
    const-string v14, "MiDuo \u603b\u5f00\u5173"

    invoke-direct {v11, v14, v12, v0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_10

    .line 35
    invoke-virtual/range {p1 .. p1}, Ldev/duo/hookprobe/o;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 36
    new-instance v0, Ldev/duo/hookprobe/r$a;

    const-string v11, "\u8f7b\u6298\u5206\u5c4f"

    const-string v12, "\u6253\u5f00\u5f00\u5408\u52a8\u753b\u540e\u8f7b\u6298\u5206\u5c4f\u4f1a\u6682\u505c\uff08\u4e24\u8005\u90fd\u9760\u5f00\u5408\u624b\u52bf\uff0c\u4f1a\u4e92\u76f8\u5e72\u6270\uff09\uff1b\u5173\u95ed\u5f00\u5408\u52a8\u753b\u5373\u6062\u590d"

    invoke-direct {v0, v11, v10, v12}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_10
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "id -u; echo @@; dumpsys display | grep -o \'local:[0-9]*\' | sort -u; echo @@; base64 /data/adb/lspd/config/modules_config.db 2>/dev/null; echo @@; test -f /data/adb/lspd/config/modules_config.db-wal && base64 /data/adb/lspd/config/modules_config.db-wal; echo @@; cat "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Ldev/duo/hookprobe/r;->j:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "small_home.xml 2>/dev/null; echo @@; cat "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "home.xml 2>/dev/null; true"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/duo/hookprobe/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "@@\n"

    .line 44
    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    aget-object v0, v11, v16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v12, "0"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 56
    new-instance v0, Ldev/duo/hookprobe/r$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "su \u8fd4\u56de\u7684\u4e0d\u662f root \u8eab\u4efd\uff08uid "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v11, v11, v16

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v13, v1}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Ldev/duo/hookprobe/r$a;

    invoke-direct {v0, v7, v13, v8}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Ldev/duo/hookprobe/r$a;

    invoke-direct {v0, v5, v13, v8}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Ldev/duo/hookprobe/r$a;

    invoke-direct {v0, v4, v10, v8}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Ldev/duo/hookprobe/r$a;

    invoke-direct {v0, v3, v13, v8}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v9

    .line 63
    :cond_11
    new-instance v0, Ldev/duo/hookprobe/r$a;

    const-string v3, "\u5df2\u5141\u8bb8"

    move/from16 v4, v16

    invoke-direct {v0, v6, v4, v3}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 66
    aget-object v3, v11, v13

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 67
    new-instance v0, Ldev/duo/hookprobe/r$a;

    const-string v2, "\u8bfb\u4e0d\u5230 LSPosed \u914d\u7f6e\uff08/data/adb/lspd/config/modules_config.db\uff09"

    invoke-direct {v0, v7, v13, v2}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_d

    :cond_12
    nop

    .line 70
    :try_start_1
    aget-object v3, v11, v13

    const/4 v4, 0x3

    aget-object v4, v11, v4

    invoke-static {v1, v3, v4}, Ldev/duo/hookprobe/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ldev/duo/hookprobe/r$a;

    const-string v3, "\u4e0e\u5f53\u524d\u5b89\u88c5\u4e00\u81f4"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {v0, v7, v4, v3}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_b

    .line 72
    :cond_13
    const/4 v4, 0x0

    new-instance v0, Ldev/duo/hookprobe/r$a;

    if-nez v3, :cond_14

    const-string v3, "LSPosed \u91cc\u6ca1\u6709 MiDuo"

    goto :goto_a

    .line 73
    :cond_14
    const-string v3, "LSPosed \u8fd8\u6ca1\u767b\u8bb0\u521a\u88c5\u7684\u65b0\u7248\u672c\uff0c\u73b0\u5728\u8f6f\u91cd\u542f\u4f1a\u52a0\u8f7d\u4e0d\u5230 MiDuo\uff1b\u8bf7\u6253\u5f00 LSPosed \u7ba1\u7406\u5668\u6216\u7a0d\u7b49\u540e\u518d\u68c0\u67e5"

    .line 72
    :goto_a
    nop

    .line 73
    invoke-direct {v0, v7, v13, v3}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    :goto_b
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_d

    .line 71
    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    .line 78
    :goto_c
    new-instance v3, Ldev/duo/hookprobe/r$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8bfb\u53d6 LSPosed \u914d\u7f6e\u5931\u8d25\uff08"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v7, v13, v0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    nop

    .line 82
    aget-object v0, v11, v10

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 83
    const-string v2, "local:4639175402683733248"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "local:4639175068132267009"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    new-instance v3, Ldev/duo/hookprobe/r$a;

    if-eqz v2, :cond_15

    if-eqz v0, :cond_15

    move v12, v4

    goto :goto_e

    :cond_15
    move v12, v13

    :goto_e
    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    const-string v0, "\u5185\u5c4f\u3001\u5916\u5c4f\u90fd\u5df2\u8bc6\u522b"

    goto :goto_10

    .line 85
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6ca1\u627e\u5230"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_17

    const-string v0, "\u5916\u5c4f"

    goto :goto_f

    :cond_17
    if-eqz v0, :cond_18

    const-string v0, "\u5185\u5c4f"

    goto :goto_f

    :cond_18
    const-string v0, "\u5185\u5c4f\u548c\u5916\u5c4f"

    :goto_f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff1a\u5c4f\u5e55\u7f16\u53f7\u4e0e\u9002\u914d\u7684\u624b\u673a\u4e0d\u540c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-direct {v3, v5, v12, v0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {v1, v9}, Ldev/duo/hookprobe/r;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 89
    const/4 v0, 0x4

    aget-object v0, v11, v0

    const/4 v1, 0x5

    aget-object v1, v11, v1

    invoke-static {v0, v1}, Ldev/duo/hookprobe/r;->a(Ljava/lang/String;Ljava/lang/String;)Ldev/duo/hookprobe/r$a;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v9

    :catch_2
    move-exception v0

    .line 90
    new-instance v1, Ldev/duo/hookprobe/r$a;

    instance-of v11, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v11, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 92
    :cond_19
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u672a\u83b7\u5f97 Root\uff0c\u8bf7\u5728 Root \u7ba1\u7406\u5668\u91cc\u5141\u8bb8 MiDuo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1a

    goto :goto_11

    :cond_1a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\uff08"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_1b
    :goto_11
    const-string v0, ""

    :goto_12
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-direct {v1, v6, v13, v0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Ldev/duo/hookprobe/r$a;

    invoke-direct {v0, v7, v13, v8}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Ldev/duo/hookprobe/r$a;

    invoke-direct {v0, v5, v13, v8}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Ldev/duo/hookprobe/r$a;

    invoke-direct {v0, v4, v10, v8}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Ldev/duo/hookprobe/r$a;

    invoke-direct {v0, v3, v13, v8}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ldev/duo/hookprobe/r$a;",
            ">;)V"
        }
    .end annotation

    .line 100
    const/4 v0, 0x2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLASSPATH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0}, Ldev/duo/hookprobe/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " exec /system/bin/timeout -s KILL 8 /system/bin/app_process /system/bin --nice-name=MiDuoFoldPreflight dev.duo.fold.Preflight"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldev/duo/hookprobe/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    const-string v1, "\\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p0, v4

    .line 104
    const-string v6, "MiDuoFoldCheck:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_4

    .line 105
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 106
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 107
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 108
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 109
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ltz v5, :cond_2

    if-gt v5, v0, :cond_2

    .line 111
    new-instance v6, Ldev/duo/hookprobe/r$a;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v5, v4}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "\u68c0\u6d4b\u72b6\u6001\u65e0\u6548"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 116
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "\u672a\u6536\u5230\u5b8c\u6574\u68c0\u6d4b\u7ed3\u679c"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v1, Ldev/duo/hookprobe/r$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u68c0\u67e5\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_5

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string p0, "\u68c0\u6d4b\u672a\u5b8c\u6210\u6216\u8d85\u8fc78\u79d2"

    :cond_6
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u5173\u952e\u63a5\u53e3\u4e0e\u4f20\u611f\u5668\u6570\u636e"

    invoke-direct {v1, v2, v0, p0}, Ldev/duo/hookprobe/r$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
