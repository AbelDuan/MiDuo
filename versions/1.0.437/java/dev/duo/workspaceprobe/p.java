package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class p {
    private static final java.lang.String a = "DuoWorkbenchAudio";
    private static final int b = 15;
    private static final long c = 1000;
    static final java.util.Set<java.lang.String> d = new java.util.HashSet(java.util.Arrays.asList("com.ss.android.ugc.aweme", "com.smile.gifmaker", "tv.danmaku.bili", "com.qiyi.video", "com.tencent.qqlive", "com.youku.phone", "com.miui.video"));
    private static dev.duo.workspaceprobe.p e;
    private android.media.VolumeShaper.Configuration A;
    private android.media.VolumeShaper.Operation B;
    private java.lang.Object C;
    private java.lang.reflect.Method D;
    private java.lang.reflect.Method E;
    private final android.content.Context f;
    private final android.os.Handler g;
    private final android.media.AudioManager h;
    private final android.media.session.MediaSessionManager i;
    private java.lang.String[] o;
    private boolean p;
    private boolean q;
    private boolean r;
    private java.lang.reflect.Method s;
    private java.lang.reflect.Method t;
    private java.lang.reflect.Method u;
    private java.lang.reflect.Method v;
    private java.lang.reflect.Method w;
    private java.lang.reflect.Method x;
    private java.lang.reflect.Method y;
    private android.media.VolumeShaper.Configuration z;
    private final java.util.Map<android.media.session.MediaSession.Token, dev.duo.workspaceprobe.p.c> j = new java.util.HashMap();
    private final java.util.Map<java.lang.Integer, dev.duo.workspaceprobe.p.b> k = new java.util.HashMap();
    private final java.util.Map<java.lang.String, android.os.IBinder> l = new java.util.HashMap();
    private final java.util.Map<java.lang.String, java.lang.Integer> m = new java.util.HashMap();
    private final java.util.Set<java.lang.String> n = new java.util.HashSet();
    private final android.media.session.MediaSessionManager.OnActiveSessionsChangedListener F = new android.media.session.MediaSessionManager.OnActiveSessionsChangedListener() { // from class: dev.duo.workspaceprobe.p$$ExternalSyntheticLambda0
        @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
        public final void onActiveSessionsChanged(java.util.List list) {
            dev.duo.workspaceprobe.p.this.a(list);
        }
    };
    private final android.media.AudioManager.AudioPlaybackCallback G = new dev.duo.workspaceprobe.p.a();

    class a extends android.media.AudioManager.AudioPlaybackCallback {
        a() {
        }

        @Override // android.media.AudioManager.AudioPlaybackCallback
        public void onPlaybackConfigChanged(java.util.List<android.media.AudioPlaybackConfiguration> list) {
            dev.duo.workspaceprobe.p.this.c();
            if (dev.duo.workspaceprobe.p.this.p && dev.duo.workspaceprobe.p.this.k.isEmpty() && dev.duo.workspaceprobe.p.this.l.isEmpty()) {
                dev.duo.workspaceprobe.p.this.e();
            }
        }
    }

    private static final class b {
        final int a;
        final int b;

        b(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        boolean a(int i, int i2) {
            return this.a == i && this.b == i2;
        }
    }

    private final class c extends android.media.session.MediaController.Callback {
        final android.media.session.MediaController a;
        final android.media.session.MediaSession.Token b;
        boolean c;
        boolean d;
        boolean e;
        boolean f;
        boolean g;
        long h;
        int i = -1;
        android.media.session.PlaybackState j;
        java.lang.String k;

        c(android.media.session.MediaController mediaController) {
            this.a = mediaController;
            this.b = mediaController.getSessionToken();
        }

        boolean a() {
            return !dev.duo.workspaceprobe.p.this.p && dev.duo.workspaceprobe.p.this.j.get(this.b) == this;
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(android.media.session.MediaController.PlaybackInfo playbackInfo) {
            if (a()) {
                if (playbackInfo == null || playbackInfo.getPlaybackType() != 1) {
                    dev.duo.workspaceprobe.p.this.a(this, false);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(android.media.MediaMetadata mediaMetadata) {
            if (a()) {
                this.g = false;
                this.f = false;
                this.e = false;
                this.d = false;
                this.j = null;
                this.c = false;
                try {
                    a(this.a.getPlaybackState(), false);
                } catch (java.lang.RuntimeException e) {
                    android.util.Log.e(dev.duo.workspaceprobe.p.a, "媒体条目更新失败", e);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(android.media.session.PlaybackState playbackState) {
            if (a()) {
                try {
                    a(playbackState, true);
                } catch (java.lang.RuntimeException e) {
                    this.e = false;
                    this.d = false;
                    android.util.Log.e(dev.duo.workspaceprobe.p.a, "媒体状态回调失败，放弃自动播放权", e);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            if (dev.duo.workspaceprobe.p.this.j.get(this.b) == this) {
                dev.duo.workspaceprobe.p.this.a(this, false);
            }
        }

        void a(boolean z) {
            android.media.session.PlaybackState playbackState;
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime() - this.h;
            if (this.f) {
                if (elapsedRealtime > dev.duo.workspaceprobe.p.c) {
                    this.f = false;
                    return;
                } else {
                    if (z) {
                        return;
                    }
                    this.f = false;
                    this.g = true;
                    return;
                }
            }
            if (z) {
                this.g = false;
            }
            if (!z || this.d || this.e || this.g || this.c || (playbackState = this.a.getPlaybackState()) == null || playbackState.getState() == 3 || (playbackState.getActions() & 2) == 0) {
                return;
            }
            this.f = true;
            this.c = true;
            this.h = android.os.SystemClock.elapsedRealtime();
            try {
                this.a.getTransportControls().pause();
            } catch (java.lang.RuntimeException e) {
                this.f = false;
                android.util.Log.e(dev.duo.workspaceprobe.p.a, "定向暂停失败 " + this.a.getPackageName(), e);
            }
        }

        void a(android.media.session.PlaybackState playbackState, boolean z) {
            if (playbackState == null) {
                this.e = false;
                this.d = false;
                dev.duo.workspaceprobe.p.this.a(this.a.getPackageName(), "会话没有播放状态，仅请求播放器静音");
                return;
            }
            if (this.d && z && android.os.SystemClock.elapsedRealtime() - this.h > dev.duo.workspaceprobe.p.c) {
                this.d = false;
                dev.duo.workspaceprobe.p.this.a(this.a.getPackageName(), "暂停未及时确认，之后的暂停算用户的，不自动恢复");
            }
            int i = this.i;
            this.i = playbackState.getState();
            if (z && ((this.g || this.f) && android.os.SystemClock.elapsedRealtime() - this.h > dev.duo.workspaceprobe.p.c)) {
                this.f = false;
                this.g = false;
                dev.duo.workspaceprobe.p.this.a(this.a.getPackageName(), "暂停后状态又变，算用户操作，不再自动恢复");
            }
            int i2 = this.i;
            if (i2 == 3 && i != 3) {
                this.c = false;
            }
            if (this.d && z && i2 == 3 && playbackState.getLastPositionUpdateTime() >= this.h) {
                this.d = false;
                dev.duo.workspaceprobe.p.this.a(this.a.getPackageName(), "暂停后仍报告播放，仅保持静音，不认领随后的用户暂停");
            }
            if (this.e && z) {
                if (playbackState.getState() == 3) {
                    this.c = false;
                }
                this.e = false;
                this.j = null;
            }
            if (this.d && z && playbackState.getState() == 2 && playbackState.getLastPositionUpdateTime() >= this.h) {
                this.d = false;
                this.e = dev.duo.workspaceprobe.p.b(playbackState, this.a.getPlaybackState());
                this.j = playbackState;
                this.k = dev.duo.workspaceprobe.p.b(this.a.getMetadata());
                return;
            }
            if (playbackState.getState() != 3) {
                if (playbackState.getState() != 2) {
                    this.e = false;
                    this.d = false;
                    return;
                }
                return;
            }
            if (this.c) {
                return;
            }
            this.c = true;
            if ((playbackState.getActions() & 2) == 0) {
                dev.duo.workspaceprobe.p.this.a(this.a.getPackageName(), "媒体会话不支持暂停，仅请求播放器静音，视频可能继续");
                return;
            }
            this.d = true;
            this.h = android.os.SystemClock.elapsedRealtime();
            try {
                this.a.getTransportControls().pause();
            } catch (java.lang.RuntimeException e) {
                this.d = false;
                android.util.Log.e(dev.duo.workspaceprobe.p.a, "定向暂停失败 " + this.a.getPackageName(), e);
            }
        }
    }

    p(android.content.Context context, android.os.Handler handler) {
        this.f = context;
        this.g = handler;
        this.h = (android.media.AudioManager) context.getSystemService(android.media.AudioManager.class);
        this.i = (android.media.session.MediaSessionManager) context.getSystemService(android.media.session.MediaSessionManager.class);
    }

    private void g() {
        dev.duo.workspaceprobe.p pVar = e;
        if (pVar == null) {
            return;
        }
        this.k.putAll(pVar.k);
        pVar.k.clear();
        this.l.putAll(pVar.l);
        pVar.l.clear();
        pVar.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.String b(android.media.MediaMetadata mediaMetadata) {
        if (mediaMetadata == null) {
            return null;
        }
        return mediaMetadata.getString("android.media.metadata.MEDIA_ID") + "\n" + mediaMetadata.getString("android.media.metadata.TITLE") + "\n" + mediaMetadata.getLong("android.media.metadata.DURATION");
    }

    private void c(java.util.List<android.media.session.MediaController> list) {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.Iterator<android.media.session.MediaController> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getSessionToken());
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(this.j.values());
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            java.lang.Object obj = arrayList.get(i);
            i++;
            dev.duo.workspaceprobe.p.c cVar = (dev.duo.workspaceprobe.p.c) obj;
            if (!hashSet.contains(cVar.b)) {
                a(cVar, false);
            } else if (!this.m.containsKey(cVar.a.getPackageName())) {
                a(cVar, (this.p || this.o.length == 0 || !new java.lang.StringBuilder().append(android.os.Process.myUid() / 100000).append(":").append(cVar.a.getPackageName()).toString().equals(this.o[0])) ? false : true);
            }
        }
        if (this.p) {
            return;
        }
        for (android.media.session.MediaController mediaController : list) {
            if (this.m.containsKey(mediaController.getPackageName()) && !this.j.containsKey(mediaController.getSessionToken())) {
                android.media.session.MediaController.PlaybackInfo playbackInfo = mediaController.getPlaybackInfo();
                if (playbackInfo == null || playbackInfo.getPlaybackType() != 1) {
                    a(mediaController.getPackageName(), "远程或未知播放路由，不控制工作台外设备");
                } else {
                    dev.duo.workspaceprobe.p.c cVar2 = new dev.duo.workspaceprobe.p.c(mediaController);
                    this.j.put(cVar2.b, cVar2);
                    try {
                        mediaController.registerCallback(cVar2, this.g);
                        cVar2.a(mediaController.getPlaybackState(), false);
                    } catch (java.lang.RuntimeException e2) {
                        android.util.Log.e(a, "媒体会话接管失败 " + mediaController.getPackageName(), e2);
                        a(cVar2, false);
                    }
                }
            }
        }
    }

    private void d() {
        try {
            c(this.i.getActiveSessions(null));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "媒体会话列表读取失败", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (e == this) {
            e = null;
        }
        if (this.q) {
            this.q = false;
            try {
                this.h.unregisterAudioPlaybackCallback(this.G);
            } catch (java.lang.RuntimeException e2) {
                android.util.Log.e(a, "播放器监听注销失败", e2);
            }
        }
    }

    private void f() throws java.lang.ReflectiveOperationException {
        if (this.m.isEmpty() && this.l.isEmpty()) {
            return;
        }
        if (this.C == null) {
            this.C = java.lang.Class.forName("android.media.IAudioService$Stub").getMethod("asInterface", android.os.IBinder.class).invoke(null, java.lang.Class.forName("android.os.ServiceManager").getMethod("getService", java.lang.String.class).invoke(null, "audio"));
            java.lang.Class<?> cls = java.lang.Class.forName("android.media.IAudioService");
            java.lang.Class cls2 = java.lang.Integer.TYPE;
            this.D = cls.getMethod("enterFocusIsolation", cls2, android.os.IBinder.class);
            this.E = cls.getMethod("exitFocusIsolation", android.os.IBinder.class, cls2);
        }
        for (java.util.Map.Entry<java.lang.String, java.lang.Integer> entry : this.m.entrySet()) {
            if (!this.l.containsKey(entry.getKey())) {
                android.os.Binder binder = new android.os.Binder();
                this.l.put(entry.getKey(), binder);
                if (!java.lang.Boolean.TRUE.equals(this.D.invoke(this.C, entry.getValue(), binder))) {
                    this.l.remove(entry.getKey());
                    throw new java.lang.IllegalStateException("无法取得视频焦点隔离 " + entry.getKey());
                }
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(this.l.keySet());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            java.lang.Object obj = arrayList.get(i);
            i++;
            java.lang.String str = (java.lang.String) obj;
            if (!this.m.containsKey(str)) {
                if (!java.lang.Boolean.TRUE.equals(this.E.invoke(this.C, this.l.get(str), java.lang.Integer.valueOf(!this.p && this.o.length != 0 && new java.lang.StringBuilder().append(android.os.Process.myUid() / 100000).append(":").append(str).toString().equals(this.o[0]) ? 1 : 2)))) {
                    android.util.Log.w(a, "视频焦点隔离记录已不存在 " + str);
                }
                this.l.remove(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(android.media.session.PlaybackState playbackState, android.media.session.PlaybackState playbackState2) {
        return playbackState != null && playbackState2 != null && playbackState2.getState() == 2 && playbackState.getLastPositionUpdateTime() == playbackState2.getLastPositionUpdateTime() && playbackState.getPosition() == playbackState2.getPosition() && playbackState.getActions() == playbackState2.getActions();
    }

    static java.lang.String a(android.app.TaskInfo taskInfo) throws java.lang.ReflectiveOperationException {
        if (taskInfo == null) {
            return null;
        }
        android.content.Intent intent = taskInfo.baseIntent;
        android.content.ComponentName component = intent != null ? intent.getComponent() : null;
        if (component == null) {
            component = taskInfo.baseActivity;
        }
        if (component == null || component.getPackageName().startsWith("dev.duo.")) {
            return null;
        }
        return taskInfo.getClass().getField("userId").getInt(taskInfo) + ":" + component.getPackageName();
    }

    private void b() throws java.lang.ReflectiveOperationException {
        if (this.f.checkSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0) {
            this.s = android.media.AudioPlaybackConfiguration.class.getMethod("getPlayerInterfaceId", null);
            this.t = android.media.AudioPlaybackConfiguration.class.getMethod("getClientUid", null);
            this.u = android.media.AudioPlaybackConfiguration.class.getMethod("getClientPid", null);
            this.v = android.media.AudioPlaybackConfiguration.class.getMethod("getPlayerState", null);
            this.w = android.media.AudioPlaybackConfiguration.class.getMethod("getPlayerType", null);
            this.x = android.media.AudioPlaybackConfiguration.class.getMethod("getPlayerProxy", null);
            this.y = java.lang.Class.forName("android.media.PlayerProxy").getMethod("applyVolumeShaper", android.media.VolumeShaper.Configuration.class, android.media.VolumeShaper.Operation.class);
            android.media.VolumeShaper.Configuration.Builder curve = new android.media.VolumeShaper.Configuration.Builder().setDuration(1L).setCurve(new float[]{0.0f, 1.0f}, new float[]{0.0f, 0.0f});
            java.lang.Class<?> cls = curve.getClass();
            java.lang.Class cls2 = java.lang.Integer.TYPE;
            cls.getMethod("setId", cls2).invoke(curve, java.lang.Integer.valueOf(b));
            this.A = (android.media.VolumeShaper.Configuration) android.media.VolumeShaper.Configuration.class.getConstructor(cls2).newInstance(java.lang.Integer.valueOf(b));
            java.lang.Object newInstance = java.lang.Class.forName("android.media.VolumeShaper$Operation$Builder").getConstructor(null).newInstance(null);
            newInstance.getClass().getMethod("terminate", null).invoke(newInstance, null);
            this.B = (android.media.VolumeShaper.Operation) newInstance.getClass().getMethod("build", null).invoke(newInstance, null);
            this.z = curve.build();
            return;
        }
        throw new java.lang.SecurityException("SystemUI lacks MODIFY_AUDIO_ROUTING; anonymized player lists are not controllable");
    }

    void a(java.lang.String[] strArr) {
        if (this.p || java.util.Arrays.equals(this.o, strArr)) {
            return;
        }
        this.o = (java.lang.String[]) strArr.clone();
        this.m.clear();
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.HashSet hashSet2 = new java.util.HashSet();
        for (java.lang.String str : strArr) {
            if (str != null && !hashSet2.add(str)) {
                hashSet.add(str);
            }
        }
        for (int i = 1; i < strArr.length; i++) {
            java.lang.String str2 = strArr[i];
            if (str2 != null) {
                if (hashSet.contains(str2)) {
                    a(str2, "同一应用多任务，不能把媒体归属到具体窗口");
                } else {
                    int indexOf = str2.indexOf(58);
                    java.lang.String substring = str2.substring(indexOf + 1);
                    if (d.contains(substring)) {
                        if (java.lang.Integer.parseInt(str2.substring(0, indexOf)) != android.os.Process.myUid() / 100000) {
                            a(str2, "其他用户媒体不接管");
                        } else {
                            try {
                                int i2 = this.f.getPackageManager().getApplicationInfo(substring, 0).uid;
                                java.lang.String[] packagesForUid = this.f.getPackageManager().getPackagesForUid(i2);
                                if (i2 % 100000 >= 10000 && packagesForUid != null && packagesForUid.length == 1 && substring.equals(packagesForUid[0])) {
                                    this.m.put(substring, java.lang.Integer.valueOf(i2));
                                }
                                a(str2, "系统或共享 UID，无法安全定向静音");
                            } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
                                android.util.Log.e(a, "成员已不可用 " + substring, e2);
                            }
                        }
                    }
                }
            }
        }
        if (!this.r) {
            try {
                this.i.addOnActiveSessionsChangedListener(this.F, null, this.g);
                this.r = true;
            } catch (java.lang.RuntimeException e3) {
                android.util.Log.e(a, "无法监听媒体会话；暂停不可用", e3);
            }
        }
        if (!this.q) {
            try {
                if (this.z == null) {
                    b();
                }
                this.h.registerAudioPlaybackCallback(this.G, this.g);
                this.q = true;
                g();
            } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e4) {
                android.util.Log.e(a, "无法监听或定向静音播放器", e4);
            }
        }
        try {
            f();
            c();
            d();
            c();
        } catch (java.lang.ReflectiveOperationException e5) {
            throw new java.lang.IllegalStateException("小窗视频焦点隔离失败", e5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.p && !this.l.isEmpty()) {
            try {
                f();
            } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
                android.util.Log.e(a, "视频焦点隔离尚未释放", e2);
            }
        }
        if (this.z == null) {
            return;
        }
        try {
            b(this.h.getActivePlaybackConfigurations());
        } catch (java.lang.RuntimeException e3) {
            android.util.Log.e(a, "播放器列表读取失败", e3);
        }
    }

    private void b(java.util.List<android.media.AudioPlaybackConfiguration> list) {
        int i;
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.HashSet hashSet2 = new java.util.HashSet();
        java.util.Iterator<android.media.AudioPlaybackConfiguration> it = list.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            android.media.AudioPlaybackConfiguration next = it.next();
            try {
                java.lang.Integer num = (java.lang.Integer) this.s.invoke(next, null);
                num.intValue();
                java.lang.Integer num2 = (java.lang.Integer) this.t.invoke(next, null);
                int intValue = num2.intValue();
                int intValue2 = ((java.lang.Integer) this.u.invoke(next, null)).intValue();
                hashSet.add(num);
                if (((java.lang.Integer) this.v.invoke(next, null)).intValue() == 2) {
                    hashSet2.add(num2);
                }
                dev.duo.workspaceprobe.p.b bVar = this.k.get(num);
                if (bVar != null && !bVar.a(intValue, intValue2)) {
                    this.k.remove(num);
                    bVar = null;
                }
                if (!this.p && this.m.containsValue(num2)) {
                    i = 1;
                }
                if (bVar != null && i == 0) {
                    this.y.invoke(this.x.invoke(next, null), this.A, this.B);
                    this.k.remove(num);
                } else if (bVar == null && i != 0 && ((java.lang.Integer) this.v.invoke(next, null)).intValue() == 2) {
                    int usage = next.getAudioAttributes().getUsage();
                    if (usage != 1 && usage != 14) {
                        a("uid=" + intValue + "/usage=" + usage, "非媒体/游戏音频，不接管通话、提示音或用途未知的播放器");
                    } else {
                        int intValue3 = ((java.lang.Integer) this.w.invoke(next, null)).intValue();
                        if (intValue3 != 1 && intValue3 != 2) {
                            a("uid=" + intValue + "/type=" + intValue3, "此播放器不在 AudioTrack/MediaPlayer 静音支持范围");
                        } else {
                            this.y.invoke(this.x.invoke(next, null), this.z, android.media.VolumeShaper.Operation.PLAY);
                            this.k.put(num, new dev.duo.workspaceprobe.p.b(intValue, intValue2));
                        }
                    }
                }
            } catch (java.lang.ReflectiveOperationException | java.lang.RuntimeException e2) {
                android.util.Log.e(a, "播放器静音层操作失败", e2);
            }
        }
        this.k.keySet().retainAll(hashSet);
        if (this.p) {
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(this.j.values());
        int size = arrayList.size();
        while (i < size) {
            java.lang.Object obj = arrayList.get(i);
            i++;
            dev.duo.workspaceprobe.p.c cVar = (dev.duo.workspaceprobe.p.c) obj;
            java.lang.Integer num3 = this.m.get(cVar.a.getPackageName());
            if (num3 != null) {
                cVar.a(hashSet2.contains(num3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(java.util.List list) {
        if (this.p) {
            return;
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(dev.duo.workspaceprobe.p.c cVar, boolean z) {
        this.j.remove(cVar.b);
        try {
            try {
                try {
                    android.media.session.PlaybackState playbackState = cVar.a.getPlaybackState();
                    android.media.session.MediaController.PlaybackInfo playbackInfo = cVar.a.getPlaybackInfo();
                    if (cVar.d) {
                        a(cVar.a.getPackageName(), "暂停未确认，不自动播放");
                    }
                    if (z && cVar.e && playbackInfo != null && playbackInfo.getPlaybackType() == 1 && java.util.Objects.equals(cVar.k, b(cVar.a.getMetadata())) && b(cVar.j, playbackState) && (playbackState.getActions() & 4) != 0) {
                        cVar.a.getTransportControls().play();
                    } else if (z && cVar.g && playbackInfo != null && playbackInfo.getPlaybackType() == 1 && playbackState != null && (playbackState.getActions() & 4) != 0) {
                        cVar.a.getTransportControls().play();
                    }
                    cVar.g = false;
                    cVar.f = false;
                    cVar.e = false;
                    cVar.d = false;
                    cVar.j = null;
                    cVar.a.unregisterCallback(cVar);
                } catch (java.lang.RuntimeException e2) {
                    android.util.Log.e(a, "恢复工作台暂停的媒体失败", e2);
                    cVar.g = false;
                    cVar.f = false;
                    cVar.e = false;
                    cVar.d = false;
                    cVar.j = null;
                    cVar.a.unregisterCallback(cVar);
                }
            } catch (java.lang.RuntimeException e3) {
                android.util.Log.e(a, "媒体监听注销失败", e3);
            }
        } catch (java.lang.Throwable th) {
            cVar.g = false;
            cVar.f = false;
            cVar.e = false;
            cVar.d = false;
            cVar.j = null;
            try {
                cVar.a.unregisterCallback(cVar);
            } catch (java.lang.RuntimeException e4) {
                android.util.Log.e(a, "媒体监听注销失败", e4);
            }
            throw th;
        }
    }

    void a() {
        if (this.p) {
            return;
        }
        this.p = true;
        this.m.clear();
        c();
        try {
            c(this.i.getActiveSessions(null));
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e(a, "退出时无法核对会话存活，不发送播放", e2);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(this.j.values());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            java.lang.Object obj = arrayList.get(i);
            i++;
            a((dev.duo.workspaceprobe.p.c) obj, false);
        }
        if (this.k.isEmpty() && this.l.isEmpty()) {
            e();
        } else {
            android.util.Log.w(a, "音频控制未确认撤销，保留清理责任 " + this.k.keySet() + "/" + this.l.keySet());
            e = this;
            if (!this.q) {
                android.util.Log.e(a, "音频清理尚未完成且没有播放器监听");
            }
        }
        if (this.r) {
            try {
                this.i.removeOnActiveSessionsChangedListener(this.F);
            } catch (java.lang.RuntimeException e3) {
                android.util.Log.e(a, "会话列表监听注销失败", e3);
            }
        }
        this.o = null;
        this.n.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.lang.String str, java.lang.String str2) {
        if (this.n.add(str + str2)) {
            android.util.Log.w(a, str + "：" + str2);
        }
    }
}
