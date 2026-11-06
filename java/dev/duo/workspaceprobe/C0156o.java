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

/* renamed from: dev.duo.workspaceprobe.o */
/* loaded from: classes.dex */
final class C0156o {

    /* renamed from: a */
    private static final String f2946a = "DuoWorkbenchAudio";

    /* renamed from: b */
    private static final int f2947b = 15;

    /* renamed from: c */
    private static final long f2948c = 1000;

    /* renamed from: d */
    static final Set<String> f2949d = new HashSet(Arrays.asList("com.ss.android.ugc.aweme", "com.smile.gifmaker", "tv.danmaku.bili", "com.qiyi.video", "com.tencent.qqlive", "com.youku.phone", "com.miui.video"));

    /* renamed from: e */
    private static C0156o f2950e;

    /* renamed from: A */
    private VolumeShaper.Configuration f2951A;

    /* renamed from: B */
    private VolumeShaper.Operation f2952B;

    /* renamed from: C */
    private Object f2953C;

    /* renamed from: D */
    private Method f2954D;

    /* renamed from: E */
    private Method f2955E;

    /* renamed from: f */
    private final Context f2958f;

    /* renamed from: g */
    private final Handler f2959g;

    /* renamed from: h */
    private final AudioManager f2960h;

    /* renamed from: i */
    private final MediaSessionManager f2961i;

    /* renamed from: o */
    private String[] f2967o;

    /* renamed from: p */
    private boolean f2968p;

    /* renamed from: q */
    private boolean f2969q;

    /* renamed from: r */
    private boolean f2970r;

    /* renamed from: s */
    private Method f2971s;

    /* renamed from: t */
    private Method f2972t;

    /* renamed from: u */
    private Method f2973u;

    /* renamed from: v */
    private Method f2974v;

    /* renamed from: w */
    private Method f2975w;

    /* renamed from: x */
    private Method f2976x;

    /* renamed from: y */
    private Method f2977y;

    /* renamed from: z */
    private VolumeShaper.Configuration f2978z;

    /* renamed from: j */
    private final Map<MediaSession.Token, c> f2962j = new HashMap();

    /* renamed from: k */
    private final Map<Integer, b> f2963k = new HashMap();

    /* renamed from: l */
    private final Map<String, IBinder> f2964l = new HashMap();

    /* renamed from: m */
    private final Map<String, Integer> f2965m = new HashMap();

    /* renamed from: n */
    private final Set<String> f2966n = new HashSet();

    /* renamed from: F */
    private final MediaSessionManager.OnActiveSessionsChangedListener f2956F = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: dev.duo.workspaceprobe.o$$ExternalSyntheticLambda0
        @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
        public final void onActiveSessionsChanged(List list) {
            C0156o.this.m3113a(list);
        }
    };

    /* renamed from: G */
    private final AudioManager.AudioPlaybackCallback f2957G = new a();

    /* renamed from: dev.duo.workspaceprobe.o$a */
    class a extends AudioManager.AudioPlaybackCallback {
        a() {
        }

        @Override // android.media.AudioManager.AudioPlaybackCallback
        public void onPlaybackConfigChanged(List<AudioPlaybackConfiguration> list) {
            C0156o.this.m3121c();
            if (C0156o.this.f2968p && C0156o.this.f2963k.isEmpty() && C0156o.this.f2964l.isEmpty()) {
                C0156o.this.m3125e();
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.o$b */
    private static final class b {

        /* renamed from: a */
        final int f2980a;

        /* renamed from: b */
        final int f2981b;

        b(int i, int i2) {
            this.f2980a = i;
            this.f2981b = i2;
        }

        /* renamed from: a */
        boolean m3132a(int i, int i2) {
            return this.f2980a == i && this.f2981b == i2;
        }
    }

    /* renamed from: dev.duo.workspaceprobe.o$c */
    private final class c extends MediaController.Callback {

        /* renamed from: a */
        final MediaController f2982a;

        /* renamed from: b */
        final MediaSession.Token f2983b;

        /* renamed from: c */
        boolean f2984c;

        /* renamed from: d */
        boolean f2985d;

        /* renamed from: e */
        boolean f2986e;

        /* renamed from: f */
        boolean f2987f;

        /* renamed from: g */
        boolean f2988g;

        /* renamed from: h */
        long f2989h;

        /* renamed from: i */
        int f2990i = -1;

        /* renamed from: j */
        PlaybackState f2991j;

        /* renamed from: k */
        String f2992k;

        c(MediaController mediaController) {
            this.f2982a = mediaController;
            this.f2983b = mediaController.getSessionToken();
        }

        /* renamed from: a */
        boolean m3135a() {
            return !C0156o.this.f2968p && C0156o.this.f2962j.get(this.f2983b) == this;
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            if (m3135a()) {
                if (playbackInfo == null || playbackInfo.getPlaybackType() != 1) {
                    C0156o.this.m3108a(this, false);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            if (m3135a()) {
                this.f2988g = false;
                this.f2987f = false;
                this.f2986e = false;
                this.f2985d = false;
                this.f2991j = null;
                this.f2984c = false;
                try {
                    m3133a(this.f2982a.getPlaybackState(), false);
                } catch (RuntimeException e) {
                    Log.e(C0156o.f2946a, "媒体条目更新失败", e);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            if (m3135a()) {
                try {
                    m3133a(playbackState, true);
                } catch (RuntimeException e) {
                    this.f2986e = false;
                    this.f2985d = false;
                    Log.e(C0156o.f2946a, "媒体状态回调失败，放弃自动播放权", e);
                }
            }
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            if (C0156o.this.f2962j.get(this.f2983b) == this) {
                C0156o.this.m3108a(this, false);
            }
        }

        /* renamed from: a */
        void m3134a(boolean z) {
            PlaybackState playbackState;
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f2989h;
            if (this.f2987f) {
                if (elapsedRealtime > C0156o.f2948c) {
                    this.f2987f = false;
                    return;
                } else {
                    if (z) {
                        return;
                    }
                    this.f2987f = false;
                    this.f2988g = true;
                    return;
                }
            }
            if (z) {
                this.f2988g = false;
            }
            if (!z || this.f2985d || this.f2986e || this.f2988g || this.f2984c || (playbackState = this.f2982a.getPlaybackState()) == null || playbackState.getState() == 3 || (playbackState.getActions() & 2) == 0) {
                return;
            }
            this.f2987f = true;
            this.f2984c = true;
            this.f2989h = SystemClock.elapsedRealtime();
            try {
                this.f2982a.getTransportControls().pause();
            } catch (RuntimeException e) {
                this.f2987f = false;
                Log.e(C0156o.f2946a, "定向暂停失败 " + this.f2982a.getPackageName(), e);
            }
        }

        /* renamed from: a */
        void m3133a(PlaybackState playbackState, boolean z) {
            if (playbackState == null) {
                this.f2986e = false;
                this.f2985d = false;
                C0156o.this.m3112a(this.f2982a.getPackageName(), "会话没有播放状态，仅请求播放器静音");
                return;
            }
            if (this.f2985d && z && SystemClock.elapsedRealtime() - this.f2989h > C0156o.f2948c) {
                this.f2985d = false;
                C0156o.this.m3112a(this.f2982a.getPackageName(), "暂停未及时确认，之后的暂停算用户的，不自动恢复");
            }
            int i = this.f2990i;
            this.f2990i = playbackState.getState();
            if (z && ((this.f2988g || this.f2987f) && SystemClock.elapsedRealtime() - this.f2989h > C0156o.f2948c)) {
                this.f2987f = false;
                this.f2988g = false;
                C0156o.this.m3112a(this.f2982a.getPackageName(), "暂停后状态又变，算用户操作，不再自动恢复");
            }
            int i2 = this.f2990i;
            if (i2 == 3 && i != 3) {
                this.f2984c = false;
            }
            if (this.f2985d && z && i2 == 3 && playbackState.getLastPositionUpdateTime() >= this.f2989h) {
                this.f2985d = false;
                C0156o.this.m3112a(this.f2982a.getPackageName(), "暂停后仍报告播放，仅保持静音，不认领随后的用户暂停");
            }
            if (this.f2986e && z) {
                if (playbackState.getState() == 3) {
                    this.f2984c = false;
                }
                this.f2986e = false;
                this.f2991j = null;
            }
            if (this.f2985d && z && playbackState.getState() == 2 && playbackState.getLastPositionUpdateTime() >= this.f2989h) {
                this.f2985d = false;
                this.f2986e = C0156o.m3118b(playbackState, this.f2982a.getPlaybackState());
                this.f2991j = playbackState;
                this.f2992k = C0156o.m3115b(this.f2982a.getMetadata());
                return;
            }
            if (playbackState.getState() != 3) {
                if (playbackState.getState() != 2) {
                    this.f2986e = false;
                    this.f2985d = false;
                    return;
                }
                return;
            }
            if (this.f2984c) {
                return;
            }
            this.f2984c = true;
            if ((playbackState.getActions() & 2) == 0) {
                C0156o.this.m3112a(this.f2982a.getPackageName(), "媒体会话不支持暂停，仅请求播放器静音，视频可能继续");
                return;
            }
            this.f2985d = true;
            this.f2989h = SystemClock.elapsedRealtime();
            try {
                this.f2982a.getTransportControls().pause();
            } catch (RuntimeException e) {
                this.f2985d = false;
                Log.e(C0156o.f2946a, "定向暂停失败 " + this.f2982a.getPackageName(), e);
            }
        }
    }

    C0156o(Context context, Handler handler) {
        this.f2958f = context;
        this.f2959g = handler;
        this.f2960h = (AudioManager) context.getSystemService(AudioManager.class);
        this.f2961i = (MediaSessionManager) context.getSystemService(MediaSessionManager.class);
    }

    /* renamed from: g */
    private void m3129g() {
        C0156o c0156o = f2950e;
        if (c0156o == null) {
            return;
        }
        this.f2963k.putAll(c0156o.f2963k);
        c0156o.f2963k.clear();
        this.f2964l.putAll(c0156o.f2964l);
        c0156o.f2964l.clear();
        c0156o.m3125e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static String m3115b(MediaMetadata mediaMetadata) {
        if (mediaMetadata == null) {
            return null;
        }
        return mediaMetadata.getString("android.media.metadata.MEDIA_ID") + "\n" + mediaMetadata.getString("android.media.metadata.TITLE") + "\n" + mediaMetadata.getLong("android.media.metadata.DURATION");
    }

    /* renamed from: c */
    private void m3122c(List<MediaController> list) {
        HashSet hashSet = new HashSet();
        Iterator<MediaController> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getSessionToken());
        }
        ArrayList arrayList = new ArrayList(this.f2962j.values());
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            Object obj = arrayList.get(i);
            i++;
            c cVar = (c) obj;
            if (!hashSet.contains(cVar.f2983b)) {
                m3108a(cVar, false);
            } else if (!this.f2965m.containsKey(cVar.f2982a.getPackageName())) {
                m3108a(cVar, (this.f2968p || this.f2967o.length == 0 || !new StringBuilder().append(Process.myUid() / 100000).append(":").append(cVar.f2982a.getPackageName()).toString().equals(this.f2967o[0])) ? false : true);
            }
        }
        if (this.f2968p) {
            return;
        }
        for (MediaController mediaController : list) {
            if (this.f2965m.containsKey(mediaController.getPackageName()) && !this.f2962j.containsKey(mediaController.getSessionToken())) {
                MediaController.PlaybackInfo playbackInfo = mediaController.getPlaybackInfo();
                if (playbackInfo == null || playbackInfo.getPlaybackType() != 1) {
                    m3112a(mediaController.getPackageName(), "远程或未知播放路由，不控制工作台外设备");
                } else {
                    c cVar2 = new c(mediaController);
                    this.f2962j.put(cVar2.f2983b, cVar2);
                    try {
                        mediaController.registerCallback(cVar2, this.f2959g);
                        cVar2.m3133a(mediaController.getPlaybackState(), false);
                    } catch (RuntimeException e) {
                        Log.e(f2946a, "媒体会话接管失败 " + mediaController.getPackageName(), e);
                        m3108a(cVar2, false);
                    }
                }
            }
        }
    }

    /* renamed from: d */
    private void m3124d() {
        try {
            m3122c(this.f2961i.getActiveSessions(null));
        } catch (RuntimeException e) {
            Log.e(f2946a, "媒体会话列表读取失败", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m3125e() {
        if (f2950e == this) {
            f2950e = null;
        }
        if (this.f2969q) {
            this.f2969q = false;
            try {
                this.f2960h.unregisterAudioPlaybackCallback(this.f2957G);
            } catch (RuntimeException e) {
                Log.e(f2946a, "播放器监听注销失败", e);
            }
        }
    }

    /* renamed from: f */
    private void m3128f() throws ReflectiveOperationException {
        if (this.f2965m.isEmpty() && this.f2964l.isEmpty()) {
            return;
        }
        if (this.f2953C == null) {
            this.f2953C = Class.forName("android.media.IAudioService$Stub").getMethod("asInterface", IBinder.class).invoke(null, Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "audio"));
            Class<?> cls = Class.forName("android.media.IAudioService");
            Class cls2 = Integer.TYPE;
            this.f2954D = cls.getMethod("enterFocusIsolation", cls2, IBinder.class);
            this.f2955E = cls.getMethod("exitFocusIsolation", IBinder.class, cls2);
        }
        for (Map.Entry<String, Integer> entry : this.f2965m.entrySet()) {
            if (!this.f2964l.containsKey(entry.getKey())) {
                Binder binder = new Binder();
                this.f2964l.put(entry.getKey(), binder);
                if (!Boolean.TRUE.equals(this.f2954D.invoke(this.f2953C, entry.getValue(), binder))) {
                    this.f2964l.remove(entry.getKey());
                    throw new IllegalStateException("无法取得视频焦点隔离 " + entry.getKey());
                }
            }
        }
        ArrayList arrayList = new ArrayList(this.f2964l.keySet());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str = (String) obj;
            if (!this.f2965m.containsKey(str)) {
                if (!Boolean.TRUE.equals(this.f2955E.invoke(this.f2953C, this.f2964l.get(str), Integer.valueOf(!this.f2968p && this.f2967o.length != 0 && new StringBuilder().append(Process.myUid() / 100000).append(":").append(str).toString().equals(this.f2967o[0]) ? 1 : 2)))) {
                    Log.w(f2946a, "视频焦点隔离记录已不存在 " + str);
                }
                this.f2964l.remove(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m3118b(PlaybackState playbackState, PlaybackState playbackState2) {
        return playbackState != null && playbackState2 != null && playbackState2.getState() == 2 && playbackState.getLastPositionUpdateTime() == playbackState2.getLastPositionUpdateTime() && playbackState.getPosition() == playbackState2.getPosition() && playbackState.getActions() == playbackState2.getActions();
    }

    /* renamed from: a */
    static String m3106a(TaskInfo taskInfo) throws ReflectiveOperationException {
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

    /* renamed from: b */
    private void m3116b() throws ReflectiveOperationException {
        if (this.f2958f.checkSelfPermission("android.permission.MODIFY_AUDIO_ROUTING") == 0) {
            this.f2971s = AudioPlaybackConfiguration.class.getMethod("getPlayerInterfaceId", null);
            this.f2972t = AudioPlaybackConfiguration.class.getMethod("getClientUid", null);
            this.f2973u = AudioPlaybackConfiguration.class.getMethod("getClientPid", null);
            this.f2974v = AudioPlaybackConfiguration.class.getMethod("getPlayerState", null);
            this.f2975w = AudioPlaybackConfiguration.class.getMethod("getPlayerType", null);
            this.f2976x = AudioPlaybackConfiguration.class.getMethod("getPlayerProxy", null);
            this.f2977y = Class.forName("android.media.PlayerProxy").getMethod("applyVolumeShaper", VolumeShaper.Configuration.class, VolumeShaper.Operation.class);
            VolumeShaper.Configuration.Builder curve = new VolumeShaper.Configuration.Builder().setDuration(1L).setCurve(new float[]{0.0f, 1.0f}, new float[]{0.0f, 0.0f});
            Class<?> cls = curve.getClass();
            Class cls2 = Integer.TYPE;
            cls.getMethod("setId", cls2).invoke(curve, Integer.valueOf(f2947b));
            this.f2951A = (VolumeShaper.Configuration) VolumeShaper.Configuration.class.getConstructor(cls2).newInstance(Integer.valueOf(f2947b));
            Object newInstance = Class.forName("android.media.VolumeShaper$Operation$Builder").getConstructor(null).newInstance(null);
            newInstance.getClass().getMethod("terminate", null).invoke(newInstance, null);
            this.f2952B = (VolumeShaper.Operation) newInstance.getClass().getMethod("build", null).invoke(newInstance, null);
            this.f2978z = curve.build();
            return;
        }
        throw new SecurityException("SystemUI lacks MODIFY_AUDIO_ROUTING; anonymized player lists are not controllable");
    }

    /* renamed from: a */
    void m3131a(String[] strArr) {
        if (this.f2968p || Arrays.equals(this.f2967o, strArr)) {
            return;
        }
        this.f2967o = (String[]) strArr.clone();
        this.f2965m.clear();
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
                    m3112a(str2, "同一应用多任务，不能把媒体归属到具体窗口");
                } else {
                    int indexOf = str2.indexOf(58);
                    String substring = str2.substring(indexOf + 1);
                    if (f2949d.contains(substring)) {
                        if (Integer.parseInt(str2.substring(0, indexOf)) != Process.myUid() / 100000) {
                            m3112a(str2, "其他用户媒体不接管");
                        } else {
                            try {
                                int i2 = this.f2958f.getPackageManager().getApplicationInfo(substring, 0).uid;
                                String[] packagesForUid = this.f2958f.getPackageManager().getPackagesForUid(i2);
                                if (i2 % 100000 >= 10000 && packagesForUid != null && packagesForUid.length == 1 && substring.equals(packagesForUid[0])) {
                                    this.f2965m.put(substring, Integer.valueOf(i2));
                                }
                                m3112a(str2, "系统或共享 UID，无法安全定向静音");
                            } catch (PackageManager.NameNotFoundException e) {
                                Log.e(f2946a, "成员已不可用 " + substring, e);
                            }
                        }
                    }
                }
            }
        }
        if (!this.f2970r) {
            try {
                this.f2961i.addOnActiveSessionsChangedListener(this.f2956F, null, this.f2959g);
                this.f2970r = true;
            } catch (RuntimeException e2) {
                Log.e(f2946a, "无法监听媒体会话；暂停不可用", e2);
            }
        }
        if (!this.f2969q) {
            try {
                if (this.f2978z == null) {
                    m3116b();
                }
                this.f2960h.registerAudioPlaybackCallback(this.f2957G, this.f2959g);
                this.f2969q = true;
                m3129g();
            } catch (ReflectiveOperationException | RuntimeException e3) {
                Log.e(f2946a, "无法监听或定向静音播放器", e3);
            }
        }
        try {
            m3128f();
            m3121c();
            m3124d();
            m3121c();
        } catch (ReflectiveOperationException e4) {
            throw new IllegalStateException("小窗视频焦点隔离失败", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3121c() {
        if (this.f2968p && !this.f2964l.isEmpty()) {
            try {
                m3128f();
            } catch (ReflectiveOperationException | RuntimeException e) {
                Log.e(f2946a, "视频焦点隔离尚未释放", e);
            }
        }
        if (this.f2978z == null) {
            return;
        }
        try {
            m3117b(this.f2960h.getActivePlaybackConfigurations());
        } catch (RuntimeException e2) {
            Log.e(f2946a, "播放器列表读取失败", e2);
        }
    }

    /* renamed from: b */
    private void m3117b(List<AudioPlaybackConfiguration> list) {
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
                Integer num = (Integer) this.f2971s.invoke(next, null);
                num.intValue();
                Integer num2 = (Integer) this.f2972t.invoke(next, null);
                int intValue = num2.intValue();
                int intValue2 = ((Integer) this.f2973u.invoke(next, null)).intValue();
                hashSet.add(num);
                if (((Integer) this.f2974v.invoke(next, null)).intValue() == 2) {
                    hashSet2.add(num2);
                }
                b bVar = this.f2963k.get(num);
                if (bVar != null && !bVar.m3132a(intValue, intValue2)) {
                    this.f2963k.remove(num);
                    bVar = null;
                }
                if (!this.f2968p && this.f2965m.containsValue(num2)) {
                    i = 1;
                }
                if (bVar != null && i == 0) {
                    this.f2977y.invoke(this.f2976x.invoke(next, null), this.f2951A, this.f2952B);
                    this.f2963k.remove(num);
                } else if (bVar == null && i != 0 && ((Integer) this.f2974v.invoke(next, null)).intValue() == 2) {
                    int usage = next.getAudioAttributes().getUsage();
                    if (usage != 1 && usage != 14) {
                        m3112a("uid=" + intValue + "/usage=" + usage, "非媒体/游戏音频，不接管通话、提示音或用途未知的播放器");
                    } else {
                        int intValue3 = ((Integer) this.f2975w.invoke(next, null)).intValue();
                        if (intValue3 != 1 && intValue3 != 2) {
                            m3112a("uid=" + intValue + "/type=" + intValue3, "此播放器不在 AudioTrack/MediaPlayer 静音支持范围");
                        } else {
                            this.f2977y.invoke(this.f2976x.invoke(next, null), this.f2978z, VolumeShaper.Operation.PLAY);
                            this.f2963k.put(num, new b(intValue, intValue2));
                        }
                    }
                }
            } catch (ReflectiveOperationException | RuntimeException e) {
                Log.e(f2946a, "播放器静音层操作失败", e);
            }
        }
        this.f2963k.keySet().retainAll(hashSet);
        if (this.f2968p) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f2962j.values());
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            c cVar = (c) obj;
            Integer num3 = this.f2965m.get(cVar.f2982a.getPackageName());
            if (num3 != null) {
                cVar.m3134a(hashSet2.contains(num3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3113a(List list) {
        if (this.f2968p) {
            return;
        }
        m3124d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3108a(c cVar, boolean z) {
        this.f2962j.remove(cVar.f2983b);
        try {
            try {
                try {
                    PlaybackState playbackState = cVar.f2982a.getPlaybackState();
                    MediaController.PlaybackInfo playbackInfo = cVar.f2982a.getPlaybackInfo();
                    if (cVar.f2985d) {
                        m3112a(cVar.f2982a.getPackageName(), "暂停未确认，不自动播放");
                    }
                    if (z && cVar.f2986e && playbackInfo != null && playbackInfo.getPlaybackType() == 1 && Objects.equals(cVar.f2992k, m3115b(cVar.f2982a.getMetadata())) && m3118b(cVar.f2991j, playbackState) && (playbackState.getActions() & 4) != 0) {
                        cVar.f2982a.getTransportControls().play();
                    } else if (z && cVar.f2988g && playbackInfo != null && playbackInfo.getPlaybackType() == 1 && playbackState != null && (playbackState.getActions() & 4) != 0) {
                        cVar.f2982a.getTransportControls().play();
                    }
                    cVar.f2988g = false;
                    cVar.f2987f = false;
                    cVar.f2986e = false;
                    cVar.f2985d = false;
                    cVar.f2991j = null;
                    cVar.f2982a.unregisterCallback(cVar);
                } catch (RuntimeException e) {
                    Log.e(f2946a, "恢复工作台暂停的媒体失败", e);
                    cVar.f2988g = false;
                    cVar.f2987f = false;
                    cVar.f2986e = false;
                    cVar.f2985d = false;
                    cVar.f2991j = null;
                    cVar.f2982a.unregisterCallback(cVar);
                }
            } catch (RuntimeException e2) {
                Log.e(f2946a, "媒体监听注销失败", e2);
            }
        } catch (Throwable th) {
            cVar.f2988g = false;
            cVar.f2987f = false;
            cVar.f2986e = false;
            cVar.f2985d = false;
            cVar.f2991j = null;
            try {
                cVar.f2982a.unregisterCallback(cVar);
            } catch (RuntimeException e3) {
                Log.e(f2946a, "媒体监听注销失败", e3);
            }
            throw th;
        }
    }

    /* renamed from: a */
    void m3130a() {
        if (this.f2968p) {
            return;
        }
        this.f2968p = true;
        this.f2965m.clear();
        m3121c();
        try {
            m3122c(this.f2961i.getActiveSessions(null));
        } catch (RuntimeException e) {
            Log.e(f2946a, "退出时无法核对会话存活，不发送播放", e);
        }
        ArrayList arrayList = new ArrayList(this.f2962j.values());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            m3108a((c) obj, false);
        }
        if (this.f2963k.isEmpty() && this.f2964l.isEmpty()) {
            m3125e();
        } else {
            Log.w(f2946a, "音频控制未确认撤销，保留清理责任 " + this.f2963k.keySet() + "/" + this.f2964l.keySet());
            f2950e = this;
            if (!this.f2969q) {
                Log.e(f2946a, "音频清理尚未完成且没有播放器监听");
            }
        }
        if (this.f2970r) {
            try {
                this.f2961i.removeOnActiveSessionsChangedListener(this.f2956F);
            } catch (RuntimeException e2) {
                Log.e(f2946a, "会话列表监听注销失败", e2);
            }
        }
        this.f2967o = null;
        this.f2966n.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3112a(String str, String str2) {
        if (this.f2966n.add(str + str2)) {
            Log.w(f2946a, str + "：" + str2);
        }
    }
}
