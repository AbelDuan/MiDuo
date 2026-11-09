package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class e {
    private static final java.lang.String a = "dev.duo.hookprobe";
    private static final java.lang.String b = "com.miui.personalassistant.picker.";
    private static final java.lang.String c = "MiDuoPicker";

    e() {
    }

    static void a(io.github.libxposed.api.XposedModule xposedModule, final java.lang.ClassLoader classLoader) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.google.gson.Gson", false, classLoader);
            final java.lang.Object newInstance = cls.getConstructor(null).newInstance(null);
            final java.lang.reflect.Method method = cls.getMethod("toJson", java.lang.Object.class);
            final java.lang.reflect.Method method2 = cls.getMethod("fromJson", java.lang.String.class, java.lang.reflect.Type.class);
            java.lang.Class<?> cls2 = java.lang.Class.forName("com.miui.personalassistant.picker.business.list.viewmodel.PickerNavRepository", false, classLoader);
            java.lang.reflect.Method method3 = null;
            for (java.lang.reflect.Method method4 : cls2.getDeclaredMethods()) {
                if (method4.getName().equals("processData") && method4.getParameterCount() == 3) {
                    if (method3 != null) {
                        throw new java.lang.NoSuchMethodException("ambiguous navigation input");
                    }
                    method3 = method4;
                }
            }
            if (method3 == null) {
                throw new java.lang.NoSuchMethodException("navigation input");
            }
            final java.lang.Class<?> cls3 = method3.getParameterTypes()[0];
            final java.lang.reflect.Method method5 = cls2.getMethod("getApplicationContext", null);
            java.lang.Class<?> cls4 = java.lang.Class.forName("com.miui.personalassistant.picker.business.detail.PickerDetailRepository", false, classLoader);
            java.lang.reflect.Method method6 = null;
            final java.lang.reflect.Method method7 = null;
            for (java.lang.reflect.Method method8 : cls4.getDeclaredMethods()) {
                if (method8.getParameterCount() == 0 && method8.getReturnType().isInterface()) {
                    java.lang.reflect.Method[] methods = method8.getReturnType().getMethods();
                    int length = methods.length;
                    int i = 0;
                    while (i < length) {
                        java.lang.reflect.Method method9 = methods[i];
                        int i2 = length;
                        int i3 = i;
                        if ("component/store/impl/tail".equals(a(method9))) {
                            if (method6 != null) {
                                throw new java.lang.NoSuchMethodException("ambiguous detail service");
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
                throw new java.lang.NoSuchMethodException("local detail service");
            }
            final java.lang.Class<?> returnType = method6.getReturnType();
            final java.lang.reflect.Type b2 = b(method7);
            final java.lang.reflect.Field a2 = a(cls4, "applicationContext");
            java.lang.Class<?> cls5 = java.lang.Class.forName("com.miui.personalassistant.picker.business.detail.bean.PickerDetailResponse", false, classLoader);
            final java.lang.reflect.Method method10 = cls5.getMethod("getAppPackage", null);
            final java.lang.reflect.Method method11 = cls5.getMethod("getWidgetImplInfo", null);
            java.lang.Class<?> returnType2 = method11.getReturnType();
            final java.lang.reflect.Method method12 = returnType2.getMethod("getAppWidgetWidth", null);
            final java.lang.reflect.Method method13 = returnType2.getMethod("getAppWidgetHeight", null);
            java.lang.reflect.Method declaredMethod = java.lang.Class.forName("com.miui.personalassistant.picker.business.detail.utils.PickerDetailUtil", false, classLoader).getDeclaredMethod("getAddTargetItemInfo", cls5);
            final java.lang.reflect.Field a3 = a(declaredMethod.getReturnType(), "spanX");
            final java.lang.reflect.Field a4 = a(declaredMethod.getReturnType(), "spanY");
            final java.lang.reflect.Field a5 = a(declaredMethod.getReturnType(), "configSpanX");
            final java.lang.reflect.Field a6 = a(declaredMethod.getReturnType(), "configSpanY");
            java.lang.Class<?> cls6 = java.lang.Class.forName("com.miui.personalassistant.picker.business.detail.adapter.PickerDetailAdapter", false, classLoader);
            java.lang.Class cls7 = java.lang.Integer.TYPE;
            java.lang.reflect.Method declaredMethod2 = cls6.getDeclaredMethod("getItemViewType", cls7);
            final java.lang.reflect.Method method14 = cls6.getMethod("getItem", cls7);
            java.lang.Class<?> cls8 = java.lang.Class.forName("com.miui.personalassistant.picker.business.detail.widget.PickerItemContainer", false, classLoader);
            java.lang.reflect.Method declaredMethod3 = cls8.getDeclaredMethod("showPreviewImage", java.lang.String.class, java.lang.Boolean.TYPE, cls7, cls7, cls5, java.lang.Class.forName("com.miui.personalassistant.picker.business.detail.utils.PickerDetailResources", false, classLoader));
            final java.lang.reflect.Field a7 = a(cls8, "mImageView");
            xposedModule.hook(method3).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda0
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a8;
                    a8 = dev.duo.workspaceprobe.e.a(method, newInstance, method5, method2, cls3, chain);
                    return a8;
                }
            });
            xposedModule.hook(method6).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda1
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a8;
                    a8 = dev.duo.workspaceprobe.e.a(a2, classLoader, returnType, method7, method, newInstance, method2, b2, chain);
                    return a8;
                }
            });
            xposedModule.hook(declaredMethod).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda2
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a8;
                    a8 = dev.duo.workspaceprobe.e.a(method10, method11, method12, method13, a3, a4, a5, a6, chain);
                    return a8;
                }
            });
            xposedModule.hook(declaredMethod2).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda3
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a8;
                    a8 = dev.duo.workspaceprobe.e.a(method14, method10, method11, method12, method13, chain);
                    return a8;
                }
            });
            xposedModule.hook(declaredMethod3).intercept(new io.github.libxposed.api.XposedInterface.Hooker() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda4
                public final java.lang.Object intercept(io.github.libxposed.api.XposedInterface.Chain chain) {
                    java.lang.Object a8;
                    a8 = dev.duo.workspaceprobe.e.a(a7, chain);
                    return a8;
                }
            });
            android.util.Log.i(c, "native picker data contracts ready");
        } catch (java.lang.ReflectiveOperationException e) {
            android.util.Log.e(c, "native picker contract unavailable", e);
        }
    }

    private static java.lang.reflect.Type b(java.lang.reflect.Method method) throws java.lang.NoSuchMethodException {
        java.lang.reflect.Type[] genericParameterTypes = method.getGenericParameterTypes();
        if (genericParameterTypes.length == 2) {
            java.lang.reflect.Type type = genericParameterTypes[1];
            if (type instanceof java.lang.reflect.ParameterizedType) {
                java.lang.reflect.Type type2 = ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof java.lang.reflect.WildcardType) {
                    java.lang.reflect.WildcardType wildcardType = (java.lang.reflect.WildcardType) type2;
                    if (wildcardType.getLowerBounds().length == 1) {
                        java.lang.reflect.Type type3 = wildcardType.getLowerBounds()[0];
                        if ((type3 instanceof java.lang.reflect.ParameterizedType) && ((java.lang.reflect.ParameterizedType) type3).getRawType() == java.util.List.class) {
                            return type3;
                        }
                        throw new java.lang.NoSuchMethodException("detail response list");
                    }
                }
                throw new java.lang.NoSuchMethodException("detail response type");
            }
        }
        throw new java.lang.NoSuchMethodException("detail continuation type");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.Object obj, java.lang.reflect.Method method2, java.lang.reflect.Method method3, java.lang.Class cls, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        org.json.JSONObject jSONObject = new org.json.JSONObject((java.lang.String) method.invoke(obj, chain.getArg(0)));
        org.json.JSONArray jSONArray = jSONObject.getJSONArray("cardList");
        for (int i = 0; i < jSONArray.length(); i++) {
            org.json.JSONArray jSONArray2 = jSONArray.getJSONObject(i).getJSONObject("property").getJSONArray("cardContentList");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                org.json.JSONObject optJSONObject = jSONArray2.getJSONObject(i2).optJSONObject("expandContent");
                if (optJSONObject != null && "dev.duo.hookprobe".equals(optJSONObject.optString("appPackage"))) {
                    return chain.proceed();
                }
            }
        }
        android.content.pm.PackageInfo packageInfo = ((android.content.Context) method2.invoke(chain.getThisObject(), null)).getPackageManager().getPackageInfo("dev.duo.hookprobe", 0);
        org.json.JSONObject put = new org.json.JSONObject().put("contentUuid", "dev.duo.hookprobe").put("contentType", 4).put("baseContent", "").put("expandContent", new org.json.JSONObject().put("title", "MiDuo").put("icon", "").put("deeplink", "").put("appPackage", "dev.duo.hookprobe").put("appVersionName", packageInfo.versionName).put("appVersionCode", packageInfo.getLongVersionCode())).put("locationInModule", 0);
        if (jSONArray.length() == 0) {
            jSONArray.put(new org.json.JSONObject().put("cardUuid", "dev.duo.hookprobe").put("cardType", 0).put("property", new org.json.JSONObject().put("style", 0).put("cardContentList", new org.json.JSONArray())));
        }
        jSONArray.getJSONObject(jSONArray.length() - 1).getJSONObject("property").getJSONArray("cardContentList").put(put);
        java.lang.Object[] array = chain.getArgs().toArray();
        array[0] = method3.invoke(obj, jSONObject.toString(), cls);
        android.util.Log.i(c, "native navigation input appended MiDuo");
        return chain.proceed(array);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, java.lang.ClassLoader classLoader, java.lang.Class cls, final java.lang.reflect.Method method, final java.lang.reflect.Method method2, final java.lang.Object obj, final java.lang.reflect.Method method3, final java.lang.reflect.Type type, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        final java.lang.Object proceed = chain.proceed();
        final android.content.Context context = (android.content.Context) field.get(chain.getThisObject());
        return java.lang.reflect.Proxy.newProxyInstance(classLoader, new java.lang.Class[]{cls}, new java.lang.reflect.InvocationHandler() { // from class: dev.duo.workspaceprobe.e$$ExternalSyntheticLambda5
            @Override // java.lang.reflect.InvocationHandler
            public final java.lang.Object invoke(java.lang.Object obj2, java.lang.reflect.Method method4, java.lang.Object[] objArr) {
                java.lang.Object a2;
                a2 = dev.duo.workspaceprobe.e.a(method, method2, obj, method3, context, type, proceed, obj2, method4, objArr);
                return a2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.Object obj, java.lang.reflect.Method method3, android.content.Context context, java.lang.reflect.Type type, java.lang.Object obj2, java.lang.Object obj3, java.lang.reflect.Method method4, java.lang.Object[] objArr) throws java.lang.Throwable {
        if (method4.equals(method) && "dev.duo.hookprobe".equals(new org.json.JSONObject((java.lang.String) method2.invoke(obj, objArr[0])).getJSONObject("info").getString("appPackage"))) {
            return method3.invoke(obj, a(context).toString(), type);
        }
        try {
            return method4.invoke(obj2, objArr);
        } catch (java.lang.reflect.InvocationTargetException e) {
            throw e.getCause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Method method3, java.lang.reflect.Method method4, java.lang.reflect.Field field, java.lang.reflect.Field field2, java.lang.reflect.Field field3, java.lang.reflect.Field field4, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object arg = chain.getArg(0);
        java.lang.Object proceed = chain.proceed();
        if (!"dev.duo.hookprobe".equals(method.invoke(arg, null))) {
            return proceed;
        }
        java.lang.Object invoke = method2.invoke(arg, null);
        int intValue = ((java.lang.Integer) method3.invoke(invoke, null)).intValue();
        int intValue2 = ((java.lang.Integer) method4.invoke(invoke, null)).intValue();
        field.setInt(proceed, intValue);
        field2.setInt(proceed, intValue2);
        field3.setInt(proceed, intValue);
        field4.setInt(proceed, intValue2);
        android.util.Log.i(c, "native target " + intValue + "x" + intValue2);
        return proceed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Method method, java.lang.reflect.Method method2, java.lang.reflect.Method method3, java.lang.reflect.Method method4, java.lang.reflect.Method method5, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object invoke = method.invoke(chain.getThisObject(), chain.getArg(0));
        if (invoke != null && "dev.duo.hookprobe".equals(method2.invoke(invoke, null))) {
            java.lang.Object invoke2 = method3.invoke(invoke, null);
            if (((java.lang.Integer) method4.invoke(invoke2, null)).intValue() == 4 && ((java.lang.Integer) method5.invoke(invoke2, null)).intValue() == 6) {
                return 7;
            }
        }
        return chain.proceed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ java.lang.Object a(java.lang.reflect.Field field, io.github.libxposed.api.XposedInterface.Chain chain) throws java.lang.Throwable {
        java.lang.Object proceed = chain.proceed();
        java.lang.String str = (java.lang.String) chain.getArg(0);
        if (str != null && str.startsWith("android.resource://dev.duo.hookprobe/")) {
            ((android.widget.ImageView) field.get(chain.getThisObject())).setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
        }
        return proceed;
    }

    private static java.lang.String a(java.lang.reflect.Method method) throws java.lang.ReflectiveOperationException {
        for (java.lang.annotation.Annotation annotation : method.getAnnotations()) {
            if (annotation.annotationType().getName().equals("retrofit2.http.POST")) {
                return (java.lang.String) annotation.annotationType().getMethod("value", null).invoke(annotation, null);
            }
        }
        return null;
    }

    private static org.json.JSONArray a(android.content.Context context) throws java.lang.Exception {
        android.content.pm.PackageInfo packageInfo = context.getPackageManager().getPackageInfo("dev.duo.hookprobe", 0);
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        for (android.appwidget.AppWidgetProviderInfo appWidgetProviderInfo : android.appwidget.AppWidgetManager.getInstance(context).getInstalledProvidersForPackage("dev.duo.hookprobe", android.os.Process.myUserHandle())) {
            int i = appWidgetProviderInfo.targetCellWidth;
            int i2 = appWidgetProviderInfo.targetCellHeight;
            int a2 = a(i, i2);
            java.lang.String str = "android.resource://dev.duo.hookprobe/" + appWidgetProviderInfo.previewImage;
            jSONArray.put(new org.json.JSONObject().put("implUniqueCode", appWidgetProviderInfo.provider.flattenToString()).put("abilityCode", appWidgetProviderInfo.provider.getClassName()).put("abilityVersion", 0).put("implType", 1).put("style", a2).put("originStyle", a2).put("appPackage", "dev.duo.hookprobe").put("appIcon", "").put("appName", "MiDuo").put("appInstalledVersionName", packageInfo.versionName).put("appVersionCode", (int) packageInfo.getLongVersionCode()).put("appDownloadUrl", "").put("appVersionName", packageInfo.versionName).put("appPublisherName", "").put("appPermissionUrl", "").put("appPrivacyUrl", "").put("groupId", "").put("groupName", "").put("useAppIcon", true).put("widgetImplInfo", new org.json.JSONObject().put("widgetProviderName", appWidgetProviderInfo.provider.getClassName()).put("widgetTitle", appWidgetProviderInfo.loadLabel(context.getPackageManager())).put("desc", "").put("lightPreviewUrl", str).put("darkPreviewUrl", str).put("sort", jSONArray.length()).put("appWidgetWidth", i).put("appWidgetHeight", i2).put("editConfig", new org.json.JSONArray()).put("installStatus", 1).put("isIndependentProcessWidget", true).put("isRealEditable", false)).put("isPay", false).put("isBought", false).put("isAuthorityPass", false));
        }
        android.util.Log.i(c, "local providers=" + jSONArray.length());
        return jSONArray;
    }

    private static int a(int i, int i2) {
        if (i == 4 && (i2 == 6 || i2 == 4)) {
            return 4;
        }
        if (i == 2 && i2 == 2) {
            return 1;
        }
        if (i == 4 && i2 == 2) {
            return 2;
        }
        throw new java.lang.IllegalArgumentException("Unsupported MiDuo provider span " + i + "x" + i2);
    }

    private static java.lang.reflect.Field a(java.lang.Class<?> cls, java.lang.String str) throws java.lang.NoSuchFieldException {
        while (cls != null) {
            try {
                java.lang.reflect.Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (java.lang.NoSuchFieldException e) {
                if (cls.getSuperclass() != null) {
                    cls = cls.getSuperclass();
                } else {
                    throw e;
                }
            }
        }
        throw new java.lang.NoSuchFieldException(str);
    }
}
