package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class LayoutBackupActivity extends android.app.Activity {
    static final java.lang.String k = "/data/user_de/0/com.miui.home/files/miduo-layout";
    private static final java.lang.String l = "/data/user_de/0/com.miui.home/databases";
    private final android.os.Handler a = new android.os.Handler(android.os.Looper.getMainLooper());
    private dev.duo.hookprobe.U.d b;
    private android.widget.TextView c;
    private android.widget.TextView d;
    private android.widget.TextView e;
    private android.widget.TextView f;
    private android.widget.TextView g;
    private android.view.View h;
    private android.view.View i;
    private boolean j;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(android.view.View view) {
        a();
    }

    private void b() {
        final java.io.File file = new java.io.File(getCacheDir(), "layout-check");
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.LayoutBackupActivity.this.b(file);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        java.lang.String str;
        final java.lang.String str2;
        final java.lang.String str3;
        final java.lang.String str4;
        final java.lang.String str5;
        str = "";
        try {
            java.lang.String str6 = null;
            java.lang.String str7 = "";
            java.lang.String str8 = "duo";
            java.lang.String str9 = null;
            boolean z = false;
            for (java.lang.String str10 : dev.duo.hookprobe.M.a("S=/data/user_de/0/com.miui.home/files/miduo-layout\n[ -d /data/user_de/0/com.miui.home/databases ] || { echo 看不到桌面的数据目录; exit 5; }\nfor d in manual duo-snapshot; do echo \"$d $(cat $S/$d/stamp 2>/dev/null)\"; done\necho \"status $(cat $S/guard-status 2>/dev/null)\"\n[ -e $S/hold ] && echo hold\necho \"active $(cat $S/active 2>/dev/null)\"\n", true).split("\n")) {
                try {
                    if (str10.startsWith("manual ")) {
                        str6 = g(str10.substring(7));
                    } else if (str10.startsWith("duo-snapshot ")) {
                        str9 = g(str10.substring(13));
                    } else if (str10.startsWith("status ")) {
                        str7 = str10.substring(7).trim();
                    } else if (str10.equals("hold")) {
                        z = true;
                    } else if (str10.startsWith("active ") && !str10.substring(7).trim().isEmpty()) {
                        str8 = str10.substring(7).trim();
                    }
                } catch (java.lang.Exception e) {
                    e = e;
                    str = str7;
                    str2 = str;
                    str5 = "读不到";
                    str4 = str5;
                    str3 = "读不到备份信息：需要 root。\n" + e.getMessage();
                    this.a.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda7
                        @Override // java.lang.Runnable
                        public final void run() {
                            dev.duo.hookprobe.LayoutBackupActivity.this.a(str5, str4, str3, str2);
                        }
                    });
                }
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.String[] split = str7.split(" ", 3);
            if (split.length >= 2 && g(split[1]) != null) {
                sb.append(g(split[1])).append("：");
                if (split[0].equals("restored")) {
                    sb.append("发现桌面被小米桌面打乱，已换回备份。被打乱的那份留在 ").append(split.length > 2 ? split[2] : "").append("。");
                } else {
                    sb.append("发现桌面被小米桌面打乱，但没有换回：").append(f(split.length > 2 ? split[2] : ""));
                }
            }
            if (z) {
                sb.append(sb.length() > 0 ? "\n\n" : "").append("自动备份已暂停，免得打乱的桌面顶掉旧备份。确认桌面摆好后点“立即备份”就恢复。");
            }
            if (!str8.equals("duo")) {
                sb.append(sb.length() > 0 ? "\n\n" : "").append("现在用的是小米原生布局（总开关关着），备份和恢复只管 MiDuo 布局。");
            }
            if (str6 == null) {
                str6 = "还没有";
            }
            if (str9 == null) {
                str9 = "还没有";
            }
            str5 = str6;
            str2 = str7;
            str4 = str9;
            str3 = sb.toString();
        } catch (java.lang.Exception e2) {
            e = e2;
        }
        this.a.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.LayoutBackupActivity.this.a(str5, str4, str3, str2);
            }
        });
    }

    private void d() {
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.LayoutBackupActivity.this.c();
            }
        });
    }

    private android.widget.LinearLayout e() {
        android.widget.LinearLayout a = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.a(a, this.b.e ? 26.0f : 28.0f);
        a.setPadding(a(16.0f), a(6.0f), a(16.0f), a(6.0f));
        return a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static java.lang.String f(java.lang.String str) {
        char c;
        java.lang.String trim = str.trim();
        trim.getClass();
        switch (trim.hashCode()) {
            case 2017448394:
                if (trim.equals("home-db-unreadable")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 2063610881:
                if (trim.equals("no-copy")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 2146430431:
                if (trim.equals("schema-newer-than-home")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "读不了现在的桌面数据。";
            case 1:
                return "手机上还没有备份。";
            case 2:
                return "备份比现在的桌面版本新，直接换回可能打不开。";
            default:
                return "复制或搬文件没成功（" + str.trim() + "），桌面保持原样。";
        }
    }

    private static java.lang.String g(java.lang.String str) {
        try {
            return new java.text.SimpleDateFormat("M月d日 HH:mm", java.util.Locale.CHINA).format(new java.util.Date(java.lang.Long.parseLong(str.trim()) * 1000));
        } catch (java.lang.RuntimeException e) {
            return null;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        this.b = new dev.duo.hookprobe.U.d(this);
        android.widget.LinearLayout a = dev.duo.hookprobe.U.a((android.content.Context) this);
        dev.duo.hookprobe.U.d dVar = this.b;
        int a2 = dVar.a(dVar.e());
        a.setPadding(a2, this.b.d(), a2, this.b.b());
        a.addView(dev.duo.hookprobe.WidgetCenterActivity.a(this, this.b, "桌面布局备份", "掉 root 后桌面被打乱，root 回来自动换回"), dev.duo.hookprobe.U.a());
        android.widget.LinearLayout e = e();
        this.c = a(e, "手动备份", "点下面的按钮存的");
        a(e);
        this.d = a(e, "自动备份", "桌面每次启动时存的");
        android.widget.TextView a3 = dev.duo.hookprobe.U.a((android.content.Context) this, "立即备份", true, 44.0f);
        this.e = a3;
        a3.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                dev.duo.hookprobe.LayoutBackupActivity.this.a(view);
            }
        });
        android.widget.LinearLayout.LayoutParams a4 = dev.duo.hookprobe.U.a(dev.duo.hookprobe.U.a(), this, 6.0f);
        a4.bottomMargin = a(10.0f);
        e.addView(this.e, a4);
        a.addView(dev.duo.hookprobe.U.a((android.content.Context) this, "备份"), dev.duo.hookprobe.U.a());
        a.addView(e, dev.duo.hookprobe.U.a());
        android.widget.TextView e2 = e("");
        this.f = e2;
        this.h = a(a, "上次检查", e2);
        android.widget.TextView e3 = e("");
        this.g = e3;
        this.i = a(a, "小部件", e3);
        a(a, "说明", e("掉 root 后小米桌面会把 MiDuo 的桌面重新排一遍。root 回来、桌面第一次启动时，MiDuo 自动换回最新的一份备份；被打乱的那份另外留着，不删。\n掉 root 期间新装的 App 可能不在桌面上，去 App 抽屉里找。刚摆好桌面可以点“立即备份”，以免漏掉最近的改动。"));
        this.h.setVisibility(8);
        this.i.setVisibility(8);
        android.widget.ScrollView scrollView = new android.widget.ScrollView(this);
        scrollView.setClipToPadding(false);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.addView(a);
        this.b.b.addView(scrollView, new android.widget.FrameLayout.LayoutParams(-1, -1));
        this.b.a(3, new java.util.function.IntConsumer() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda3
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                dev.duo.hookprobe.LayoutBackupActivity.this.a(i);
            }
        });
        setContentView(this.b.a);
        this.b.a();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.j) {
            return;
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        startActivity(new android.content.Intent(this, (java.lang.Class<?>) dev.duo.hookprobe.MainActivity.class).putExtra("tab", i).addFlags(603979776));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.lang.String str) {
        this.g.setText(str);
        this.i.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(java.io.File file) {
        final java.lang.String str;
        java.util.HashSet hashSet;
        java.util.ArrayList arrayList;
        android.database.sqlite.SQLiteDatabase openDatabase;
        try {
            java.lang.String a = dev.duo.hookprobe.M.a("set -e\nD=/data/user_de/0/com.miui.home/databases; C=" + file.getAbsolutePath() + "\nrm -rf $C; mkdir -p $C\nfor n in launcher4x6.db launcher4x6.db-wal; do if [ -f $D/$n ]; then cp $D/$n $C/$n; fi; done\nchown -R $(stat -c %u:%g $(dirname $C)) $C; chcon -R $(stat -c %C $(dirname $C)) $C\ndumpsys appwidget\n", true);
            hashSet = new java.util.HashSet();
            java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("\\] id=(\\d+)\\s*\\n\\s*host=HostId\\{[^}]*pkg:com\\.miui\\.home\\}").matcher(a);
            while (matcher.find()) {
                hashSet.add(java.lang.Integer.valueOf(java.lang.Integer.parseInt(matcher.group(1))));
            }
            arrayList = new java.util.ArrayList();
            openDatabase = android.database.sqlite.SQLiteDatabase.openDatabase(new java.io.File(file, "launcher4x6.db").getPath(), null, 0);
        } catch (java.lang.Exception e) {
            str = "小部件检查没做成：" + e.getMessage();
        }
        try {
            android.database.Cursor rawQuery = openDatabase.rawQuery("select appWidgetId, appWidgetProvider from favorites where itemType=4 and appWidgetId>0", null);
            int i = 0;
            while (rawQuery.moveToNext()) {
                try {
                    i++;
                    if (!hashSet.contains(java.lang.Integer.valueOf(rawQuery.getInt(0)))) {
                        arrayList.add(b(rawQuery.getString(1)));
                    }
                } finally {
                }
            }
            rawQuery.close();
            openDatabase.close();
            if (hashSet.isEmpty()) {
                str = "小部件：读不到系统的小部件登记，没法检查。";
            } else {
                str = arrayList.isEmpty() ? "小部件：" + i + " 个都还在，不用重新添加。" : "这些小部件恢复后可能是空白，需要长按桌面重新添加：\n· " + java.lang.String.join("\n· ", arrayList);
            }
            this.a.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.hookprobe.LayoutBackupActivity.this.d(str);
                }
            });
        } catch (java.lang.Throwable th) {
            openDatabase.close();
            throw th;
        }
    }

    private android.widget.TextView e(java.lang.String str) {
        android.widget.TextView a = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, dev.duo.hookprobe.J.m);
        a.setLineSpacing(0.0f, 1.3f);
        a.setText(str);
        return a;
    }

    private int a(float f) {
        return dev.duo.hookprobe.U.a(this, f);
    }

    private void a(android.widget.LinearLayout linearLayout) {
        android.view.View view = new android.view.View(this);
        view.setBackgroundColor(dev.duo.hookprobe.U.h);
        linearLayout.addView(view, new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.max(1, a(0.5f))));
    }

    private android.widget.TextView a(android.widget.LinearLayout linearLayout, java.lang.String str, java.lang.String str2) {
        android.widget.LinearLayout c = dev.duo.hookprobe.U.c(this);
        c.setMinimumHeight(a(68.0f));
        android.widget.LinearLayout a = dev.duo.hookprobe.U.a((android.content.Context) this);
        a.setPadding(0, 0, a(8.0f), 0);
        android.widget.TextView a2 = dev.duo.hookprobe.U.a(this, 15.0f, dev.duo.hookprobe.U.b, 600);
        a2.setText(str);
        a.addView(a2);
        android.widget.TextView a3 = dev.duo.hookprobe.U.a(this, 12.0f, dev.duo.hookprobe.U.d, dev.duo.hookprobe.J.m);
        a3.setText(str2);
        a3.setPadding(0, a(3.0f), 0, 0);
        a.addView(a3);
        c.addView(a, dev.duo.hookprobe.U.b());
        android.widget.TextView a4 = dev.duo.hookprobe.U.a(this, 13.0f, dev.duo.hookprobe.U.c, 500);
        a4.setText("读取中…");
        c.addView(a4);
        linearLayout.addView(c, dev.duo.hookprobe.U.a());
        return a4;
    }

    private android.view.View a(android.widget.LinearLayout linearLayout, java.lang.String str, android.widget.TextView textView) {
        android.widget.LinearLayout a = dev.duo.hookprobe.U.a((android.content.Context) this);
        a.addView(dev.duo.hookprobe.U.a((android.content.Context) this, str), dev.duo.hookprobe.U.a());
        android.widget.LinearLayout e = e();
        e.setPadding(a(16.0f), a(14.0f), a(16.0f), a(14.0f));
        e.addView(textView, dev.duo.hookprobe.U.a());
        a.addView(e, dev.duo.hookprobe.U.a());
        linearLayout.addView(a, dev.duo.hookprobe.U.a());
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        this.c.setText(str);
        this.d.setText(str2);
        this.f.setText(str3);
        this.h.setVisibility(str3.isEmpty() ? 8 : 0);
        if (str4.startsWith("restored ")) {
            b();
        }
    }

    private void a() {
        if (this.j) {
            return;
        }
        this.j = true;
        this.e.setText("正在备份…");
        final java.io.File file = new java.io.File(getFilesDir(), "layout-backup");
        dev.duo.hookprobe.MainActivity.a.execute(new java.lang.Runnable() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.LayoutBackupActivity.this.a(file);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(java.lang.String str) {
        this.j = false;
        this.e.setText("立即备份");
        android.widget.Toast.makeText(this, str, 1).show();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.io.File file) {
        final java.lang.String str;
        try {
            java.lang.String replaceAll = dev.duo.hookprobe.M.a(a(file.getAbsolutePath()), true).trim().replaceAll("(?s).*OK ", "");
            str = "已备份（" + (g(replaceAll) == null ? "完成" : g(replaceAll)) + "）";
        } catch (java.lang.IllegalStateException e) {
            java.lang.String message = e.getMessage() != null ? e.getMessage() : "";
            str = message.contains("BUSY") ? "桌面正在写数据，过几秒再点一次" : message.contains("NOT_DUO") ? "现在用的是小米原生布局，不用备份" : message.contains("MIGRATED") ? "桌面现在是被打乱的状态，先别备份（重启一次桌面会自动换回）" : message.contains("NO_STORE") ? "桌面还没带 MiDuo 启动过，先重启一次桌面再备份" : "备份失败：" + message;
        } catch (java.lang.Exception e2) {
            str = "备份失败：需要 root。" + (e2.getMessage() != null ? e2.getMessage() : "");
        }
        this.a.post(new java.lang.Runnable() { // from class: dev.duo.hookprobe.LayoutBackupActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.LayoutBackupActivity.this.c(str);
            }
        });
    }

    private java.lang.String b(java.lang.String str) {
        if (str == null) {
            return "未知小部件";
        }
        android.content.ComponentName unflattenFromString = android.content.ComponentName.unflattenFromString(str);
        if (unflattenFromString == null) {
            return str;
        }
        try {
            android.content.pm.PackageManager packageManager = getPackageManager();
            return ((java.lang.Object) packageManager.getReceiverInfo(unflattenFromString, 0).loadLabel(packageManager)) + "（" + ((java.lang.Object) packageManager.getApplicationLabel(packageManager.getApplicationInfo(unflattenFromString.getPackageName(), 0))) + "）";
        } catch (android.content.pm.PackageManager.NameNotFoundException e) {
            return unflattenFromString.getPackageName() + "（App 已卸载）";
        }
    }

    static java.lang.String a(java.lang.String str) {
        return "set -e\nS=/data/user_de/0/com.miui.home/files/miduo-layout; D=/data/user_de/0/com.miui.home/databases; A=" + str + "\n[ -d $S ] || { echo NO_STORE; exit 3; }\nact=duo; [ -f $S/active ] && act=$(cat $S/active)\n[ \"$act\" = duo ] || { echo NOT_DUO; exit 3; }\n[ -e $S/swapping ] || [ -e $S/restoring ] && { echo SWAPPING; exit 3; }\n[ -e $D/launcher4x5.db ] && { echo MIGRATED; exit 3; }\n[ -f $D/launcher4x6.db ] || { echo NO_DB; exit 3; }\nf=launcher4x6.db; for x in -wal -journal; do if [ -f $D/launcher4x6.db$x ]; then f=\"$f launcher4x6.db$x\"; fi; done\nT=$A.tmp; rm -rf $T; mkdir -p $T\nb=$(cd $D && sha256sum $f)\nfor n in $f; do cp $D/$n $T/$n; done\na=$(cd $D && sha256sum $f); c=$(cd $T && sha256sum $f)\n[ \"$b\" = \"$a\" ] && [ \"$b\" = \"$c\" ] || { rm -rf $T; echo BUSY; exit 4; }\ndate +%s > $T/stamp\nM=$S/manual.tmp; rm -rf $M; cp -r $T $M; chmod 700 $M; chmod 600 $M/*\nchown -R $(stat -c %u:%g $S) $M; chcon -R $(stat -c %C $S) $M\nrm -rf $S/manual.old; if [ -d $S/manual ]; then mv $S/manual $S/manual.old; fi; mv $M $S/manual; rm -rf $S/manual.old\nrm -f $S/hold\nP=$(dirname $A); chown -R $(stat -c %u:%g $P) $T; chcon -R $(stat -c %C $P) $T\nrm -rf $A.old; if [ -d $A ]; then mv $A $A.old; fi; mv $T $A; rm -rf $A.old\nsync\necho OK $(cat $A/stamp)\n";
    }
}
