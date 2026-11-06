package io.github.libxposed.service;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import io.github.libxposed.service.RemotePreferences;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class RemotePreferences implements SharedPreferences {
    private static final String TAG = "RemotePreferences";
    private final String mGroup;
    private final Map<SharedPreferences.OnSharedPreferenceChangeListener, Object> mListeners = Collections.synchronizedMap(new WeakHashMap());
    private volatile Map<String, Object> mMap;
    private final XposedService mService;
    private static final Object CONTENT = new Object();
    private static final ExecutorService EXECUTOR = Executors.newSingleThreadExecutor();
    static volatile boolean shouldNotifyCleared = false;

    private RemotePreferences(XposedService service, String group) {
        this.mService = service;
        this.mGroup = group;
    }

    static RemotePreferences newInstance(XposedService service, String group) throws RemoteException {
        Bundle output = service.asInterface().requestRemotePreferences(group);
        if (output == null) {
            throw new RemoteException("Framework returns null");
        }
        RemotePreferences prefs = new RemotePreferences(service, group);
        Map<String, Object> map = (Map) output.getSerializable("map");
        if (map != null) {
            prefs.mMap = Collections.unmodifiableMap(map);
        } else {
            prefs.mMap = Collections.emptyMap();
        }
        return prefs;
    }

    synchronized void onDelete() {
        this.mMap = Collections.emptyMap();
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return new TreeMap(this.mMap);
    }

    @Override // android.content.SharedPreferences
    public String getString(String key, String defValue) {
        return (String) this.mMap.getOrDefault(key, defValue);
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String key, Set<String> defValues) {
        return (Set) this.mMap.getOrDefault(key, defValues);
    }

    @Override // android.content.SharedPreferences
    public int getInt(String key, int defValue) {
        Object v = this.mMap.get(key);
        return v != null ? ((Integer) v).intValue() : defValue;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String key, long defValue) {
        Object v = this.mMap.get(key);
        return v != null ? ((Long) v).longValue() : defValue;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String key, float defValue) {
        Object v = this.mMap.get(key);
        return v != null ? ((Float) v).floatValue() : defValue;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String key, boolean defValue) {
        Object v = this.mMap.get(key);
        return v != null ? ((Boolean) v).booleanValue() : defValue;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String key) {
        return this.mMap.containsKey(key);
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        this.mListeners.put(listener, CONTENT);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener listener) {
        this.mListeners.remove(listener);
    }

    @Override // android.content.SharedPreferences
    public Editor edit() {
        return new Editor();
    }

    public class Editor implements SharedPreferences.Editor {
        private final HashSet<String> mDelete = new HashSet<>();
        private final HashMap<String, Object> mPut = new HashMap<>();
        private boolean mClear = false;

        public Editor() {
        }

        private void put(String key, Object value) {
            this.mDelete.remove(key);
            this.mPut.put(key, value);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String key, String value) {
            if (value == null) {
                remove(key);
            } else {
                put(key, value);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String key, Set<String> values) {
            if (values == null) {
                remove(key);
            } else {
                put(key, values);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String key, int value) {
            put(key, Integer.valueOf(value));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String key, long value) {
            put(key, Long.valueOf(value));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String key, float value) {
            put(key, Float.valueOf(value));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String key, boolean value) {
            put(key, Boolean.valueOf(value));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String key) {
            this.mDelete.add(key);
            this.mPut.remove(key);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.mClear = true;
            this.mDelete.clear();
            this.mPut.clear();
            return this;
        }

        private void doUpdate() {
            List<SharedPreferences.OnSharedPreferenceChangeListener> listeners;
            synchronized (io.github.libxposed.service.RemotePreferences.this) {
                final HashMap<String, Object> newMap = new HashMap<>((Map<? extends String, ? extends Object>) io.github.libxposed.service.RemotePreferences.this.mMap);
                if (this.mClear) {
                    newMap.clear();
                }
                HashSet<String> hashSet = this.mDelete;
                Objects.requireNonNull(newMap);
                hashSet.forEach(new Consumer() { // from class: io.github.libxposed.service.RemotePreferences$Editor$$ExternalSyntheticLambda1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        newMap.remove((String) obj);
                    }
                });
                newMap.putAll(this.mPut);
                io.github.libxposed.service.RemotePreferences.this.mMap = Collections.unmodifiableMap(newMap);
            }
            synchronized (io.github.libxposed.service.RemotePreferences.this.mListeners) {
                listeners = new ArrayList<>(io.github.libxposed.service.RemotePreferences.this.mListeners.keySet());
            }
            for (SharedPreferences.OnSharedPreferenceChangeListener listener : listeners) {
                if (this.mClear && io.github.libxposed.service.RemotePreferences.shouldNotifyCleared) {
                    listener.onSharedPreferenceChanged(io.github.libxposed.service.RemotePreferences.this, null);
                }
                Iterator<String> it = this.mDelete.iterator();
                while (it.hasNext()) {
                    String key = it.next();
                    listener.onSharedPreferenceChanged(io.github.libxposed.service.RemotePreferences.this, key);
                }
                for (String key2 : this.mPut.keySet()) {
                    listener.onSharedPreferenceChanged(io.github.libxposed.service.RemotePreferences.this, key2);
                }
            }
        }

        private Bundle buildCommitBundle() {
            if (!this.mClear && this.mDelete.isEmpty() && this.mPut.isEmpty()) {
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("clear", this.mClear);
            bundle.putSerializable("delete", new HashSet(this.mDelete));
            bundle.putSerializable("put", new HashMap(this.mPut));
            return bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: doCommit, reason: merged with bridge method [inline-methods] */
        public boolean lambda$apply$0(Bundle bundle) {
            if (bundle != null) {
                try {
                    io.github.libxposed.service.RemotePreferences.this.mService.asInterface().updateRemotePreferences(io.github.libxposed.service.RemotePreferences.this.mGroup, bundle);
                    return true;
                } catch (RemoteException e) {
                    Log.e(io.github.libxposed.service.RemotePreferences.TAG, "Failed to commit changes to framework", e);
                    return false;
                }
            }
            return true;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            Bundle bundle = buildCommitBundle();
            if (bundle == null) {
                return true;
            }
            doUpdate();
            return lambda$apply$0(bundle);
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            final Bundle bundle = buildCommitBundle();
            if (bundle == null) {
                return;
            }
            doUpdate();
            io.github.libxposed.service.RemotePreferences.EXECUTOR.execute(new Runnable() { // from class: io.github.libxposed.service.RemotePreferences$Editor$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    io.github.libxposed.service.RemotePreferences.Editor.this.lambda$apply$0(bundle);
                }
            });
        }
    }
}
