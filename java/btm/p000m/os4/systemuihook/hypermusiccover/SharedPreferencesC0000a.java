package btm.p000m.os4.systemuihook.hypermusiccover;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import btm.p000m.os4.systemuihook.hypermusiccover.SharedPreferencesC0000a;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.a */
/* loaded from: classes.dex */
final class SharedPreferencesC0000a implements SharedPreferences {

    /* renamed from: f */
    static final String f0f = "ios_notification_";

    /* renamed from: g */
    private static final String f1g = "content://dev.duo.hookprobe.config";

    /* renamed from: h */
    private static final Uri f2h = Uri.parse("content://dev.duo.hookprobe.config/iosNc");

    /* renamed from: i */
    private static final Handler f3i = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    private volatile Map<String, Object> f4a;

    /* renamed from: b */
    private final CopyOnWriteArrayList<SharedPreferences.OnSharedPreferenceChangeListener> f5b = new CopyOnWriteArrayList<>();

    /* renamed from: c */
    private final SharedPreferences.OnSharedPreferenceChangeListener f6c;

    /* renamed from: d */
    private boolean f7d;

    /* renamed from: e */
    private boolean f8e;

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.a$a */
    class a extends ContentObserver {

        /* renamed from: a */
        final /* synthetic */ Handler f9a;

        /* renamed from: b */
        final /* synthetic */ Context f10b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Handler handler, Handler handler2, Context context) {
            super(handler);
            this.f9a = handler2;
            this.f10b = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m9a(Context context) {
            SharedPreferencesC0000a.this.m1a(context);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Handler handler = this.f9a;
            final Context context = this.f10b;
            handler.post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.a$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SharedPreferencesC0000a.a.this.m9a(context);
                }
            });
        }
    }

    SharedPreferencesC0000a(SharedPreferences sharedPreferences) {
        this.f4a = m6b(sharedPreferences.getAll());
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: btm.m.os4.systemuihook.hypermusiccover.a$$ExternalSyntheticLambda1
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                SharedPreferencesC0000a.this.m3a(sharedPreferences2, str);
            }
        };
        this.f6c = onSharedPreferenceChangeListener;
        sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    /* renamed from: b */
    private static Map<String, Object> m6b(Map<String, ?> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            if (entry.getKey() != null && entry.getKey().startsWith(f0f)) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    private void m7c(Map<String, Object> map) {
        Map<String, Object> map2 = this.f4a;
        this.f4a = map;
        HashSet<String> hashSet = new HashSet(map2.keySet());
        hashSet.addAll(map.keySet());
        for (String str : hashSet) {
            if (!Objects.equals(map2.get(str), map.get(str))) {
                Iterator<SharedPreferences.OnSharedPreferenceChangeListener> it = this.f5b.iterator();
                while (it.hasNext()) {
                    it.next().onSharedPreferenceChanged(this, str);
                }
            }
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return this.f4a.containsKey(str);
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        throw new UnsupportedOperationException("read-only in SystemUI");
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return Collections.unmodifiableMap(this.f4a);
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        return ((Boolean) m0a(str, Boolean.class, Boolean.valueOf(z))).booleanValue();
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        return ((Float) m0a(str, Float.class, Float.valueOf(f))).floatValue();
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        return ((Integer) m0a(str, Integer.class, Integer.valueOf(i))).intValue();
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        return ((Long) m0a(str, Long.class, Long.valueOf(j))).longValue();
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        return (String) m0a(str, String.class, str2);
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return set;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f5b.addIfAbsent(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f5b.remove(onSharedPreferenceChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m2a(SharedPreferences sharedPreferences) {
        if (this.f7d) {
            return;
        }
        m7c(m6b(sharedPreferences.getAll()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m3a(final SharedPreferences sharedPreferences, String str) {
        if (str == null || str.startsWith(f0f)) {
            f3i.post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SharedPreferencesC0000a.this.m2a(sharedPreferences);
                }
            });
        }
    }

    /* renamed from: a */
    void m8a(Context context, Handler handler) {
        if (this.f8e) {
            return;
        }
        this.f8e = true;
        try {
            context.getContentResolver().registerContentObserver(f2h, false, new a(f3i, handler, context));
        } catch (RuntimeException e) {
            C0009j.m209a("IosNc settings observer unavailable: " + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1a(Context context) {
        try {
            Bundle call = context.getContentResolver().call(Uri.parse(f1g), "iosNc", (String) null, (Bundle) null);
            if (call == null || call.containsKey("error")) {
                C0009j.m209a("IosNc settings read failed: " + (call == null ? "no response" : call.getString("error")));
                return;
            }
            final HashMap hashMap = new HashMap();
            for (String str : call.keySet()) {
                if (str.startsWith(f0f)) {
                    hashMap.put(str, call.get(str));
                }
            }
            f3i.post(new Runnable() { // from class: btm.m.os4.systemuihook.hypermusiccover.a$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    SharedPreferencesC0000a.this.m5a(hashMap);
                }
            });
        } catch (RuntimeException e) {
            C0009j.m209a("IosNc settings read failed: " + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public /* synthetic */ void m5a(Map map) {
        if (!this.f7d) {
            C0009j.m209a("IosNc settings: provider from now on");
        }
        this.f7d = true;
        m7c(map);
    }

    /* renamed from: a */
    private <T> T m0a(String str, Class<T> cls, T t) {
        Object obj = this.f4a.get(str);
        return cls.isInstance(obj) ? cls.cast(obj) : t;
    }
}
