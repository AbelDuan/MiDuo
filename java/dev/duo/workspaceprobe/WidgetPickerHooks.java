package dev.duo.workspaceprobe;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.util.Log;
import android.widget.ImageView;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: dev.duo.workspaceprobe.e */
/* loaded from: classes.dex */
final class WidgetPickerHooks {

    /* renamed from: a */
    private static final String f2804a = "dev.duo.hookprobe";

    /* renamed from: b */
    private static final String f2805b = "com.miui.personalassistant.picker.";

    /* renamed from: c */
    private static final String f2806c = "MiDuoPicker";

    WidgetPickerHooks() {
    }

    /* renamed from: a */
    static void m2927a(XposedModule xposedModule, final ClassLoader classLoader) {
        try {
            Class<?> cls = Class.forName("com.google.gson.Gson", false, classLoader);
            final Object newInstance = cls.getConstructor(null).newInstance(null);
            final Method method = cls.getMethod("toJson", Object.class);
            final Method method2 = cls.getMethod("fromJson", String.class, Type.class);
            Class<?> cls2 = Class.forName("com.miui.personalassistant.picker.business.list.viewmodel.PickerNavRepository", false, classLoader);
            Method method3 = null;
            for (Method method4 : cls2.getDeclaredMethods()) {
                if (method4.getName().equals("processData") && method4.getParameterCount() == 3) {
                    if (method3 != null) {
                        throw new NoSuchMethodException("ambiguous navigation input");
                    }
                    method3 = method4;
                }
            }
            if (method3 == null) {
                throw new NoSuchMethodException("navigation input");
            }
            final Class<?> cls3 = method3.getParameterTypes()[0];
            final Method method5 = cls2.getMethod("getApplicationContext", null);
            Class<?> cls4 = Class.forName("com.miui.personalassistant.picker.business.detail.PickerDetailRepository", false, classLoader);
            Method method6 = null;
            final Method method7 = null;
            for (Method method8 : cls4.getDeclaredMethods()) {
                if (method8.getParameterCount() == 0 && method8.getReturnType().isInterface()) {
                    Method[] methods = method8.getReturnType().getMethods();
                    int length = methods.length;
                    int i = 0;
                    while (i < length) {
                        Method method9 = methods[i];
                        int i2 = length;
                        int i3 = i;
                        if ("component/store/impl/tail".equals(m2924a(method9))) {
                            if (method6 != null) {
                                throw new NoSuchMethodException("ambiguous detail service");
                            }
                            method6 = method8;
                            method7 = method9;
                        }
                        i = i3 + 1;
                        length = i2;
                    }
                }
            }
            if (method7 == null) {
                throw new NoSuchMethodException("local detail service");
            }
            final Class<?> returnType = method6.getReturnType();
            final Type m2928b = m2928b(method7);
            final Field m2925a = m2925a(cls4, "applicationContext");
            Class<?> cls5 = Class.forName("com.miui.personalassistant.picker.business.detail.bean.PickerDetailResponse", false, classLoader);
            final Method method10 = cls5.getMethod("getAppPackage", null);
            final Method method11 = cls5.getMethod("getWidgetImplInfo", null);
            Class<?> returnType2 = method11.getReturnType();
            final Method method12 = returnType2.getMethod("getAppWidgetWidth", null);
            final Method method13 = returnType2.getMethod("getAppWidgetHeight", null);
            Method declaredMethod = Class.forName("com.miui.personalassistant.picker.business.detail.utils.PickerDetailUtil", false, classLoader).getDeclaredMethod("getAddTargetItemInfo", cls5);
            final Field m2925a2 = m2925a(declaredMethod.getReturnType(), "spanX");
            final Field m2925a3 = m2925a(declaredMethod.getReturnType(), "spanY");
            final Field m2925a4 = m2925a(declaredMethod.getReturnType(), "configSpanX");
            final Field m2925a5 = m2925a(declaredMethod.getReturnType(), "configSpanY");
            Class<?> cls6 = Class.forName("com.miui.personalassistant.picker.business.detail.adapter.PickerDetailAdapter", false, classLoader);
            Class cls7 = Integer.TYPE;
            Method declaredMethod2 = cls6.getDeclaredMethod("getItemViewType", cls7);
            final Method method14 = cls6.getMethod("getItem", cls7);
            Class<?> cls8 = Class.forName("com.miui.personalassistant.picker.business.detail.widget.PickerItemContainer", false, classLoader);
            Method declaredMethod3 = cls8.getDeclaredMethod("showPreviewImage", String.class, Boolean.TYPE, cls7, cls7, cls5, Class.forName("com.miui.personalassistant.picker.business.detail.utils.PickerDetailResources", false, classLoader));
            final Field m2925a6 = m2925a(cls8, "mImageView");
            xposedModule.hook(method3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2920a;
                    m2920a = WidgetPickerHooks.m2920a(method, newInstance, method5, method2, cls3, chain);
                    return m2920a;
                }
            });
            xposedModule.hook(method6).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda1
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2919a;
                    m2919a = WidgetPickerHooks.m2919a(m2925a, classLoader, returnType, method7, method, newInstance, method2, m2928b, chain);
                    return m2919a;
                }
            });
            xposedModule.hook(declaredMethod).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda2
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2922a;
                    m2922a = WidgetPickerHooks.m2922a(method10, method11, method12, method13, m2925a2, m2925a3, m2925a4, m2925a5, chain);
                    return m2922a;
                }
            });
            xposedModule.hook(declaredMethod2).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2923a;
                    m2923a = WidgetPickerHooks.m2923a(method14, method10, method11, method12, method13, chain);
                    return m2923a;
                }
            });
            xposedModule.hook(declaredMethod3).intercept(new XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda4
                public final Object intercept(XposedInterface.Chain chain) {
                    Object m2918a;
                    m2918a = WidgetPickerHooks.m2918a(m2925a6, chain);
                    return m2918a;
                }
            });
            Log.i(f2806c, "native picker data contracts ready");
        } catch (ReflectiveOperationException e) {
            Log.e(f2806c, "native picker contract unavailable", e);
        }
    }

    /* renamed from: b */
    private static Type m2928b(Method method) throws NoSuchMethodException {
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        if (genericParameterTypes.length == 2) {
            Type type = genericParameterTypes[1];
            if (type instanceof ParameterizedType) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) type2;
                    if (wildcardType.getLowerBounds().length == 1) {
                        Type type3 = wildcardType.getLowerBounds()[0];
                        if ((type3 instanceof ParameterizedType) && ((ParameterizedType) type3).getRawType() == List.class) {
                            return type3;
                        }
                        throw new NoSuchMethodException("detail response list");
                    }
                }
                throw new NoSuchMethodException("detail response type");
            }
        }
        throw new NoSuchMethodException("detail continuation type");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m2920a(Method method, Object obj, Method method2, Method method3, Class cls, XposedInterface.Chain chain) throws Throwable {
        JSONObject jSONObject = new JSONObject((String) method.invoke(obj, chain.getArg(0)));
        JSONArray jSONArray = jSONObject.getJSONArray("cardList");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONArray jSONArray2 = jSONArray.getJSONObject(i).getJSONObject("property").getJSONArray("cardContentList");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                JSONObject optJSONObject = jSONArray2.getJSONObject(i2).optJSONObject("expandContent");
                if (optJSONObject != null && "dev.duo.hookprobe".equals(optJSONObject.optString("appPackage"))) {
                    return chain.proceed();
                }
            }
        }
        PackageInfo packageInfo = ((Context) method2.invoke(chain.getThisObject(), null)).getPackageManager().getPackageInfo("dev.duo.hookprobe", 0);
        JSONObject put = new JSONObject().put("contentUuid", "dev.duo.hookprobe").put("contentType", 4).put("baseContent", "").put("expandContent", new JSONObject().put("title", "MiDuo").put("icon", "").put("deeplink", "").put("appPackage", "dev.duo.hookprobe").put("appVersionName", packageInfo.versionName).put("appVersionCode", packageInfo.getLongVersionCode())).put("locationInModule", 0);
        if (jSONArray.length() == 0) {
            jSONArray.put(new JSONObject().put("cardUuid", "dev.duo.hookprobe").put("cardType", 0).put("property", new JSONObject().put("style", 0).put("cardContentList", new JSONArray())));
        }
        jSONArray.getJSONObject(jSONArray.length() - 1).getJSONObject("property").getJSONArray("cardContentList").put(put);
        Object[] array = chain.getArgs().toArray();
        array[0] = method3.invoke(obj, jSONObject.toString(), cls);
        Log.i(f2806c, "native navigation input appended MiDuo");
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m2919a(Field field, ClassLoader classLoader, Class cls, final Method method, final Method method2, final Object obj, final Method method3, final Type type, XposedInterface.Chain chain) throws Throwable {
        final Object proceed = chain.proceed();
        final Context context = (Context) field.get(chain.getThisObject());
        return Proxy.newProxyInstance(classLoader, new Class[]{cls}, new InvocationHandler() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda5
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj2, Method method4, Object[] objArr) {
                Object m2921a;
                m2921a = WidgetPickerHooks.m2921a(method, method2, obj, method3, context, type, proceed, obj2, method4, objArr);
                return m2921a;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m2921a(Method method, Method method2, Object obj, Method method3, Context context, Type type, Object obj2, Object obj3, Method method4, Object[] objArr) throws Throwable {
        if (method4.equals(method) && "dev.duo.hookprobe".equals(new JSONObject((String) method2.invoke(obj, objArr[0])).getJSONObject("info").getString("appPackage"))) {
            return method3.invoke(obj, m2926a(context).toString(), type);
        }
        try {
            return method4.invoke(obj2, objArr);
        } catch (InvocationTargetException e) {
            throw e.getCause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m2922a(Method method, Method method2, Method method3, Method method4, Field field, Field field2, Field field3, Field field4, XposedInterface.Chain chain) throws Throwable {
        Object arg = chain.getArg(0);
        Object proceed = chain.proceed();
        if (!"dev.duo.hookprobe".equals(method.invoke(arg, null))) {
            return proceed;
        }
        Object invoke = method2.invoke(arg, null);
        int intValue = ((Integer) method3.invoke(invoke, null)).intValue();
        int intValue2 = ((Integer) method4.invoke(invoke, null)).intValue();
        field.setInt(proceed, intValue);
        field2.setInt(proceed, intValue2);
        field3.setInt(proceed, intValue);
        field4.setInt(proceed, intValue2);
        Log.i(f2806c, "native target " + intValue + "x" + intValue2);
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m2923a(Method method, Method method2, Method method3, Method method4, Method method5, XposedInterface.Chain chain) throws Throwable {
        Object invoke = method.invoke(chain.getThisObject(), chain.getArg(0));
        if (invoke != null && "dev.duo.hookprobe".equals(method2.invoke(invoke, null))) {
            Object invoke2 = method3.invoke(invoke, null);
            if (((Integer) method4.invoke(invoke2, null)).intValue() == 4 && ((Integer) method5.invoke(invoke2, null)).intValue() == 6) {
                return 7;
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ Object m2918a(Field field, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        String str = (String) chain.getArg(0);
        if (str != null && str.startsWith("android.resource://dev.duo.hookprobe/")) {
            ((ImageView) field.get(chain.getThisObject())).setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        return proceed;
    }

    /* renamed from: a */
    private static String m2924a(Method method) throws ReflectiveOperationException {
        for (Annotation annotation : method.getAnnotations()) {
            if (annotation.annotationType().getName().equals("retrofit2.http.POST")) {
                return (String) annotation.annotationType().getMethod("value", null).invoke(annotation, null);
            }
        }
        return null;
    }

    /* renamed from: a */
    private static JSONArray m2926a(Context context) throws Exception {
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo("dev.duo.hookprobe", 0);
        JSONArray jSONArray = new JSONArray();
        for (AppWidgetProviderInfo appWidgetProviderInfo : AppWidgetManager.getInstance(context).getInstalledProvidersForPackage("dev.duo.hookprobe", Process.myUserHandle())) {
            int i = appWidgetProviderInfo.targetCellWidth;
            int i2 = appWidgetProviderInfo.targetCellHeight;
            int m2917a = m2917a(i, i2);
            String str = "android.resource://dev.duo.hookprobe/" + appWidgetProviderInfo.previewImage;
            jSONArray.put(new JSONObject().put("implUniqueCode", appWidgetProviderInfo.provider.flattenToString()).put("abilityCode", appWidgetProviderInfo.provider.getClassName()).put("abilityVersion", 0).put("implType", 1).put("style", m2917a).put("originStyle", m2917a).put("appPackage", "dev.duo.hookprobe").put("appIcon", "").put("appName", "MiDuo").put("appInstalledVersionName", packageInfo.versionName).put("appVersionCode", (int) packageInfo.getLongVersionCode()).put("appDownloadUrl", "").put("appVersionName", packageInfo.versionName).put("appPublisherName", "").put("appPermissionUrl", "").put("appPrivacyUrl", "").put("groupId", "").put("groupName", "").put("useAppIcon", true).put("widgetImplInfo", new JSONObject().put("widgetProviderName", appWidgetProviderInfo.provider.getClassName()).put("widgetTitle", appWidgetProviderInfo.loadLabel(context.getPackageManager())).put("desc", "").put("lightPreviewUrl", str).put("darkPreviewUrl", str).put("sort", jSONArray.length()).put("appWidgetWidth", i).put("appWidgetHeight", i2).put("editConfig", new JSONArray()).put("installStatus", 1).put("isIndependentProcessWidget", true).put("isRealEditable", false)).put("isPay", false).put("isBought", false).put("isAuthorityPass", false));
        }
        Log.i(f2806c, "local providers=" + jSONArray.length());
        return jSONArray;
    }

    /* renamed from: a */
    private static int m2917a(int i, int i2) {
        if (i == 4 && (i2 == 6 || i2 == 4)) {
            return 4;
        }
        if (i == 2 && i2 == 2) {
            return 1;
        }
        if (i == 4 && i2 == 2) {
            return 2;
        }
        throw new IllegalArgumentException("Unsupported MiDuo provider span " + i + "x" + i2);
    }

    /* renamed from: a */
    private static Field m2925a(Class<?> cls, String str) throws NoSuchFieldException {
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException e) {
                if (cls.getSuperclass() != null) {
                    cls = cls.getSuperclass();
                } else {
                    throw e;
                }
            }
        }
        throw new NoSuchFieldException(str);
    }
}
