package dev.duo.workspaceprobe;

import android.app.TaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.media.AudioPlaybackConfiguration;
import android.media.MediaMetadata;
import android.media.VolumeShaper;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class o {
    private static final String a = "DuoWorkbenchAudio";
    private static final int b = 15;
    private static final long c = 1000;
    static final Set<String> d = new HashSet(Arrays.asList("com.ss.android.ugc.aweme", "com.smile.gifmaker", "tv.danmaku.bili", "com.qiyi.video", "com.tencent.qqlive", "com.youku.phone", "com.miui.video"));
    private static o e;
    private VolumeShaper.Configuration A;
    private VolumeShaper.Operation B;
    private Object C;
    private Method D;
    private Method E;
    private final Context f;
    private final Handler g;
    private final AudioManager h;
    private final MediaSessionManager i;
    private String[] o;
    private boolean p;
    private boolean q;
    private boolean r;
    private Method s;
    private Method t;
    private Method u;
    private Method v;
    private Method w;
    private Method x;
    private Method y;
    private VolumeShaper.Configuration z;
    private final Map<MediaSession.Token, c> j = new HashMap();
    private final Map<Integer, b> k = new HashMap();
    private final Map<String, IBinder> l = new HashMap();
    private final Map<String, Integer> m = new HashMap();
    private final Set<String> n = new HashSet();
    private final MediaSessionManager.OnActiveSessionsChangedListener F = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda0
        @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
        public final void onActiveSessionsChanged(List list) {
            dev.duo.workspaceprobe.o.this.a(list);
        }
    };
    private final AudioManager.AudioPlaybackCallback G = new a();

    class a extends AudioManager.AudioPlaybackCallback {
        a() {
        }

        @Override // android.media.AudioManager.AudioPlaybackCallback
        public void onPlaybackConfigChanged(List<AudioPlaybackConfiguration> list) {
            dev.duo.workspaceprobe.o.this.c();
            if (dev.duo.workspaceprobe.o.this.p && dev.duo.workspaceprobe.o.this.k.isEmpty() && dev.duo.workspaceprobe.o.this.l.isEmpty()) {
                dev.duo.workspaceprobe.o.this.e();
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

    private final class c extends MediaController.Callback {
        final MediaController a;
        final MediaSession.Token b;
        boolean c;
        boolean d;
        boolean e;
        boolean f;
        boolean g;
        long h;
        int i = -1;
        PlaybackState j;
        String k;

        c(MediaController mediaController) {
            this.a = mediaController;
            this.b = mediaController.getSessionToken();
        }

        boolean a() {
            return !dev.duo.workspaceprobe.o.this.p && dev.duo.workspaceprobe.o.this.j.get(this.b) == this;
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            if (a()) {
                if (playbackInfo == null || playbackInfo.getPlaybackType() != 1) {
                    dev.duo.workspaceprobe.o.this.a(this, false);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            if (a()) {
                this.g = false;
                this.f = false;
                this.e = false;
                this.d = false;
                this.j = null;
                this.c = false;
                try {
                    a(this.a.getPlaybackState(), false);
                } catch (RuntimeException e) {
                    Log.e(o.a, "媒体条目更新失败", e);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            if (a()) {
                try {
                    a(playbackState, true);
                } catch (RuntimeException e) {
                    this.e = false;
                    this.d = false;
                    Log.e(o.a, "媒体状态回调失败，放弃自动播放权", e);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            if (dev.duo.workspaceprobe.o.this.j.get(this.b) == this) {
                dev.duo.workspaceprobe.o.this.a(this, false);
            }
        }

        void a(boolean z) {
            PlaybackState playbackState;
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.h;
            if (this.f) {
                if (elapsedRealtime > o.c) {
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
            this.h = SystemClock.elapsedRealtime();
            try {
                this.a.getTransportControls().pause();
            } catch (RuntimeException e) {
                this.f = false;
                Log.e(o.a, "定向暂停失败 " + this.a.getPackageName(), e);
            }
        }

        void a(PlaybackState playbackState, boolean z) {
            if (playbackState == null) {
                this.e = false;
                this.d = false;
                dev.duo.workspaceprobe.o.this.a(this.a.getPackageName(), "会话没有播放状态，仅请求播放器静音");
                return;
            }
            if (this.d && z && SystemClock.elapsedRealtime() - this.h > o.c) {
                this.d = false;
                dev.duo.workspaceprobe.o.this.a(this.a.getPackageName(), "暂停未及时确认，之后的暂停算用户的，不自动恢复");
            }
            int i = this.i;
            this.i = playbackState.getState();
            if (z && ((this.g || this.f) && SystemClock.elapsedRealtime() - this.h > o.c)) {
                this.f = false;
                this.g = false;
                dev.duo.workspaceprobe.o.this.a(this.a.getPackageName(), "暂停后状态又变，算用户操作，不再自动恢复");
            }
            int i2 = this.i;
            if (i2 == 3 && i != 3) {
                this.c = false;
            }
            if (this.d && z && i2 == 3 && playbackState.getLastPositionUpdateTime() >= this.h) {
                this.d = false;
                dev.duo.workspaceprobe.o.this.a(this.a.getPackageName(), "暂停后仍报告播放，仅保持静音，不认领随后的用户暂停");
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
                this.e = o.b(playbackState, this.a.getPlaybackState());
                this.j = playbackState;
                this.k = o.b(this.a.getMetadata());
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
                dev.duo.workspaceprobe.o.this.a(this.a.getPackageName(), "媒体会话不支持暂停，仅请求播放器静音，视频可能继续");
                return;
            }
            this.d = true;
            this.h = SystemClock.elapsedRealtime();
            try {
                this.a.getTransportControls().pause();
            } catch (RuntimeException e) {
                this.d = false;
                Log.e(o.a, "定向暂停失败 " + this.a.getPackageName(), e);
            }
        }
    }

    o(Context context, Handler handler) {
        this.f = context;
        this.g = handler;
        this.h = (AudioManager) context.getSystemService(AudioManager.class);
        this.i = (MediaSessionManager) context.getSystemService(MediaSessionManager.class);
    }

    private void g() {
        o oVar = e;
        if (oVar == null) {
            return;
        }
        this.k.putAll(oVar.k);
        oVar.k.clear();
        this.l.putAll(oVar.l);
        oVar.l.clear();
        oVar.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(MediaMetadata mediaMetadata) {
        if (mediaMetadata == null) {
            return null;
        }
        return mediaMetadata.getString("android.media.metadata.MEDIA_ID") + "\n" + mediaMetadata.getString("android.media.metadata.TITLE") + "\n" + mediaMetadata.getLong("android.media.metadata.DURATION");
    }

    private void c(List<MediaController> list) {
        HashSet hashSet = new HashSet();
        Iterator<MediaController> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getSessionToken());
        }
        ArrayList arrayList = new ArrayList(this.j.values());
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            Object obj = arrayList.get(i);
            i++;
            c cVar = (c) obj;
            if (!hashSet.contains(cVar.b)) {
                a(cVar, false);
            } else if (!this.m.containsKey(cVar.a.getPackageName())) {
                a(cVar, (this.p || this.o.length == 0 || !new StringBuilder().append(Process.myUid() / 100000).append(":").append(cVar.a.getPackageName()).toString().equals(this.o[0])) ? false : true);
            }
        }
        if (this.p) {
            return;
        }
        for (MediaController mediaController : list) {
            if (this.m.containsKey(mediaController.getPackageName()) && !this.j.containsKey(mediaController.getSessionToken())) {
                MediaController.PlaybackInfo playbackInfo = mediaController.getPlaybackInfo();
                if (playbackInfo == null || playbackInfo.getPlaybackType() != 1) {
                    a(mediaController.getPackageName(), "远程或未知播放路由，不控制工作台外设备");
                } else {
                    c cVar2 = new c(mediaController);
                    this.j.put(cVar2.b, cVar2);
                    try {
                        mediaController.registerCallback(cVar2, this.g);
                        cVar2.a(mediaController.getPlaybackState(), false);
                    } catch (RuntimeException e2) {
                        Log.e(a, "媒体会话接管失败 " + mediaController.getPackageName(), e2);
                        a(cVar2, false);
                    }
                }
            }
        }
    }

    private void d() {
        try {
            c(this.i.getActiveSessions(null));
        } catch (RuntimeException e2) {
            Log.e(a, "媒体会话列表读取失败", e2);
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
            } catch (RuntimeException e2) {
                Log.e(a, "播放器监听注销失败", e2);
            }
        }
    }

    private void f() throws ReflectiveOperationException {
        if (this.m.isEmpty() && this.l.isEmpty()) {
            return;
        }
        if (this.C == null) {
            this.C = Class.forName("android.media.IAudioService$Stub").getMethod("asInterface", IBinder.class).invoke(null, Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "audio"));
            Class<?> cls = Class.forName("android.media.IAudioService");
            Class cls2 = Integer.TYPE;
            this.D = cls.getMethod("enterFocusIsolation", cls2, IBinder.class);
            this.E = cls.getMethod("exitFocusIsolation", IBinder.class, cls2);
        }
        for (Map.Entry<String, Integer> entry : this.m.entrySet()) {
            if (!this.l.containsKey(entry.getKey())) {
                Binder binder = new Binder();
                this.l.put(entry.getKey(), binder);
                if (!Boolean.TRUE.equals(this.D.invoke(this.C, entry.getValue(), binder))) {
                    this.l.remove(entry.getKey());
                    throw new IllegalStateException("无法取得视频焦点隔离 " + entry.getKey());
                }
            }
        }
        ArrayList arrayList = new ArrayList(this.l.keySet());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str = (String) obj;
            if (!this.m.containsKey(str)) {
                if (!Boolean.TRUE.equals(this.E.invoke(this.C, this.l.get(str), Integer.valueOf(!this.p && this.o.length != 0 && new StringBuilder().append(Process.myUid() / 100000).append(":").append(str).toString().equals(this.o[0]) ? 1 : 2)))) {
                    Log.w(a, "视频焦点隔离记录已不存在 " + str);
                }
                this.l.remove(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(PlaybackState playbackState, PlaybackState playbackState2) {
        return playbackState != null && playbackState2 != null && playbackState2.getState() == 2 && playbackState.getLastPositionUpdateTime() == playbackState2.getLastPositionUpdateTime() && playbackState.getPosition() == playbackState2.getPosition() && playbackState.getActions() == playbackState2.getActions();
    }

    static String a(TaskInfo taskInfo) throws ReflectiveOperationException {
        if (taskInfo == null) {
            return null;
        }
        Intent intent = taskInfo.baseIntent;
        ComponentName component = intent != null ? intent.getComponent() : null;
        if (component == null) {
            component = taskInfo.baseActivity;
        }
        if (component == null || component.getPackageName().startsWith("dev.duo.")) {
            return null;
        }
        return taskInfo.getClass().getField("userId").getInt(taskInfo) + ":" + component.getPackageName();
    }

    private void b() throws ReflectiveOperationException {
        if (this.f.checkSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0) {
            this.s = AudioPlaybackConfiguration.class.getMethod("getPlayerInterfaceId", null);
            this.t = AudioPlaybackConfiguration.class.getMethod("getClientUid", null);
            this.u = AudioPlaybackConfiguration.class.getMethod("getClientPid", null);
            this.v = AudioPlaybackConfiguration.class.getMethod("getPlayerState", null);
            this.w = AudioPlaybackConfiguration.class.getMethod("getPlayerType", null);
            this.x = AudioPlaybackConfiguration.class.getMethod("getPlayerProxy", null);
            this.y = Class.forName("android.media.PlayerProxy").getMethod("applyVolumeShaper", VolumeShaper.Configuration.class, VolumeShaper.Operation.class);
            VolumeShaper.Configuration.Builder curve = new VolumeShaper.Configuration.Builder().setDuration(1L).setCurve(new float[]{0.0f, 1.0f}, new float[]{0.0f, 0.0f});
            Class<?> cls = curve.getClass();
            Class cls2 = Integer.TYPE;
            cls.getMethod("setId", cls2).invoke(curve, Integer.valueOf(b));
            this.A = (VolumeShaper.Configuration) VolumeShaper.Configuration.class.getConstructor(cls2).newInstance(Integer.valueOf(b));
            Object newInstance = Class.forName("android.media.VolumeShaper$Operation$Builder").getConstructor(null).newInstance(null);
            newInstance.getClass().getMethod("terminate", null).invoke(newInstance, null);
            this.B = (VolumeShaper.Operation) newInstance.getClass().getMethod("build", null).invoke(newInstance, null);
            this.z = curve.build();
            return;
        }
        throw new SecurityException("SystemUI lacks MODIFY_AUDIO_ROUTING; anonymized player lists are not controllable");
    }

    void a(String[] strArr) {
        if (this.p || Arrays.equals(this.o, strArr)) {
            return;
        }
        this.o = (String[]) strArr.clone();
        this.m.clear();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (String str : strArr) {
            if (str != null && !hashSet2.add(str)) {
                hashSet.add(str);
            }
        }
        for (int i = 1; i < strArr.length; i++) {
            String str2 = strArr[i];
            if (str2 != null) {
                if (hashSet.contains(str2)) {
                    a(str2, "同一应用多任务，不能把媒体归属到具体窗口");
                } else {
                    int indexOf = str2.indexOf(58);
                    String substring = str2.substring(indexOf + 1);
                    if (dev.duo.workspaceprobe.d.contains(substring)) {
                        if (Integer.parseInt(str2.substring(0, indexOf)) != Process.myUid() / 100000) {
                            a(str2, "其他用户媒体不接管");
                        } else {
                            try {
                                int i2 = this.f.getPackageManager().getApplicationInfo(substring, 0).uid;
                                String[] packagesForUid = this.f.getPackageManager().getPackagesForUid(i2);
                                if (i2 % 100000 >= 10000 && packagesForUid != null && packagesForUid.length == 1 && substring.equals(packagesForUid[0])) {
                                    this.m.put(substring, Integer.valueOf(i2));
                                }
                                a(str2, "系统或共享 UID，无法安全定向静音");
                            } catch (PackageManager.NameNotFoundException e2) {
                                Log.e(a, "成员已不可用 " + substring, e2);
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
            } catch (RuntimeException e3) {
                Log.e(a, "无法监听媒体会话；暂停不可用", e3);
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
            } catch (ReflectiveOperationException | RuntimeException e4) {
                Log.e(a, "无法监听或定向静音播放器", e4);
            }
        }
        try {
            f();
            c();
            d();
            c();
        } catch (ReflectiveOperationException e5) {
            throw new IllegalStateException("小窗视频焦点隔离失败", e5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.p && !this.l.isEmpty()) {
            try {
                f();
            } catch (ReflectiveOperationException | RuntimeException e2) {
                Log.e(a, "视频焦点隔离尚未释放", e2);
            }
        }
        if (this.z == null) {
            return;
        }
        try {
            b(this.h.getActivePlaybackConfigurations());
        } catch (RuntimeException e3) {
            Log.e(a, "播放器列表读取失败", e3);
        }
    }

    private void b(List<AudioPlaybackConfiguration> list) {
        int i;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator<AudioPlaybackConfiguration> it = list.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            AudioPlaybackConfiguration next = it.next();
            try {
                Integer num = (Integer) this.s.invoke(next, null);
                num.intValue();
                Integer num2 = (Integer) this.t.invoke(next, null);
                int intValue = num2.intValue();
                int intValue2 = ((Integer) this.u.invoke(next, null)).intValue();
                hashSet.add(num);
                if (((Integer) this.v.invoke(next, null)).intValue() == 2) {
                    hashSet2.add(num2);
                }
                b bVar = this.k.get(num);
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
                } else if (bVar == null && i != 0 && ((Integer) this.v.invoke(next, null)).intValue() == 2) {
                    int usage = next.getAudioAttributes().getUsage();
                    if (usage != 1 && usage != 14) {
                        a("uid=" + intValue + "/usage=" + usage, "非媒体/游戏音频，不接管通话、提示音或用途未知的播放器");
                    } else {
                        int intValue3 = ((Integer) this.w.invoke(next, null)).intValue();
                        if (intValue3 != 1 && intValue3 != 2) {
                            a("uid=" + intValue + "/type=" + intValue3, "此播放器不在 AudioTrack/MediaPlayer 静音支持范围");
                        } else {
                            this.y.invoke(this.x.invoke(next, null), this.z, VolumeShaper.Operation.PLAY);
                            this.k.put(num, new b(intValue, intValue2));
                        }
                    }
                }
            } catch (ReflectiveOperationException | RuntimeException e2) {
                Log.e(a, "播放器静音层操作失败", e2);
            }
        }
        this.k.keySet().retainAll(hashSet);
        if (this.p) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.j.values());
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            c cVar = (c) obj;
            Integer num3 = this.m.get(cVar.a.getPackageName());
            if (num3 != null) {
                cVar.a(hashSet2.contains(num3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        if (this.p) {
            return;
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar, boolean z) {
        this.j.remove(cVar.b);
        try {
            try {
                try {
                    PlaybackState playbackState = cVar.a.getPlaybackState();
                    MediaController.PlaybackInfo playbackInfo = cVar.a.getPlaybackInfo();
                    if (cVar.d) {
                        a(cVar.a.getPackageName(), "暂停未确认，不自动播放");
                    }
                    if (z && cVar.e && playbackInfo != null && playbackInfo.getPlaybackType() == 1 && Objects.equals(cVar.k, b(cVar.a.getMetadata())) && b(cVar.j, playbackState) && (playbackState.getActions() & 4) != 0) {
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
                } catch (RuntimeException e2) {
                    Log.e(a, "恢复工作台暂停的媒体失败", e2);
                    cVar.g = false;
                    cVar.f = false;
                    cVar.e = false;
                    cVar.d = false;
                    cVar.j = null;
                    cVar.a.unregisterCallback(cVar);
                }
            } catch (RuntimeException e3) {
                Log.e(a, "媒体监听注销失败", e3);
            }
        } catch (Throwable th) {
            cVar.g = false;
            cVar.f = false;
            cVar.e = false;
            cVar.d = false;
            cVar.j = null;
            try {
                cVar.a.unregisterCallback(cVar);
            } catch (RuntimeException e4) {
                Log.e(a, "媒体监听注销失败", e4);
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
        } catch (RuntimeException e2) {
            Log.e(a, "退出时无法核对会话存活，不发送播放", e2);
        }
        ArrayList arrayList = new ArrayList(this.j.values());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            a((c) obj, false);
        }
        if (this.k.isEmpty() && this.l.isEmpty()) {
            e();
        } else {
            Log.w(a, "音频控制未确认撤销，保留清理责任 " + this.k.keySet() + "/" + this.l.keySet());
            e = this;
            if (!this.q) {
                Log.e(a, "音频清理尚未完成且没有播放器监听");
            }
        }
        if (this.r) {
            try {
                this.i.removeOnActiveSessionsChangedListener(this.F);
            } catch (RuntimeException e3) {
                Log.e(a, "会话列表监听注销失败", e3);
            }
        }
        this.o = null;
        this.n.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        if (this.n.add(str + str2)) {
            Log.w(a, str + "：" + str2);
        }
    }
}
