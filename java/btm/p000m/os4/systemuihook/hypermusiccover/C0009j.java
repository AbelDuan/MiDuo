package btm.p000m.os4.systemuihook.hypermusiccover;

import android.util.Log;
import io.github.libxposed.api.XposedInterface;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: btm.m.os4.systemuihook.hypermusiccover.j */
/* loaded from: classes.dex */
public final class C0009j {

    /* renamed from: a */
    private static volatile XposedInterface f185a;

    /* renamed from: b */
    private static final ClassValue<ConcurrentHashMap<String, Field>> f186b = new a();

    /* renamed from: c */
    private static final ClassValue<ConcurrentHashMap<String, c[]>> f187c = new b();

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.j$a */
    class a extends ClassValue<ConcurrentHashMap<String, Field>> {
        a() {
        }

        @Override // java.lang.ClassValue
        protected /* bridge */ /* synthetic */ ConcurrentHashMap<String, Field> computeValue(Class cls) {
            return computeValue2((Class<?>) cls);
        }

        @Override // java.lang.ClassValue
        /* renamed from: computeValue, reason: avoid collision after fix types in other method */
        protected ConcurrentHashMap<String, Field> computeValue2(Class<?> cls) {
            ConcurrentHashMap<String, Field> concurrentHashMap = new ConcurrentHashMap<>();
            for (Field field : cls.getDeclaredFields()) {
                try {
                    field.setAccessible(true);
                } catch (Throwable th) {
                }
                concurrentHashMap.put(field.getName(), field);
            }
            return concurrentHashMap;
        }
    }

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.j$b */
    class b extends ClassValue<ConcurrentHashMap<String, c[]>> {
        b() {
        }

        @Override // java.lang.ClassValue
        protected /* bridge */ /* synthetic */ ConcurrentHashMap<String, c[]> computeValue(Class cls) {
            return computeValue2((Class<?>) cls);
        }

        @Override // java.lang.ClassValue
        /* renamed from: computeValue, reason: avoid collision after fix types in other method */
        protected ConcurrentHashMap<String, c[]> computeValue2(Class<?> cls) {
            ConcurrentHashMap<String, c[]> concurrentHashMap = new ConcurrentHashMap<>();
            for (Method method : cls.getDeclaredMethods()) {
                String name = method.getName();
                c cVar = new c(method);
                c[] cVarArr = concurrentHashMap.get(name);
                if (cVarArr == null) {
                    concurrentHashMap.put(name, new c[]{cVar});
                } else {
                    c[] cVarArr2 = new c[cVarArr.length + 1];
                    System.arraycopy(cVarArr, 0, cVarArr2, 0, cVarArr.length);
                    cVarArr2[cVarArr.length] = cVar;
                    concurrentHashMap.put(name, cVarArr2);
                }
            }
            return concurrentHashMap;
        }
    }

    /* renamed from: btm.m.os4.systemuihook.hypermusiccover.j$c */
    private static final class c {

        /* renamed from: a */
        final Method f188a;

        /* renamed from: b */
        final Class<?>[] f189b;

        c(Method method) {
            this.f188a = method;
            try {
                method.setAccessible(true);
            } catch (Throwable th) {
            }
            this.f189b = method.getParameterTypes();
        }
    }

    private C0009j() {
    }

    /* renamed from: a */
    static void m206a(XposedInterface xposedInterface) {
        f185a = xposedInterface;
    }

    /* renamed from: b */
    static List<XposedInterface.HookHandle> m212b(Class<?> cls, String str, XposedInterface.Hooker hooker) {
        ArrayList arrayList = new ArrayList();
        String str2 = str + "$";
        for (Method method : cls.getDeclaredMethods()) {
            String name = method.getName();
            if (name.equals(str) || name.startsWith(str2)) {
                arrayList.add(m197a().hook(method).intercept(hooker));
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("no method " + cls.getName() + "." + str + " (nor " + str2 + "<class>)");
        }
        return arrayList;
    }

    /* renamed from: a */
    public static XposedInterface m197a() {
        XposedInterface xposedInterface = f185a;
        if (xposedInterface != null) {
            return xposedInterface;
        }
        throw new IllegalStateException("Xposed framework not attached yet");
    }

    /* renamed from: a */
    public static void m209a(String str) {
        Log.i("LSPosed-Bridge", str);
    }

    /* renamed from: a */
    public static Class<?> m199a(String str, ClassLoader classLoader) {
        try {
            return Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException e) {
            throw new IllegalArgumentException("no class " + str, e);
        }
    }

    /* renamed from: a */
    static Method m202a(Class<?> cls, String str, Class<?>... clsArr) {
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                Method declaredMethod = cls2.getDeclaredMethod(str, clsArr);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException e) {
            }
        }
        throw new IllegalArgumentException("no method " + cls.getName() + "." + str);
    }

    /* renamed from: b */
    public static Object m211b(Object obj, String str) {
        try {
            return m201a(obj, str).get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public static List<XposedInterface.HookHandle> m205a(Class<?> cls, String str, XposedInterface.Hooker hooker) {
        ArrayList arrayList = new ArrayList();
        for (Method method : cls.getDeclaredMethods()) {
            if (method.getName().equals(str)) {
                arrayList.add(m197a().hook(method).intercept(hooker));
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("no method " + cls.getName() + "." + str);
        }
        return arrayList;
    }

    /* renamed from: a */
    static XposedInterface.HookHandle m196a(Executable executable, XposedInterface.Hooker hooker) {
        return m197a().hook(executable).intercept(hooker);
    }

    /* renamed from: a */
    static List<XposedInterface.HookHandle> m204a(Class<?> cls, XposedInterface.Hooker hooker) {
        ArrayList arrayList = new ArrayList();
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            arrayList.add(m197a().hook(constructor).intercept(hooker));
        }
        return arrayList;
    }

    /* renamed from: a */
    private static Field m201a(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            Field field = f186b.get(cls).get(str);
            if (field != null) {
                return field;
            }
        }
        throw new IllegalArgumentException("no field " + obj.getClass().getName() + "." + str);
    }

    /* renamed from: a */
    public static void m207a(Object obj, String str, Object obj2) {
        try {
            m201a(obj, str).set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    static void m208a(Object obj, String str, boolean z) {
        try {
            m201a(obj, str).setBoolean(obj, z);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public static Object m200a(Object obj, String str, Object... objArr) {
        try {
            return m203a(obj.getClass(), str, objArr).invoke(obj, objArr);
        } catch (ReflectiveOperationException e) {
            Throwable cause = e.getCause();
            Throwable th = e;
            if (cause != null) {
                th = e.getCause();
            }
            throw new IllegalStateException(obj.getClass().getName() + "." + str + " threw", th);
        }
    }

    /* renamed from: a */
    private static Method m203a(Class<?> cls, String str, Object[] objArr) {
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            c[] cVarArr = f187c.get(cls2).get(str);
            if (cVarArr != null) {
                for (c cVar : cVarArr) {
                    Class<?>[] clsArr = cVar.f189b;
                    if (clsArr.length == objArr.length) {
                        boolean z = true;
                        for (int i = 0; i < clsArr.length && z; i++) {
                            z = m210a(clsArr[i], objArr[i]);
                        }
                        if (z) {
                            return cVar.f188a;
                        }
                    }
                }
            }
        }
        throw new IllegalArgumentException("no method " + cls.getName() + "." + str + "/" + objArr.length);
    }

    /* renamed from: a */
    private static boolean m210a(Class<?> cls, Object obj) {
        if (obj == null) {
            return !cls.isPrimitive();
        }
        if (cls.isPrimitive()) {
            return m198a(cls) == obj.getClass();
        }
        return cls.isAssignableFrom(obj.getClass());
    }

    /* renamed from: a */
    private static Class<?> m198a(Class<?> cls) {
        return cls == Boolean.TYPE ? Boolean.class : cls == Byte.TYPE ? Byte.class : cls == Character.TYPE ? Character.class : cls == Short.TYPE ? Short.class : cls == Integer.TYPE ? Integer.class : cls == Long.TYPE ? Long.class : cls == Float.TYPE ? Float.class : cls == Double.TYPE ? Double.class : cls;
    }
}
