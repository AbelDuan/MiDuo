.class final Ldev/duo/hookprobe/A;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    .line 185
    const-string v0, "\u2103"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u00b0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 28

    .line 1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    const-string v0, "now"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 5
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v4

    .line 6
    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    .line 7
    invoke-virtual {v7, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 8
    const-string v10, "next"

    invoke-virtual {v1, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    const-string v11, "android.permission.READ_CALENDAR"

    move-object/from16 v12, p0

    invoke-virtual {v12, v11}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    const-string v13, "\u8bf7\u5141\u8bb8\u8bfb\u53d6\u65e5\u5386"

    const-string v14, "error"

    if-eqz v11, :cond_0

    .line 10
    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v4, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v11

    move-wide v15, v5

    invoke-virtual {v11}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 14
    move-wide/from16 v17, v2

    const-wide/16 v2, 0x2

    invoke-virtual {v4, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 15
    sget-object v11, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 16
    invoke-static {v11, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 17
    invoke-static {v11, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 18
    const-string v2, "begin"

    const-string v3, "displayColor"

    const-string v5, "title"

    const-string v6, "end"

    move-wide/from16 v19, v15

    const-string v15, "allDay"

    filled-new-array {v5, v2, v6, v15, v3}, [Ljava/lang/String;

    move-result-object v23

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :try_start_0
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    const-string v24, "visible=1 AND (eventStatus IS NULL OR eventStatus!=2)"

    const-string v26, "begin ASC"

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v11, :cond_b

    .line 27
    :goto_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v12, :cond_a

    .line 28
    const/4 v12, 0x1

    move-object/from16 v16, v13

    move-object/from16 v21, v14

    :try_start_2
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v12, 0x2

    move-object/from16 v23, v0

    move-object/from16 v22, v1

    :try_start_3
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 29
    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v24, v12

    if-eqz v24, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_2

    cmp-long v24, v0, v17

    if-gtz v24, :cond_2

    move-object/from16 v13, v16

    move-object/from16 v14, v21

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    goto :goto_0

    .line 31
    :cond_2
    move-object/from16 v24, v10

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 32
    move-wide/from16 v25, v8

    const/4 v8, 0x0

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 33
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 34
    :cond_3
    const-string v8, "\u65e0\u6807\u9898"

    :cond_4
    invoke-virtual {v10, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v8, "start"

    invoke-virtual {v10, v8, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 36
    invoke-virtual {v10, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    invoke-virtual {v10, v15, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v8, "color"

    const/4 v9, 0x4

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v10, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v12, :cond_5

    .line 39
    sget-object v8, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    goto :goto_2

    :cond_5
    move-object/from16 v8, v23

    .line 40
    :goto_2
    invoke-static {v13, v14}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v9

    move-object v12, v5

    move-object/from16 v27, v6

    sub-long v5, v0, v19

    .line 41
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    .line 42
    invoke-virtual {v4, v9}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_6
    invoke-virtual {v7, v9}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v7, v5}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    cmp-long v5, v13, v17

    if-lez v5, :cond_8

    .line 44
    move-wide/from16 v8, v25

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-wide v8, v5

    goto :goto_3

    .line 43
    :cond_8
    move-wide/from16 v8, v25

    .line 44
    :goto_3
    cmp-long v5, v0, v17

    if-lez v5, :cond_9

    .line 45
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v12

    move-object/from16 v13, v16

    move-object/from16 v14, v21

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    move-object/from16 v10, v24

    move-object/from16 v6, v27

    goto/16 :goto_0

    .line 44
    :cond_9
    move-object v5, v12

    move-object/from16 v13, v16

    move-object/from16 v14, v21

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    move-object/from16 v10, v24

    move-object/from16 v6, v27

    goto/16 :goto_0

    .line 33
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v22

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_4

    .line 47
    :cond_a
    move-object/from16 v22, v1

    move-object/from16 v24, v10

    move-object/from16 v16, v13

    move-object/from16 v21, v14

    :try_start_4
    const-string v0, "todayEvents"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v1, v22

    :try_start_5
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    const-string v0, "tomorrowEvents"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    move-object/from16 v0, v24

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 50
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v1

    .line 33
    :catchall_2
    move-exception v0

    move-object/from16 v1, v22

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v21, v14

    :goto_4
    move-object v2, v0

    goto :goto_5

    .line 51
    :cond_b
    move-object/from16 v16, v13

    move-object/from16 v21, v14

    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "\u65e5\u5386\u63a5\u53e3\u8fd4\u56de\u7a7a\u6e38\u6807"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 33
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 51
    :goto_5
    if-eqz v11, :cond_c

    .line 52
    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    :cond_c
    :goto_6
    throw v2
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v21, v14

    .line 81
    :goto_7
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-eqz v2, :cond_d

    move-object/from16 v13, v16

    goto :goto_8

    :cond_d
    const-string v13, "\u65e5\u7a0b\u8bfb\u53d6\u5931\u8d25"

    :goto_8
    move-object/from16 v2, v21

    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "MiDuoWidgets"

    const-string v3, "calendar query failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method static a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "error"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 85
    const-string p0, "\u624b\u673a\u7535\u91cf\u6682\u4e0d\u53ef\u7528"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_0
    const-string v4, "level"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 88
    const-string v6, "scale"

    invoke-virtual {p0, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 89
    if-ltz v4, :cond_1

    if-lez v6, :cond_1

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    int-to-float v5, v6

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    :cond_1
    const-string v4, "phoneLevel"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v4, "status"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 91
    const-string v5, "plugged"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    if-eq v4, p0, :cond_2

    const/4 p0, 0x5

    if-ne v4, p0, :cond_3

    :cond_2
    move p0, v2

    goto :goto_0

    :cond_3
    move p0, v3

    :goto_0
    const-string v4, "charging"

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    :goto_1
    const-string p0, "batteryDevices"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "deviceError"

    if-eqz p0, :cond_8

    .line 95
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 99
    :cond_4
    const-string v1, "rows"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 100
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 101
    :cond_5
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 103
    :try_start_0
    const-string v1, "wearableBattery"

    const-string v4, "wearableLevel"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "headsetBattery"

    const-string v5, "headsetLevel"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyBoardBattery"

    const-string v6, "keyboardLevel"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "wearableType"

    filled-new-array {v6, v6}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v4, v5, v6}, [[Ljava/lang/String;

    move-result-object v1

    move v4, v3

    :goto_2
    const/4 v5, 0x4

    if-ge v4, v5, :cond_7

    aget-object v5, v1, v4

    .line 105
    aget-object v6, v5, v3

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 106
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    aget-object v5, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 109
    const-string v1, "\u8bbe\u5907\u7535\u91cf\u683c\u5f0f\u4e0d\u652f\u6301"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string p1, "MiDuoWidgets"

    const-string v1, "device battery schema is not numeric"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-object v0

    .line 111
    :cond_8
    :goto_4
    const-string p0, "\u8bbe\u5907\u7535\u91cf\u6682\u4e0d\u53ef\u7528"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "date_time"

    const-string v2, "weather_type"

    const-string v3, "conditionCode"

    const-string v4, "isNight"

    const-string v5, "temperature"

    .line 112
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 113
    const-string v7, "weatherCurrent"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "error"

    if-eqz v7, :cond_c

    .line 114
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_9

    .line 118
    :cond_0
    const-string v9, "rows"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 119
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_8

    .line 124
    :cond_1
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 126
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v13

    .line 127
    invoke-static {v11, v12}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v13

    .line 128
    const-string v15, "sunrise"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 129
    const-string v10, "sunset"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 130
    add-long v19, v13, v15

    cmp-long v10, v11, v19

    const/16 v19, 0x1

    if-ltz v10, :cond_3

    add-long v13, v13, v17

    cmp-long v10, v11, v13

    if-ltz v10, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v10, v19

    :goto_1
    invoke-virtual {v6, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    const-string v10, "city"

    const-string v13, "city_name"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v10, "cityId"

    const-string v13, "city_id"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ldev/duo/hookprobe/A;->a(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v10, "high"

    const-string v13, "tmphighs"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ldev/duo/hookprobe/A;->a(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v10, "low"

    const-string v13, "tmplows"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ldev/duo/hookprobe/A;->a(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v10, "condition"

    const-string v13, "description"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v7, "weatherHourly"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 139
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_7

    .line 141
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_9

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    check-cast v13, Landroid/os/Bundle;

    .line 145
    const-string v14, "publish_time"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v14

    .line 146
    invoke-virtual {v14}, Ljava/time/OffsetDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v20

    move-object/from16 p0, v0

    invoke-virtual/range {v20 .. v20}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v14}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v20

    .line 147
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move v0, v9

    move v14, v10

    add-long v9, v20, v22

    cmp-long v20, v9, v11

    if-gez v20, :cond_5

    move/from16 v20, v0

    move-wide/from16 v21, v11

    goto :goto_5

    .line 149
    :cond_5
    move/from16 v20, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    move-wide/from16 v21, v11

    const-string v11, "time"

    invoke-virtual {v0, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 151
    invoke-virtual {v13, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ldev/duo/hookprobe/A;->a(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    rem-long/2addr v9, v11

    .line 154
    cmp-long v11, v9, v15

    if-ltz v11, :cond_7

    cmp-long v9, v9, v17

    if-ltz v9, :cond_6

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 v9, v19

    :goto_4
    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x5

    if-ne v0, v9, :cond_8

    goto :goto_6

    .line 143
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    move v10, v14

    move/from16 v9, v20

    move-wide/from16 v11, v21

    goto/16 :goto_2

    .line 158
    :cond_9
    :goto_6
    const-string v0, "hourly"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v6

    .line 159
    :cond_a
    :goto_7
    const-string v0, "hourlyError"

    const-string v1, "\u5c0f\u65f6\u9884\u62a5\u8bfb\u53d6\u5931\u8d25"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 156
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "\u5929\u6c14\u6570\u636e\u683c\u5f0f\u4e0d\u652f\u6301"

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "MiDuoWidgets"

    const-string v2, "weather schema changed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    .line 183
    :cond_b
    :goto_8
    const-string v0, "\u8bf7\u5148\u5728\u5c0f\u7c73\u5929\u6c14\u6dfb\u52a0\u57ce\u5e02"

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 184
    :cond_c
    :goto_9
    const-string v0, "\u5929\u6c14\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u6253\u5f00\u5c0f\u7c73\u5929\u6c14\u68c0\u67e5"

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
