package com.abel.statussize;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.Rect;
import android.provider.Settings;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class MainHook extends XposedModule {
    private static final String ACTION = "com.dsh.statussize.RELOAD";
    private static final String ACTION_SET = "com.dsh.statussize.SET";
    private static final int DOTS_ID = 2131429483;
    private static final String KEY_APPTOP = "dsh_app_top_dp";
    private static final String KEY_DOTS = "dsh_dots_height_dp";
    private static final String KEY_PULL = "dsh_pull_edge_dp";
    private static final String KEY_RATIO = "dsh_sb_ratio";
    private static final String KEY_HDR = "dsh_shade_header_dp";
    private static final String KEY_SB = "dsh_sb_height_dp";
    private static final String TAG = "StatusSize";
    private static volatile int sAppTopDp = -1;
    private static volatile int sDotsDp = 0;
    private static volatile int sPullDp = 12;
    private static volatile int sSbRatio = 100;
    private static volatile int sDimLog = 0;
    private static volatile int sHeaderDp = 0;
    private static volatile boolean sInitDone = false;
    private static volatile boolean sReceiverDone = false;
    private static volatile int sSbDp;
    private static volatile View sStatusBarView;
    private static final Set<Integer> sSbarDims = new HashSet();
    private static volatile int sProbeCount = 0;
    private static final Set<Integer> sHeaderIds = new HashSet();
    private static volatile int sHeaderSeen = 0;
    private static volatile int sAttachLog = 0;
    private static final int ID_SB_CONTAINER = 0x7f0b0b46;
    private static volatile View sSbContainer;
    private static volatile Context sAppContext;
    private static final java.util.List<View> sSbViews = new java.util.ArrayList<View>();
    private static final Map<View, Integer> sOrigHeights = Collections.synchronizedMap(new WeakHashMap());
    private static final Set<View> sHeaders = Collections.newSetFromMap(new WeakHashMap());
    private static final Set<View> sDotsViews = Collections.newSetFromMap(new WeakHashMap());
    private static final Map<View, Integer> sOrigDotsHeights = Collections.synchronizedMap(new WeakHashMap());
    private static boolean sScaled = false;
    private static volatile float sScaleFactor = 1.0f;
    private static volatile boolean sShadeExpanded = false;
    private static int sOrigLandPx = 0;
    private static int sOrigPortPx = 0;
    private static final Set<Object> sControllers = Collections.newSetFromMap(new WeakHashMap());

    public void onModuleLoaded(XposedModuleInterface.ModuleLoadedParam moduleLoadedParam) {
        try {
            log("onModuleLoaded 进程=" + moduleLoadedParam.getProcessName() + " 是系统服务=" + moduleLoadedParam.isSystemServer());
            probe("onModuleLoaded 进程=" + moduleLoadedParam.getProcessName() + " 是系统服务=" + moduleLoadedParam.isSystemServer());
        } catch (Throwable th) {
            log("onModuleLoaded 异常: " + th);
        }
    }

    public void onSystemServerStarting(XposedModuleInterface.SystemServerStartingParam systemServerStartingParam) {
        try {
            ClassLoader classLoader = systemServerStartingParam.getClassLoader();
            hookResources(classLoader);
            hookCutout(classLoader);
            log("system_server 已挂钩（SystemServerStarting）");
            probe("system_server 已挂钩 classLoader=" + classLoader);
        } catch (Throwable th) {
            log("onSystemServerStarting 异常: " + th);
        }
    }

    public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoadedParam) {
        try {
            String packageName = packageLoadedParam.getPackageName();
            if ("com.android.systemui".equals(packageName)) {
                ClassLoader defaultClassLoader = packageLoadedParam.getDefaultClassLoader();
                hookResources(defaultClassLoader);
                hookHeaderView(defaultClassLoader);
                hookStatusBarController(defaultClassLoader);
                hookStatusBarView(defaultClassLoader);
                hookShadeState(defaultClassLoader);
                hookShadeToggle(defaultClassLoader, "com.android.systemui.shade.ShadeControllerImpl", "expandToNotifications", true);
                hookShadeToggle(defaultClassLoader, "com.android.systemui.shade.ShadeControllerImpl", "expandToQs", true);
                hookShadeToggle(defaultClassLoader, "com.android.systemui.shade.ShadeControllerImpl", "collapseShade", false);
                hookShadeToggle(defaultClassLoader, "com.android.systemui.shade.ShadeControllerImpl", "closeShadeIfOpen", false);
                hookWmUpdate();
                log("SystemUI 已挂钩");
            } else if ("android".equals(packageName)) {
                ClassLoader defaultClassLoader2 = packageLoadedParam.getDefaultClassLoader();
                hookResources(defaultClassLoader2);
                hookCutout(defaultClassLoader2);
                log("system_server 已挂钩");
            } else {
                log("App 跳过（不逐应用 hook）pkg=" + packageName);
            }
        } catch (Throwable th) {
            log("onPackageLoaded 异常: " + th);
        }
    }

    private static volatile int sAppSbDp = 0;
    private static volatile boolean sAppSbLoaded = false;
    private static volatile boolean sHideSbContent = false;
    private static volatile boolean sWmHooked = false;
    private static volatile View sTopProxy = null;

    static void initAppSbDp() {
        if (sAppSbLoaded) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object o = cls.getMethod("currentActivityThread").invoke(null);
            if (o == null) {
                return;
            }
            android.content.Context c = null;
            try {
                c = (android.content.Context) cls.getMethod("getApplication").invoke(o);
            } catch (Throwable ignored) {
            }
            if (c == null) {
                try {
                    c = (android.content.Context) cls.getMethod("getSystemContext").invoke(o);
                } catch (Throwable ignored2) {
                }
            }
            if (c == null) {
                return;
            }
            sAppSbDp = android.provider.Settings.Global.getInt(c.getContentResolver(), "dsh_sb_height_dp", 0);
            sAppSbLoaded = true;
            log("App 读到 sbDp=" + sAppSbDp);
        } catch (Throwable th) {
        }
    }

    private void hookAppProbe(ClassLoader cl) {
        try {
            resolveDims();
            if (sSbarDims.isEmpty()) {
                return;
            }
            Method m = Resources.class.getDeclaredMethod("getDimensionPixelSize", int.class);
            m.setAccessible(true);
            hook(m).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("app_sb_px").intercept(new XposedInterface.Hooker() {
                public final Object intercept(XposedInterface.Chain chain) throws Throwable {
                    try {
                        if (!sAppSbLoaded) {
                            initAppSbDp();
                        }
                        int dp = sAppSbDp;
                        if (dp > 0) {
                            int id = ((Integer) chain.getArg(0)).intValue();
                            if (sSbarDims.contains(Integer.valueOf(id))) {
                                int px = dpToPx(dp);
                                if (sProbeCount < 6) {
                                    sProbeCount++;
                                    log("App生效 status_bar_height -> " + px + "px (dp=" + dp + ")");
                                }
                                return Integer.valueOf(px);
                            }
                        }
                    } catch (Throwable ignored) {
                    }
                    return chain.proceed();
                }
            });
            log("App dimen 已挂钩");
        } catch (Throwable th) {
            log("App 探针失败: " + th);
        }
    }

    private void hookResources(ClassLoader classLoader) {
        try {
            resolveDims();
            hookDimMethod("getDimensionPixelSize");
            hookDimMethod("getDimensionPixelOffset");
            hookDimMethod("getDimension");
        } catch (Throwable th) {
            log("hookResources 异常: " + th);
        }
    }

    private void hookCutout(ClassLoader classLoader) {
        try {
            for (Method method : Class.forName("android.view.InsetsSource", false, classLoader).getDeclaredMethods()) {
                if (method.getName().equals("setFrame") && method.getParameterCount() == 1 && method.getParameterTypes()[0] == Rect.class) {
                    method.setAccessible(true);
                    hook(method).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("cutout_frame").intercept(new XposedInterface.Hooker() { // from class: com.abel.statussize.MainHook$$ExternalSyntheticLambda7
                        public final Object intercept(XposedInterface.Chain chain) throws Throwable {
                            return MainHook.lambda$hookCutout$0(chain);
                        }
                    });
                    log("已挂钩 InsetsSource.setFrame（摄像头避让清零）");
                    probe("已挂钩 InsetsSource.setFrame");
                    hookDisplayCutout(classLoader);
                    return;
                }
            }
            log("未找到 InsetsSource.setFrame");
            probe("未找到 InsetsSource.setFrame");
            hookDisplayCutout(classLoader);
        } catch (Throwable th) {
            log("hookCutout 异常: " + th);
            probe("hookCutout 异常: " + th);
        }
    }

    static /* synthetic */ Object lambda$hookCutout$0(XposedInterface.Chain chain) throws Throwable {
        try {
            Object call = call(chain.getThisObject(), "getType", new Object[0]);
            if ((call instanceof Integer) && (((Integer) call).intValue() & WindowInsets.Type.displayCutout()) != 0) {
                return chain.proceed(new Object[]{new Rect(0, 0, 0, 0)});
            }
        } catch (Throwable unused) {
        }
        return chain.proceed();
    }

    private void hookDisplayCutout(ClassLoader classLoader) {
        try {
            StringBuilder sb = new StringBuilder();
            int n = 0;
            for (Method method : Class.forName("com.android.server.wm.DisplayContent", false, classLoader).getDeclaredMethods()) {
                if (!method.getName().toLowerCase().contains("cutout")) {
                    continue;
                }
                if (method.getReturnType() != DisplayCutout.class) {
                    continue;
                }
                sb.append(method.getName()).append('/').append(method.getParameterCount()).append(' ');
                try {
                    method.setAccessible(true);
                    hook(method).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE)
                            .setId("cutout_" + method.getName())
                            .intercept(MainHook::lambda$hookDisplayCutout$1);
                    n++;
                } catch (Throwable ignored) {
                }
            }
            probe("DisplayContent cutout 方法: " + sb + " 已挂钩=" + n);
        } catch (Throwable th) {
            probe("DisplayContent hook 异常: " + th);
        }
    }

    static /* synthetic */ Object lambda$hookDisplayCutout$1(XposedInterface.Chain chain) throws Throwable {
        return new DisplayCutout(Insets.NONE,
                new Rect(0, 0, 0, 0), new Rect(0, 0, 0, 0),
                new Rect(0, 0, 0, 0), new Rect(0, 0, 0, 0));
    }

    private void hookDimMethod(final String str) {
        try {
            Method declaredMethod = Resources.class.getDeclaredMethod(str, Integer.TYPE);
            declaredMethod.setAccessible(true);
            hook(declaredMethod).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("res_" + str).intercept(new XposedInterface.Hooker() { // from class: com.abel.statussize.MainHook$$ExternalSyntheticLambda3
                public final Object intercept(XposedInterface.Chain chain) throws Throwable {
                    return MainHook.lambda$hookDimMethod$2(str, chain);
                }
            });
            log("已挂钩 Resources." + str);
        } catch (Throwable th) {
            log("hook " + str + " 失败: " + th);
        }
    }

    static /* synthetic */ Object lambda$hookDimMethod$2(String str, XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        try {
            int ratio = sSbRatio;
            int id = ((Integer) chain.getArg(0)).intValue();
            if (ratio > 0 && ratio != 100 && sSbarDims.contains(Integer.valueOf(id))) {
                int orig;
                if (proceed instanceof Integer) {
                    orig = ((Integer) proceed).intValue();
                } else if (proceed instanceof Float) {
                    orig = Math.round(((Float) proceed).floatValue());
                } else {
                    return proceed;
                }
                int scaled = Math.round(orig * ratio / 100f);
                if (sDimLog < 20) {
                    sDimLog++;
                    log("状态栏 dimen 缩放 " + orig + " -> " + scaled + " (ratio=" + ratio + ")");
                }
                if ("getDimension".equals(str)) {
                    return Float.valueOf(scaled);
                }
                return Integer.valueOf(scaled);
            }
            if (sProbeCount < 40) {
                String n = Resources.getSystem().getResourceName(id);
                if (n != null && (n.contains("status_bar") || n.contains("cutout") || n.contains("navigation_bar"))) {
                    sProbeCount++;
                    log("App读dimen " + n + " = " + proceed);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            int i = sSbDp;
            if (i <= 0) {
                return proceed;
            }
            if (!sSbarDims.contains(Integer.valueOf(((Integer) chain.getArg(0)).intValue()))) {
                return proceed;
            }
            int dpToPx = dpToPx(i);
            if ("getDimension".equals(str)) {
                return Float.valueOf(dpToPx);
            }
            return Integer.valueOf(dpToPx);
        } catch (Throwable unused) {
            return proceed;
        }
    }

    private void resolveDims() {
        synchronized (MainHook.class) {
            if (sSbarDims.isEmpty()) {
                Resources system = Resources.getSystem();
                String[] strArr = {"status_bar_height", "status_bar_height_portrait", "status_bar_height_landscape", "status_bar_height_default", "status_bar_simple_height"};
                for (int i = 0; i < 5; i++) {
                    String str = strArr[i];
                    int identifier = system.getIdentifier(str, "dimen", "android");
                    if (identifier != 0) {
                        sSbarDims.add(Integer.valueOf(identifier));
                        log("状态栏 dimen " + str + " = 0x" + Integer.toHexString(identifier));
                    }
                }
                if (sSbarDims.isEmpty()) {
                    log("未解析到状态栏 dimen，状态栏高度将不生效");
                }
                int identifier2 = system.getIdentifier("status_bar_height_landscape", "dimen", "android");
                if (identifier2 != 0) {
                    sOrigLandPx = system.getDimensionPixelSize(identifier2);
                }
                int identifier3 = system.getIdentifier("status_bar_height_portrait", "dimen", "android");
                if (identifier3 != 0) {
                    sOrigPortPx = system.getDimensionPixelSize(identifier3);
                }
                log("原始状态栏高度 横屏=" + sOrigLandPx + "px 竖屏=" + sOrigPortPx + "px");
            }
        }
    }

    private void hookHeaderView(ClassLoader classLoader) {
        try {
            resolveHeaderIds();
            Method declaredMethod = View.class.getDeclaredMethod("onAttachedToWindow", new Class[0]);
            declaredMethod.setAccessible(true);
            hook(declaredMethod).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("view_attach").intercept(new XposedInterface.Hooker() { // from class: com.abel.statussize.MainHook$$ExternalSyntheticLambda5
                public final Object intercept(XposedInterface.Chain chain) throws Throwable {
                    Object lambda$hookHeaderView$3;
                    lambda$hookHeaderView$3 = MainHook.this.lambda$hookHeaderView$3(chain);
                    return lambda$hookHeaderView$3;
                }
            });
            log("已挂钩 View.onAttachedToWindow");
        } catch (Throwable th) {
            log("hookHeaderView 异常: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$hookHeaderView$3(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        try {
            Object thisObject = chain.getThisObject();
            if (thisObject instanceof View) {
                View view = (View) thisObject;
                if (isHeader(view)) {
                    sHeaderSeen++;
                    if (sHeaderDp > 0) {
                        applyHeader(view, sHeaderDp);
                    } else {
                        restoreHeader(view);
                    }
                } else if (view.getId() == 0x7f0b0b44 || view.getId() == ID_SB_CONTAINER) {
                    synchronized (sSbViews) {
                        if (!sSbViews.contains(view)) {
                            sSbViews.add(view);
                        }
                    }
                    log("捕获状态栏视图 id=0x" + Integer.toHexString(view.getId()) + " 共" + sSbViews.size());
                    refreshContentAlpha();
                } else if (false) {
                    sSbContainer = view;
                    log("捕获状态栏容器 id=0x" + Integer.toHexString(view.getId()));
                    refreshContentAlpha();
                } else if (isDots(view)) {
                    if (sDotsDp > 0) {
                        applyDots(view, sDotsDp);
                    } else {
                        restoreDots(view);
                    }
                } else if (sAttachLog < 80) {
                    synchronized (MainHook.class) {
                        if (sAttachLog < 80) {
                            sAttachLog++;
                            log("attach #" + sAttachLog + " id=0x" + Integer.toHexString(view.getId()) + " " + nameOf(view));
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return proceed;
    }

    private void resolveHeaderIds() {
        synchronized (MainHook.class) {
            Set<Integer> set = sHeaderIds;
            if (set.isEmpty()) {
                try {
                    int identifier = Resources.getSystem().getIdentifier("main_panel_header", "id", "miui.systemui.plugin");
                    if (identifier != 0) {
                        set.add(Integer.valueOf(identifier));
                        log("面板顶部条 id = 0x" + Integer.toHexString(identifier));
                    } else {
                        log("未解析到 main_panel_header id，将在运行期按资源名匹配");
                    }
                } catch (Throwable th) {
                    log("resolveHeaderIds 异常: " + th);
                }
            }
        }
    }

    private boolean isHeader(View view) {
        int id = view.getId();
        if (id == -1) {
            return false;
        }
        Set<Integer> set = sHeaderIds;
        if (set.contains(Integer.valueOf(id))) {
            return true;
        }
        String nameOf = nameOf(view);
        if (nameOf == null || !nameOf.endsWith("/main_panel_header")) {
            return false;
        }
        set.add(Integer.valueOf(id));
        log("运行期识别到顶部条 id = 0x" + Integer.toHexString(id) + " (" + nameOf + ")");
        return true;
    }

    private static boolean isDots(View view) {
        return view != null && view.getId() == DOTS_ID;
    }

    private void applyDots(View view, int i) {
        try {
            int dpToPx = dpToPx(i);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            Map<View, Integer> map = sOrigDotsHeights;
            if (!map.containsKey(view)) {
                map.put(view, Integer.valueOf(layoutParams.height));
            }
            if (layoutParams.height != dpToPx) {
                layoutParams.height = dpToPx;
                view.setLayoutParams(layoutParams);
                log("三个小点高度 -> " + i + "dp (" + dpToPx + "px) id=0x" + Integer.toHexString(view.getId()));
            }
            sDotsViews.add(view);
        } catch (Throwable th) {
            log("applyDots 异常: " + th);
        }
    }

    private void restoreDots(View view) {
        Integer num;
        try {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || (num = sOrigDotsHeights.get(view)) == null || layoutParams.height == num.intValue()) {
                return;
            }
            layoutParams.height = num.intValue();
            view.setLayoutParams(layoutParams);
        } catch (Throwable unused) {
        }
    }

    private static String nameOf(View view) {
        try {
            int id = view.getId();
            if (id == -1) {
                return null;
            }
            return view.getResources().getResourceName(id);
        } catch (Throwable unused) {
            return null;
        }
    }

    private void applyHeader(View view, int i) {
        try {
            int dpToPx = dpToPx(i);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (layoutParams.height == dpToPx) {
                sHeaders.add(view);
                return;
            }
            Map<View, Integer> map = sOrigHeights;
            if (!map.containsKey(view)) {
                map.put(view, Integer.valueOf(layoutParams.height));
            }
            layoutParams.height = dpToPx;
            view.setLayoutParams(layoutParams);
            sHeaders.add(view);
            log("顶部条高度 -> " + i + "dp (" + dpToPx + "px)");
        } catch (Throwable th) {
            log("applyHeader 异常: " + th);
        }
    }

    private void hookStatusBarController(ClassLoader classLoader) {
        try {
            for (Method method : Class.forName("com.android.systemui.statusbar.window.StatusBarWindowControllerImpl", false, classLoader).getDeclaredMethods()) {
                if ("apply".equals(method.getName()) && method.getParameterCount() == 1) {
                    method.setAccessible(true);
                    hook(method).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("statusbar_apply").intercept(new XposedInterface.Hooker() { // from class: com.abel.statussize.MainHook$$ExternalSyntheticLambda6
                        public final Object intercept(XposedInterface.Chain chain) throws Throwable {
                            Object lambda$hookStatusBarController$4;
                            lambda$hookStatusBarController$4 = MainHook.this.lambda$hookStatusBarController$4(chain);
                            return lambda$hookStatusBarController$4;
                        }
                    });
                    log("已挂钩 StatusBarWindowControllerImpl.apply");
                    return;
                }
            }
        } catch (Throwable th) {
            log("hookStatusBarController 异常: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$hookStatusBarController$4(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        try {
            Object thisObject = chain.getThisObject();
            if (thisObject != null) {
                sControllers.add(thisObject);
                initSettings(thisObject);
                applyAppInset(thisObject);
                lambda$hookStatusBarView$6();
            applyWindowAlpha(thisObject);
            }
        } catch (Throwable unused) {
        }
        return proceed;
    }

    private void applyAppInset(Object obj) {
        if (sAppTopDp < 0) {
            return;
        }
        try {
            Object obj2 = get(obj, "mLpChanged");
            if (obj2 == null) {
                return;
            }
            Object obj3 = get(obj2, "paramsForRotation");
            if (obj3 instanceof Object[]) {
                int dpToPx = dpToPx(sAppTopDp);
                Insets of = Insets.of(0, dpToPx, 0, 0);
                int i = 0;
                for (Object obj4 : (Object[]) obj3) {
                    if (obj4 != null) {
                        Object obj5 = get(obj4, "providedInsets");
                        if (obj5 instanceof Object[]) {
                            for (Object obj6 : (Object[]) obj5) {
                                if (obj6 != null) {
                                    Object call = call(obj6, "getType", new Object[0]);
                                    if (call instanceof Integer) {
                                        int intValue = ((Integer) call).intValue();
                                        if ((WindowInsets.Type.displayCutout() & intValue) != 0) {
                                            call(obj6, "setInsetsSize", Insets.of(0, 0, 0, 0));
                                        } else if ((intValue & WindowInsets.Type.statusBars()) != 0) {
                                            call(obj6, "setInsetsSize", of);
                                        }
                                        i++;
                                    }
                                }
                            }
                        }
                    }
                }
                if (i > 0) {
                    log("应用顶部避让 -> " + sAppTopDp + "dp (" + dpToPx + "px)，provider=" + i);
                }
            }
        } catch (Throwable th) {
            log("applyAppInset 异常: " + th);
        }
    }

    private void hookShadeState(ClassLoader classLoader) {
        try {
            for (Method method : Class.forName("com.android.systemui.statusbar.StatusBarStateControllerImpl", false, classLoader).getDeclaredMethods()) {
                if (method.getName().equals("setState") && method.getParameterCount() == 2
                        && method.getParameterTypes()[0] == Integer.TYPE
                        && method.getParameterTypes()[1] == Boolean.TYPE) {
                    method.setAccessible(true);
                    hook(method).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("sb_state_set").intercept(new XposedInterface.Hooker() { // from class: com.abel.statussize.MainHook$$ExternalSyntheticLambda4
                        public final Object intercept(XposedInterface.Chain chain) throws Throwable {
                            Object lambda$hookShadeState$5;
                            lambda$hookShadeState$5 = MainHook.this.lambda$hookShadeState$5(chain);
                            return lambda$hookShadeState$5;
                        }
                    });
                    log("已挂钩 StatusBarStateControllerImpl.setState");
                    probeUi("已挂钩 StatusBarStateControllerImpl.setState");
                    return;
                }
            }
            log("未找到 StatusBarStateControllerImpl.setState");
            probeUi("未找到 StatusBarStateControllerImpl.setState");
        } catch (Throwable th) {
            log("hookShadeState 异常: " + th);
            probeUi("hookShadeState 异常: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$hookShadeState$5(XposedInterface.Chain chain) throws Throwable {
        int st = ((Integer) chain.getArg(0)).intValue();
        log("shade state=" + st);
        refreshStatusBarTranslation();
        refreshContentAlpha();
        return chain.proceed();
    }

    private static volatile boolean sPollerStarted = false;

    private static void startExpandedPoller() {
        if (sPollerStarted) {
            return;
        }
        sPollerStarted = true;
        final android.os.Handler h = new android.os.Handler(android.os.Looper.getMainLooper());
        h.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    boolean exp = isShadeExpanded();
                    if (exp != sShadeExpanded) {
                        sShadeExpanded = exp;
                        log("shade 展开=" + exp);
                        refreshStatusBarTranslation();
                    } else if (sSbDp == 0 && !exp) {
                        refreshStatusBarTranslation();
                    }
                } catch (Throwable unused) {
                }
                h.postDelayed(this, 350L);
            }
        }, 350L);
        log("已启动 shade 展开轮询");
    }

    private static boolean isShadeExpanded() {
        try {
            Object wmg = call(Class.forName("android.view.WindowManagerGlobal"), "getInstance", new Object[0]);
            Object raw = get(wmg, "mViews");
            if (!(raw instanceof java.util.ArrayList)) {
                return sShadeExpanded;
            }
            for (Object v : (java.util.ArrayList) raw) {
                if (v == null) {
                    continue;
                }
                String cn = v.getClass().getName();
                if (!cn.endsWith("NotificationShadeWindowView")) {
                    continue;
                }
                Object r = call(v, "isPanelExpanded", new Object[0]);
                if (r instanceof Boolean) {
                    return ((Boolean) r).booleanValue();
                }
                Object r2 = call(v, "isFullyExpanded", new Object[0]);
                if (r2 instanceof Boolean) {
                    return ((Boolean) r2).booleanValue();
                }
            }
        } catch (Throwable th) {
        }
        return sShadeExpanded;
    }

    private static void refreshStatusBarTranslation() {
        for (Object c : new java.util.ArrayList(sControllers)) {
            try {
                Object v = get(c, "mStatusBarWindowView");
                Object lpObj = get(c, "mLp");
                Object wmObj = get(c, "mWindowManager");
                if (v instanceof View) {
                    boolean hide = sSbDp == 0;
                    sHideSbContent = hide;
                    ((View) v).setTranslationY(0.0f);
                    ((View) v).setAlpha(1.0f);
                    if (lpObj instanceof android.view.WindowManager.LayoutParams && wmObj instanceof android.view.WindowManager) {
                        android.view.WindowManager.LayoutParams lp = (android.view.WindowManager.LayoutParams) lpObj;
                        lp.alpha = hide ? 0.0f : 1.0f;
                        try {
                            ((android.view.WindowManager) wmObj).updateViewLayout((View) v, lp);
                        } catch (Throwable unused) {
                        }
                    }
                    log("状态栏可见性 alpha=" + (hide ? "0（隐藏，触摸保留）" : "1（显示）"));
                }
            } catch (Throwable th) {
                log("refreshStatusBarTranslation 异常: " + th);
            }
        }
    }

    private static void ensureTopTouchProxy(android.view.WindowManager wm) {
        if (sTopProxy != null || sAppContext == null) {
            return;
        }
        try {
            final int hpx = origStatusBarPx();
            View v = new View(sAppContext);
            v.setBackgroundColor(0);
            android.view.WindowManager.LayoutParams lp = new android.view.WindowManager.LayoutParams();
            lp.type = 2038;
            lp.width = -1;
            lp.height = dpToPx(sPullDp);
            lp.gravity = 48;
            lp.format = android.graphics.PixelFormat.TRANSLUCENT;
            lp.flags = 264;
            lp.alpha = 1.0f;
            v.setBackgroundColor(0x01000000);
            v.setOnTouchListener(new View.OnTouchListener() {
                private float y0 = 0.0f;
                private long t0 = 0;

                @Override
                public boolean onTouch(View view, android.view.MotionEvent e) {
                    if (e.getActionMasked() == 0) {
                        this.y0 = e.getRawY();
                        this.t0 = System.currentTimeMillis();
                        return true;
                    }
                    if (e.getActionMasked() == 1) {
                        float dy = e.getRawY() - this.y0;
                        long dt = System.currentTimeMillis() - this.t0;
                        int wpx = sAppContext.getResources().getDisplayMetrics().widthPixels;
                        boolean right = e.getRawX() >= wpx / 2f;
                        log("顶部代理 滑动 dy=" + ((int) dy) + " dt=" + dt + " x=" + ((int) e.getRawX()) + " 右侧=" + right);
                        if (dy > dpToPx(20) && dt < 1500) {
                            expandShade(right);
                        }
                        return true;
                    }
                    return true;
                }
            });
            wm.addView(v, lp);
            sTopProxy = v;
            log("已添加顶部 " + hpx + "px 触摸代理层（接管下滑）");
        } catch (Throwable th) {
            log("ensureTopTouchProxy 异常: " + th);
        }
    }

    private void hookWmUpdate() {
        if (sWmHooked) {
            return;
        }
        sWmHooked = true;
        try {
            Class<?> c = Class.forName("android.view.WindowManagerImpl");
            for (final java.lang.reflect.Method m : c.getDeclaredMethods()) {
                if (!"updateViewLayout".equals(m.getName()) || m.getParameterTypes().length != 2) {
                    continue;
                }
                hook(m).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("wm_update").intercept(new XposedInterface.Hooker() {
                    @Override
                    public Object intercept(XposedInterface.Chain chain) throws Throwable {
                        try {
                            Object[] args = chain.getArgs().toArray();
                            Object v = args[0];
                            Object p = args[1];
                            if (v != null && p instanceof android.view.WindowManager.LayoutParams) {
                                String cn = v.getClass().getName();
                                if (cn.endsWith("StatusBarWindowView") || cn.endsWith("MiuiPhoneStatusBarView")) {
                                    ((android.view.WindowManager.LayoutParams) p).alpha = sHideSbContent ? 0.0f : 1.0f;
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        return chain.proceed();
                    }
                });
                log("已挂钩 WindowManagerImpl.updateViewLayout（强制状态栏 alpha）");
            }
        } catch (Throwable th) {
            log("hookWmUpdate 异常: " + th);
        }
    }

    private void hookShadeToggle(ClassLoader classLoader, String clsName, String methodName, final boolean expanded) {
        try {
            Class<?> c = Class.forName(clsName, false, classLoader);
            for (Method m : c.getDeclaredMethods()) {
                if (!m.getName().equals(methodName)) {
                    continue;
                }
                m.setAccessible(true);
                hook(m).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE)
                        .setId("shade_" + methodName)
                        .intercept(expanded ? this::lambda$shadeExpand : this::lambda$shadeCollapse);
                log("已挂钩 " + clsName + "." + methodName + " expanded=" + expanded);
                return;
            }
            log("未找到 " + clsName + "." + methodName);
        } catch (Throwable th) {
            log("hookShadeToggle " + methodName + " 失败: " + th);
        }
    }

    private Object lambda$shadeExpand(XposedInterface.Chain chain) throws Throwable {
        Object r = chain.proceed();
        sShadeExpanded = true;
        refreshContentAlpha();
        return r;
    }

    private Object lambda$shadeCollapse(XposedInterface.Chain chain) throws Throwable {
        Object r = chain.proceed();
        sShadeExpanded = false;
        refreshContentAlpha();
        return r;
    }

    private void hookStatusBarView(ClassLoader classLoader) {
        try {
            Method method = Class.forName("com.android.systemui.statusbar.phone.MiuiPhoneStatusBarView", false, classLoader).getMethod("onAttachedToWindow", new Class[0]);
            method.setAccessible(true);
            hook(method).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("statusbar_view_attach").intercept(new XposedInterface.Hooker() { // from class: com.abel.statussize.MainHook$$ExternalSyntheticLambda0
                public final Object intercept(XposedInterface.Chain chain) throws Throwable {
                    Object lambda$hookStatusBarView$7;
                    lambda$hookStatusBarView$7 = MainHook.this.lambda$hookStatusBarView$7(chain);
                    return lambda$hookStatusBarView$7;
                }
            });
            log("已挂钩 MiuiPhoneStatusBarView.onAttachedToWindow");
        } catch (Throwable th) {
            log("hookStatusBarView 异常: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$hookStatusBarView$7(XposedInterface.Chain chain) throws Throwable {
        Object proceed = chain.proceed();
        try {
            Object thisObject = chain.getThisObject();
            if (thisObject instanceof View) {
                sStatusBarView = (View) thisObject;
                log("状态栏根视图已获取，准备等比缩放");
                sStatusBarView.post(new Runnable() { // from class: com.abel.statussize.MainHook$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainHook.this.lambda$hookStatusBarView$6();
                    }
                });
            }
        } catch (Throwable unused) {
        }
        return proceed;
    }

    private static void pushLp(android.view.View v, android.view.ViewGroup.LayoutParams lp) {
        try {
            android.view.WindowManager wm = (android.view.WindowManager) v.getContext().getSystemService("window");
            if (wm != null && (lp instanceof android.view.WindowManager.LayoutParams)) {
                wm.updateViewLayout(v, lp);
                return;
            }
        } catch (Throwable th) {
            log("pushLp 异常: " + th);
        }
        v.setLayoutParams(lp);
    }

    private static int origStatusBarPx() {
        try {
            boolean z = Resources.getSystem().getConfiguration().orientation == 2;
            int i = z ? sOrigLandPx : sOrigPortPx;
            if (i <= 0) {
                return z ? sOrigPortPx : sOrigLandPx;
            }
            return i;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private static View rootOf(View v) {
        View p = v;
        int guard = 0;
        while (p != null && p.getParent() instanceof View && guard++ < 64) {
            p = (View) p.getParent();
        }
        return p;
    }

    private void refreshContentAlpha() {
        View view = sStatusBarView;
        if (view == null) {
            return;
        }
        java.util.List<View> targets = new java.util.ArrayList<View>();
        synchronized (sSbViews) {
            for (View v : sSbViews) {
                if (v.getWindowToken() != null) {
                    targets.add(v);
                }
            }
        }
        if (targets.isEmpty() && sStatusBarView != null) {
            targets.add(sStatusBarView);
        }
        int origStatusBarPx = origStatusBarPx();
        boolean hide = false; // 只调高度，不隐藏内容
        float f = hide ? 0.0f : 1.0f;
        int vis = hide ? View.INVISIBLE : View.VISIBLE;
        boolean changed = false;
        for (View v : targets) {
            if (Math.abs(v.getAlpha() - f) > 0.001f) {
                v.setAlpha(f);
                changed = true;
            }
            if (v.getVisibility() != vis) {
                v.setVisibility(vis);
                changed = true;
            }
        }
        if (changed) {
            log("状态栏内容 -> " + (hide ? "隐藏" : "显示") + "（展开=" + sShadeExpanded + " alpha=" + f + " vis=" + vis + "）");
        }
        setWindowAlpha(hide ? 0.0f : 1.0f);
        hideAllSbRoots(hide);
    }

    @SuppressWarnings("unchecked")
    private static void hideAllSbRoots(boolean hide) {
        try {
            Class<?> wmg = Class.forName("android.view.WindowManagerGlobal");
            Object inst = wmg.getMethod("getInstance").invoke(null);
            java.lang.reflect.Field f = wmg.getDeclaredField("mViews");
            f.setAccessible(true);
            Object listObj = f.get(inst);
            if (!(listObj instanceof java.util.ArrayList)) {
                return;
            }
            java.util.ArrayList<View> views = (java.util.ArrayList<View>) listObj;
            int n = 0;
            for (View v : new java.util.ArrayList<View>(views)) {
                if (v == null) {
                    continue;
                }
                String cn = v.getClass().getName();
                if (!cn.contains("StatusBarWindowView") && !cn.contains("PhoneStatusBarView")) {
                    continue;
                }
                int vis = hide ? View.INVISIBLE : View.VISIBLE;
                if (v.getVisibility() != vis) {
                    v.setVisibility(vis);
                    n++;
                }
                if (Math.abs(v.getAlpha() - (hide ? 0f : 1f)) > 0.001f) {
                    v.setAlpha(hide ? 0f : 1f);
                }
            }
            if (n > 0) {
                log("WMGlobal 状态栏根视图 -> " + (hide ? "隐藏" : "显示") + " 共" + n + "个");
            }
        } catch (Throwable th) {
            log("hideAllSbRoots 异常: " + th);
        }
    }

    private static final int ID_CLOCK_AREA = 0x7f0b090b;
    private static final int ID_SYS_ICONS = 0x7f0b0bd9;
    private static final int ID_STATUS_ICONS = 0x7f0b0b4b;

    private static void hideSbContent(View root) {
        try {
            boolean hide = sSbDp <= 0;
            for (int id : new int[]{ID_CLOCK_AREA, ID_SYS_ICONS, ID_STATUS_ICONS}) {
                View v = root.findViewById(id);
                if (v == null) {
                    continue;
                }
                v.setVisibility(hide ? View.INVISIBLE : View.VISIBLE);
            }
            View dots = root.findViewById(0x7f0b086b);
            if (dots != null) {
                int h = hide ? Math.round(origStatusBarPx() * 0.4f) : origStatusBarPx();
                android.view.ViewGroup.LayoutParams lp = dots.getLayoutParams();
                if (lp != null && lp.height != h) {
                    lp.height = h;
                    dots.setLayoutParams(lp);
                    dots.requestLayout();
                }
                float ty = hide ? -dpToPx(14) : 0f;
                dots.setTranslationY(ty);
                log("三点背景条 -> " + h + "px (hide=" + hide + ") ty=" + ty);
            }
            View icons = root.findViewById(0x7f0b085b);
            if (icons != null) {
                icons.requestLayout();
            }
        } catch (Throwable th) {
            log("hideSbContent 异常: " + th);
        }
    }

    private static void applyWindowAlpha(Object self) {
        try {
            float a = 1.0f; // 状态栏始终可见，只调高度
            Object lp0 = get(self, "mLpChanged");
            if (lp0 instanceof android.view.WindowManager.LayoutParams) {
                ((android.view.WindowManager.LayoutParams) lp0).alpha = a;
            }
            Object lp = get(self, "mLp");
            Object v = get(self, "mStatusBarWindowView");
            Object wm = get(self, "mWindowManager");
            if (!(lp instanceof android.view.WindowManager.LayoutParams) || !(v instanceof View) || !(wm instanceof android.view.WindowManager)) {
                return;
            }
            android.view.WindowManager.LayoutParams w = (android.view.WindowManager.LayoutParams) lp;
            boolean hideSb = sSbDp <= 0;
            int targetH = hideSb ? Math.round(origStatusBarPx() * 0.4f) : dpToPx(sSbDp);
            float targetA = 1.0f;
            log("applyWindowAlpha -> hide=" + hideSb + " targetH=" + targetH);
            w.alpha = targetA;
            w.height = targetH;
            w.flags &= ~0x00000010;
            ((View) v).setVisibility(View.VISIBLE);
            hideSbContent((View) v);
            try {
                ((android.view.WindowManager) wm).updateViewLayout((View) v, w);
            } catch (Throwable unusedUpdate) {
                log("applyWindowAlpha update 异常: " + unusedUpdate);
            }
            try {
                Object lpCh = get(self, "mLpChanged");
                if (lpCh instanceof android.view.WindowManager.LayoutParams) {
                    android.view.WindowManager.LayoutParams c2 = (android.view.WindowManager.LayoutParams) lpCh;
                    c2.alpha = targetA;
                    c2.height = targetH;
                }
            } catch (Throwable unused) {
            }
            try {
                Object pfr = get(w, "paramsForRotation");
                if (pfr instanceof Object[]) {
                    for (Object o : (Object[]) pfr) {
                        if (o instanceof android.view.WindowManager.LayoutParams) {
                            android.view.WindowManager.LayoutParams r = (android.view.WindowManager.LayoutParams) o;
                            r.alpha = targetA;
                            r.height = targetH;
                            r.flags &= ~0x00000010;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
            ((android.view.WindowManager) wm).updateViewLayout((View) v, w);
            log("窗口 mLp.alpha -> " + a + "（展开=" + sShadeExpanded + "）");
        } catch (Throwable th) {
            log("applyWindowAlpha 异常: " + th);
        }
    }

    private static void applySbWindowZero() {
        for (Object c : new java.util.ArrayList(sControllers)) {
            try {
                Object lpObj = get(c, "mLp");
                Object vObj = get(c, "mStatusBarWindowView");
                Object wmObj = get(c, "mWindowManager");
                if (!(lpObj instanceof android.view.WindowManager.LayoutParams) || !(vObj instanceof View) || !(wmObj instanceof android.view.WindowManager)) {
                    continue;
                }
                android.view.WindowManager.LayoutParams lp = (android.view.WindowManager.LayoutParams) lpObj;
                int h = origStatusBarPx();
                lp.y = 0;
                lp.height = h;
                lp.alpha = 1.0f;
                Object arr = get(lp, "paramsForRotation");
                if (arr instanceof Object[]) {
                    for (Object o : (Object[]) arr) {
                        if (o instanceof android.view.WindowManager.LayoutParams) {
                            android.view.WindowManager.LayoutParams w = (android.view.WindowManager.LayoutParams) o;
                            w.y = 0;
                            w.height = h;
                            w.alpha = 1.0f;
                        }
                    }
                }
                clearInsets(lp);
                ((View) vObj).setTranslationY(0.0f);
                boolean hideSb = sSbDp == 0 && !sShadeExpanded;
                sHideSbContent = hideSb;
                lp.alpha = hideSb ? 0.0f : 1.0f;
                ((android.view.WindowManager) wmObj).updateViewLayout((View) vObj, lp);
                log("状态栏 alpha=" + (hideSb ? "0（隐藏，触摸区保留 140px）" : "1（显示）"));
                ensureCutoutDot((android.view.WindowManager) wmObj);
                startExpandedPoller();
                break;
            } catch (Throwable th) {
                log("applySbWindowZero 异常: " + th);
            }
        }
    }

    private static void clearInsets(android.view.WindowManager.LayoutParams lp) {
        try {
            Object prov = get(lp, "providedInsets");
            if (prov instanceof Object[]) {
                for (Object o : (Object[]) prov) {
                    if (o != null) {
                        call(o, "setInsetsSize", android.graphics.Insets.of(0, 0, 0, 0));
                    }
                }
            }
        } catch (Throwable th) {
            log("clearInsets 异常: " + th);
        }
    }

    private static volatile View sStrip;

    private static void ensureStrip(android.view.WindowManager wm) {
        try {
            if (sStrip != null) {
                return;
            }
            Context ctx = sAppContext;
            if (ctx == null) {
                return;
            }
            if (wm == null) {
                return;
            }
            View v = new View(ctx);
            android.view.WindowManager.LayoutParams lp = new android.view.WindowManager.LayoutParams();
            lp.type = 2001;
            lp.width = -1;
            lp.height = dpToPx(8);
            lp.gravity = 48;
            lp.flags = 0x00000118;
            lp.format = -3;
            lp.alpha = 0.01f;
            v.setOnTouchListener(new View.OnTouchListener() {
                private float downY;

                @Override
                public boolean onTouch(View v2, android.view.MotionEvent e) {
                    int a = e.getActionMasked();
                    if (a == 0) {
                        downY = e.getRawY();
                        log("手势条 down y=" + downY);
                        return true;
                    }
                    if (a == 1) {
                        log("手势条 up dy=" + (e.getRawY() - downY));
                        if (e.getRawY() - downY > dpToPx(24)) {
                            expandShade();
                        }
                    }
                    return true;
                }
            });
            wm.addView(v, lp);
            sStrip = v;
            log("已添加顶部 8dp 手势条（下拉呼出通知栏）");
        } catch (Throwable th) {
            log("ensureStrip 异常: " + th);
        }
    }

    private static void expandShade() { expandShade(false); }

    private static void expandShade(boolean qs) {
        try {
            Object dep = sStatusBarView == null ? null : get(sStatusBarView, "mDependence");
            Object sc = null;
            if (dep != null) {
                for (java.lang.reflect.Field f : dep.getClass().getDeclaredFields()) {
                    if (f.getType().getName().contains("ShadeController")) {
                        f.setAccessible(true);
                        sc = f.get(dep);
                        break;
                    }
                }
            }
            if (sc != null) {
                String want = qs ? "expandToQs" : "expandToNotifications";
                for (java.lang.reflect.Method mm : sc.getClass().getMethods()) {
                    if (want.equals(mm.getName()) && mm.getParameterTypes().length == 0) {
                        mm.setAccessible(true);
                        mm.invoke(sc);
                        log("ShadeController." + want + " 已调用");
                        return;
                    }
                }
                for (java.lang.reflect.Method mm : sc.getClass().getMethods()) {
                    if ("expandToNotifications".equals(mm.getName()) && mm.getParameterTypes().length == 0) {
                        mm.setAccessible(true);
                        mm.invoke(sc);
                        log("ShadeController.expandToNotifications 已调用（回退）");
                        return;
                    }
                }
                log("shadeController 无 expandToNotifications，类=" + sc.getClass().getName());
            } else {
                StringBuilder sb = new StringBuilder();
                if (sStatusBarView != null) {
                    for (java.lang.reflect.Field f : sStatusBarView.getClass().getDeclaredFields()) {
                        sb.append(f.getName()).append(' ');
                    }
                }
                log("未取到 shadeController dep=" + dep + " 字段=" + sb);
            }
        } catch (Throwable th) {
            log("expandShade 反射异常: " + th);
        }
        new android.os.Handler(android.os.Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                restoreSbWindow();
                injectSwipeDown();
            }
        }, 120L);
    }

    private static void injectSwipeDown() {
        try {
            Class<?> imc = Class.forName("android.hardware.input.InputManagerGlobal");
            java.lang.reflect.Method gi = imc.getDeclaredMethod("getInstance");
            gi.setAccessible(true);
            Object im = gi.invoke(null);
            java.lang.reflect.Method inj = imc.getDeclaredMethod("injectInputEvent", android.view.InputEvent.class, int.class);
            inj.setAccessible(true);
            android.util.DisplayMetrics dm = sAppContext.getResources().getDisplayMetrics();
            float x = dm.widthPixels / 2.0f;
            float endY = dm.heightPixels * 0.62f;
            long t0 = android.os.SystemClock.uptimeMillis();
            int steps = 14;
            for (int i = 0; i <= steps; i++) {
                long t = t0 + (i * 14L);
                float y = 2.0f + ((endY * i) / steps);
                int action = i == 0 ? 0 : (i == steps ? 1 : 2);
                android.view.MotionEvent ev = android.view.MotionEvent.obtain(t0, t, action, x, y, 0);
                inj.invoke(im, ev, 0);
                ev.recycle();
            }
            log("已注入下滑手势 x=" + x + " endY=" + endY);
        } catch (Throwable th) {
            log("injectSwipeDown 异常: " + th);
        }
    }

    private static void restoreSbWindow() {
        for (Object c : new java.util.ArrayList(sControllers)) {
            try {
                Object lpObj = get(c, "mLp");
                Object vObj = get(c, "mStatusBarWindowView");
                Object wmObj = get(c, "mWindowManager");
                if (!(lpObj instanceof android.view.WindowManager.LayoutParams) || !(vObj instanceof View) || !(wmObj instanceof android.view.WindowManager)) {
                    continue;
                }
                android.view.WindowManager.LayoutParams lp = (android.view.WindowManager.LayoutParams) lpObj;
                int hh = origStatusBarPx();
                ((View) vObj).setTranslationY(0.0f);
                lp.y = 0;
                lp.height = hh;
                lp.alpha = 1.0f;
                Object prov = get(lp, "providedInsets");
                if (prov instanceof Object[]) {
                    for (Object o : (Object[]) prov) {
                        if (o != null) {
                            call(o, "setInsetsSize", android.graphics.Insets.of(0, hh, 0, 0));
                        }
                    }
                }
                ((android.view.WindowManager) wmObj).updateViewLayout((View) vObj, lp);
                log("临时恢复状态栏窗口高度与inset -> " + hh);
            } catch (Throwable th) {
                log("restoreSbWindow 异常: " + th);
            }
        }
    }

    private static void setWindowAlpha(float a) {
        for (Object c : new java.util.ArrayList(sControllers)) {
            try {
                View v = null;
                String[] names = {"mStatusBarWindowView", "mBarView", "mBar" };
                for (String f : names) {
                    Object o = get(c, f);
                    if (o instanceof View) {
                        v = (View) o;
                        break;
                    }
                }
                if (v == null) {
                    continue;
                }
                android.view.ViewGroup.LayoutParams lp = v.getLayoutParams();
                if (!(lp instanceof android.view.WindowManager.LayoutParams)) {
                    continue;
                }
                android.view.WindowManager.LayoutParams wlp = (android.view.WindowManager.LayoutParams) lp;
                if (Math.abs(wlp.alpha - a) < 0.001f) {
                    continue;
                }
                wlp.alpha = a;
                android.view.WindowManager wm = (android.view.WindowManager) v.getContext().getSystemService("window");
                if (wm != null) {
                    wm.updateViewLayout(v, wlp);
                    log("窗口 alpha -> " + a + " (view=" + Integer.toHexString(v.getId()) + ")");
                }
            } catch (Throwable th) {
                log("setWindowAlpha 异常: " + th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: applyScale, reason: merged with bridge method [inline-methods] */
    public void lambda$hookStatusBarView$6() {
        View view = sStatusBarView;
        if (view == null) {
            log("applyScale: 状态栏视图尚未获取");
            return;
        }
        try {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (sSbDp < 0) {
                if (sScaled) {
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                    pushLp(view, layoutParams);
                    view.setScaleX(1.0f);
                    view.setScaleY(1.0f);
                    sScaleFactor = 1.0f;
                    view.requestLayout();
                    sScaled = false;
                    log("状态栏内容缩放已恢复原始");
                    return;
                }
                return;
            }
            int origStatusBarPx = origStatusBarPx();
            if (origStatusBarPx <= 0) {
                log("原始状态栏高度未知，跳过");
                return;
            }
            if (sSbDp == 0) {
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                sScaleFactor = 1.0f;
                sScaled = false;
                applySbWindowZero();
                return;
            }
            int dpToPx = dpToPx(sSbDp);
            layoutParams.width = -1;
            layoutParams.height = origStatusBarPx;
            view.setLayoutParams(layoutParams);
            view.setPivotX(0.0f);
            view.setPivotY(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            sScaleFactor = 1.0f;
            sScaled = true;
            refreshContentAlpha();
            log("状态栏内容 原高=" + origStatusBarPx + "px 目标=" + dpToPx + "px" + (dpToPx < origStatusBarPx ? " -> 隐藏内容（下拉恢复）" : " -> 正常显示"));
        } catch (Throwable th) {
            log("applyScale 异常: " + th);
        }
    }

    private void initSettings(Object obj) {
        Context context = null;
        if (sInitDone) {
            return;
        }
        synchronized (MainHook.class) {
            if (sInitDone) {
                return;
            }
            try {
                context = (Context) get(obj, "mContext");
            } catch (Throwable th) {
                log("initSettings 异常: " + th);
            }
            if (context == null) {
                return;
            }
            sInitDone = true;
            sAppContext = context;
            reload(context);
            registerReceiver(context);
            log("初始化完成 sbDp=" + sSbDp + " dotsDp=" + sDotsDp + " pullDp=" + sPullDp + " appTopDp=" + sAppTopDp);
        }
    }

    private void registerReceiver(Context context) {
        if (sReceiverDone) {
            return;
        }
        sReceiverDone = true;
        try {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.abel.statussize.MainHook.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    if (MainHook.ACTION_SET.equals(intent.getAction())) {
                        int intExtra = intent.getIntExtra("sbDp", MainHook.sSbDp);
                        int intExtra2 = intent.getIntExtra("hdrDp", MainHook.sHeaderDp);
                        int intExtra3 = intent.getIntExtra("dotsDp", MainHook.sDotsDp);
                        int pullExtra = intent.getIntExtra("pullDp", MainHook.sPullDp);
                        int ratioExtra = intent.getIntExtra("ratio", MainHook.sSbRatio);
                        try {
                            Settings.Global.putInt(context2.getContentResolver(), MainHook.KEY_SB, intExtra);
                            Settings.Global.putInt(context2.getContentResolver(), MainHook.KEY_HDR, intExtra2);
                            Settings.Global.putInt(context2.getContentResolver(), MainHook.KEY_DOTS, intExtra3);
                            Settings.Global.putInt(context2.getContentResolver(), MainHook.KEY_PULL, pullExtra);
                            Settings.Global.putInt(context2.getContentResolver(), MainHook.KEY_RATIO, ratioExtra);
                            Settings.Global.putInt(context2.getContentResolver(), MainHook.KEY_APPTOP, intent.getIntExtra("appTopDp", MainHook.sAppTopDp));
                            MainHook.log("写入设置 sb=" + intExtra + " hdr=" + intExtra2);
                        } catch (Throwable th) {
                            MainHook.log("写设置失败: " + th);
                        }
                    }
                    MainHook.this.reload(context2);
                    MainHook.this.refreshAll(context2);
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(ACTION);
            intentFilter.addAction(ACTION_SET);
            context.registerReceiver(broadcastReceiver, intentFilter, 2);
            log("广播接收器已注册 com.dsh.statussize.RELOAD");
        } catch (Throwable th) {
            log("注册广播失败: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reload(Context context) {
        try {
            sSbDp = Settings.Global.getInt(context.getContentResolver(), KEY_SB, 0);
            sHeaderDp = Settings.Global.getInt(context.getContentResolver(), KEY_HDR, 0);
            sDotsDp = Settings.Global.getInt(context.getContentResolver(), KEY_DOTS, 0);
            sPullDp = Settings.Global.getInt(context.getContentResolver(), KEY_PULL, 12);
            sSbRatio = Settings.Global.getInt(context.getContentResolver(), KEY_RATIO, 100);
            sAppTopDp = Settings.Global.getInt(context.getContentResolver(), KEY_APPTOP, -1);
        } catch (Throwable th) {
            log("读取设置失败: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAll(Context context) {
        Method findMethod;
        if (sHeaderDp > 0) {
            Iterator it = new ArrayList(sHeaders).iterator();
            while (it.hasNext()) {
                applyHeader((View) it.next(), sHeaderDp);
            }
        } else if (sHeaderDp <= 0) {
            Iterator it2 = new ArrayList(sHeaders).iterator();
            while (it2.hasNext()) {
                restoreHeader((View) it2.next());
            }
        }
        Iterator it3 = new ArrayList(sDotsViews).iterator();
        while (it3.hasNext()) {
            View view = (View) it3.next();
            if (sDotsDp > 0) {
                applyDots(view, sDotsDp);
            } else {
                restoreDots(view);
            }
        }
        Iterator it4 = new ArrayList(sControllers).iterator();
        while (it4.hasNext()) {
            Object next = it4.next();
            try {
                Method findMethod2 = findMethod(next.getClass(), "refreshStatusBarHeight", new Class[0]);
                if (findMethod2 != null) {
                    findMethod2.setAccessible(true);
                    findMethod2.invoke(next, new Object[0]);
                }
                Object obj = get(next, "mCurrentState");
                if (obj != null && (findMethod = findMethod(next.getClass(), "apply", obj.getClass())) != null) {
                    findMethod.setAccessible(true);
                    findMethod.invoke(next, obj);
                }
            } catch (Throwable th) {
                log("刷新状态栏失败: " + th);
            }
        }
        log("已刷新 sbDp=" + sSbDp + " headerDp=" + sHeaderDp + " dotsDp=" + sDotsDp + " 已见顶部条=" + sHeaderSeen);
        scanAttachedViews();
    }

    private void scanAttachedViews() {
        Object[] array;
        try {
            Class<?> cls = Class.forName("android.view.WindowManagerGlobal");
            Method declaredMethod = cls.getDeclaredMethod("getInstance", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (invoke == null) {
                return;
            }
            Field declaredField = cls.getDeclaredField("mViews");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(invoke);
            if (obj instanceof List) {
                List list = (List) obj;
                synchronized (list) {
                    array = list.toArray();
                }
                int i = 0;
                for (Object obj2 : array) {
                    if (obj2 instanceof View) {
                        i += walk((View) obj2, 0);
                    }
                }
                log("扫描视图树完成，命中 " + i + " 个顶部条");
            }
        } catch (Throwable th) {
            log("扫描视图树失败: " + th);
        }
    }

    private int walk(View view, int i) {
        if (view == null || i > 48) {
            return 0;
        }
        if (isHeader(view)) {
            if (sHeaderDp > 0) {
                applyHeader(view, sHeaderDp);
            } else {
                restoreHeader(view);
            }
            return 1;
        }
        if (isDots(view)) {
            if (sDotsDp > 0) {
                applyDots(view, sDotsDp);
            } else {
                restoreDots(view);
            }
            return 1;
        }
        if (!(view instanceof ViewGroup)) {
            return 0;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            i2 += walk(viewGroup.getChildAt(i3), i + 1);
        }
        return i2;
    }

    private void restoreHeader(View view) {
        try {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            Integer num = sOrigHeights.get(view);
            layoutParams.height = num != null ? num.intValue() : -2;
            view.setLayoutParams(layoutParams);
        } catch (Throwable unused) {
        }
    }

    private static int dpToPx(int i) {
        return Math.round(i * Resources.getSystem().getDisplayMetrics().density);
    }

    private static Object call(Object obj, String str, Object... objArr) {
        try {
            for (Method method : obj.getClass().getMethods()) {
                if (method.getName().equals(str) && method.getParameterCount() == objArr.length) {
                    method.setAccessible(true);
                    return method.invoke(obj, objArr);
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Object get(Object obj, String str) {
        try {
            Field findField = findField(obj.getClass(), str);
            if (findField == null) {
                return null;
            }
            findField.setAccessible(true);
            return findField.get(obj);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field findField(Class<?> cls, String str) {
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            } catch (Throwable unused2) {
                return null;
            }
        }
        return null;
    }

    private static Method findMethod(Class<?> cls, String str, Class<?>... clsArr) {
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            } catch (Throwable unused2) {
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void log(String str) {
        Log.i(TAG, str);
    }

    private static void probeUi(String str) {
        try {
            java.io.FileOutputStream f = new java.io.FileOutputStream("/data/user_de/0/com.android.systemui/ss_ui.log", true);
            f.write((str + "\n").getBytes());
            f.close();
        } catch (Throwable ignored) {
        }
    }

    private static void probe(String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream("/data/system/ss_probe.log", true);
            fileOutputStream.write((str + "\n").getBytes());
            fileOutputStream.close();
        } catch (Throwable unused) {
        }
    }

    private static volatile View sDot;
    private static volatile DotView sDotView;
    private static boolean sBarReceiverDone = false;

    private static boolean isNight() {
        return sAppContext != null && (sAppContext.getResources().getConfiguration().uiMode & android.content.res.Configuration.UI_MODE_NIGHT_MASK) == android.content.res.Configuration.UI_MODE_NIGHT_YES;
    }

    private static int nightBackgroundColor() {
        return isNight() ? 0xB31A1A1C : 0xB3F4F4F8;
    }

    private static int[] glassGradient() {
        if (isNight()) {
            return new int[]{0xD12E2E33, 0xB81E1E22, 0xA8161618};
        }
        return new int[]{0xD9FFFFFF, 0xC2F2F2F7, 0xA8E8E8EF};
    }

    private static int nightTextColor() {
        return isNight() ? 0xFFFFFFFF : 0xFF15151A;
    }

    private static int nightStrokeColor() {
        return isNight() ? 0x2EFFFFFF : 0x1A000000;
    }

    private static void applyBarBackground(View box) {
        try {
            android.graphics.drawable.GradientDrawable gd = new android.graphics.drawable.GradientDrawable();
            gd.setShape(0);
            gd.setCornerRadius(dpToPx(22));
            gd.setOrientation(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM);
            gd.setColors(glassGradient());
            gd.setStroke(dpToPx(1), nightStrokeColor());
            box.setBackground(gd);
            box.setClipToOutline(true);
            box.setElevation(dpToPx(6));
        } catch (Throwable th) {
            log("applyBarBackground 异常: " + th);
        }
    }

    private static void watchNightMode() {
        if (sBarReceiverDone || sAppContext == null) {
            return;
        }
        sBarReceiverDone = true;
        try {
            sAppContext.registerReceiver(new android.content.BroadcastReceiver() {
                @Override
                public void onReceive(android.content.Context c, android.content.Intent i) {
                    try {
                        if (sDot != null) {
                            applyBarBackground(sDot);
                            if (sDotView != null) {
                                sDotView.invalidate();
                            }
                            log("夜间模式变化 -> 背景色 0x" + Integer.toHexString(nightBackgroundColor()));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }, new android.content.IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        } catch (Throwable th) {
            log("watchNightMode 异常: " + th);
        }
    }

    private static void ensureCutoutDot(android.view.WindowManager wm) {
        try {
            if (sDot != null || wm == null || sAppContext == null) {
                return;
            }
            android.widget.LinearLayout box = new android.widget.LinearLayout(sAppContext);
            box.setOrientation(1);
            box.setGravity(android.view.Gravity.CENTER_HORIZONTAL);
            box.setPadding(0, dpToPx(10), 0, dpToPx(10));
            applyBarBackground(box);
            android.widget.TextClock tc = new android.widget.TextClock(sAppContext);
            tc.setFormat24Hour("HH:mm");
            tc.setTextColor(nightTextColor());
            tc.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 13.0f);
            tc.setShadowLayer(3.0f, 0.0f, 1.0f, -16777216);
            box.addView(tc);
            DotView dv = new DotView(sAppContext);
            android.widget.LinearLayout.LayoutParams dlp = new android.widget.LinearLayout.LayoutParams(dpToPx(48), dpToPx(48));
            dlp.topMargin = dpToPx(4);
            box.addView(dv, dlp);
            android.view.WindowManager.LayoutParams lp = new android.view.WindowManager.LayoutParams();
            lp.type = 2038;
            lp.width = origStatusBarPx();
            lp.height = dpToPx(112);
            lp.gravity = android.view.Gravity.RIGHT | android.view.Gravity.TOP;
            lp.x = dpToPx(2);
            lp.y = origStatusBarPx() + dpToPx(4);
            lp.flags = 0x00000108;
            lp.format = -3;
            try {
                lp.alpha = 1.0f;
            } catch (Throwable unused) {
            }
            box.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v3, android.view.MotionEvent e) {
                    try {
                        log("圆环触摸 action=" + e.getAction() + " x=" + e.getX() + " y=" + e.getY());
                    } catch (Throwable unused) {
                    }
                    return false;
                }
            });
            box.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v2) {
                    log("三合一图标 -> 展开通知栏");
                    expandShade();
                }
            });
            wm.addView(box, lp);
            sDot = box;
            sDotView = dv;
            dv.refresh();
            log("已添加三合一圆环（右侧摄像头列），背景条 140px");
            watchNightMode();
            ensureTopTouchProxy(wm);
        } catch (Throwable th) {
            log("ensureCutoutDot 异常: " + th);
        }
    }

    static final class DotView extends View {
        private final android.graphics.Paint pText = new android.graphics.Paint(1);
        private String netType = "";
        private long lastRx = -1;
        private long lastTx = -1;
        private boolean netUp = false;
        private boolean netDown = false;
        private final Runnable netTick = new Runnable() {
            @Override
            public void run() {
                try {
                    refreshNet();
                } catch (Throwable unused) {
                }
            }
        };
        private final android.graphics.Paint pRing = new android.graphics.Paint(1);
        private final android.graphics.Paint pArc = new android.graphics.Paint(1);
        private final android.graphics.Paint pIcon = new android.graphics.Paint(1);
        private final android.graphics.RectF rect = new android.graphics.RectF();
        private int batt = 80;
        private boolean charging = false;
        private int wifi = 0;
        private int cell = 0;
        private final android.content.BroadcastReceiver rx = new android.content.BroadcastReceiver() {
            @Override
            public void onReceive(android.content.Context c, android.content.Intent i) {
                try {
                    int lv = i.getIntExtra("level", -1);
                    int sc = i.getIntExtra("scale", 100);
                    if (lv >= 0 && sc > 0) {
                        batt = (int) (((float) lv * 100.0f) / sc);
                    }
                    int st = i.getIntExtra("status", 0);
                    charging = st == 2 || st == 5;
                    postInvalidate();
                } catch (Throwable unused) {
                }
            }
        };

        DotView(android.content.Context c) {
            super(c);
            this.pRing.setStyle(android.graphics.Paint.Style.STROKE);
            this.pRing.setAntiAlias(true);
            this.pRing.setColor(-2013265920);
            this.pArc.setStyle(android.graphics.Paint.Style.STROKE);
            this.pArc.setAntiAlias(true);
            this.pArc.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            this.pArc.setColor(-1);
            this.pIcon.setAntiAlias(true);
            this.pIcon.setColor(-1);
            this.pIcon.setStyle(android.graphics.Paint.Style.STROKE);
            this.pIcon.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            try {
                getContext().registerReceiver(this.rx, new android.content.IntentFilter(android.content.Intent.ACTION_BATTERY_CHANGED));
            } catch (Throwable unused) {
            }
        }

        private void refreshNet() {
            try {
                android.telephony.TelephonyManager tm = (android.telephony.TelephonyManager) getContext().getSystemService("phone");
                int t = tm.getDataNetworkType();
                String n = t == 20 ? "5G" : (t == 13 ? "4G" : ((t >= 9 && t <= 15) ? "3G" : (t >= 1 ? "2G" : "")));
                if (!n.equals(netType)) {
                    netType = n;
                    postInvalidate();
                }
            } catch (Throwable unused) {
            }
            try {
                long rx = android.net.TrafficStats.getTotalRxBytes();
                long tx = android.net.TrafficStats.getTotalTxBytes();
                boolean dn = this.lastRx >= 0 && rx > this.lastRx;
                boolean up = this.lastTx >= 0 && tx > this.lastTx;
                this.lastRx = rx;
                this.lastTx = tx;
                if (dn != this.netDown || up != this.netUp) {
                    this.netDown = dn;
                    this.netUp = up;
                    postInvalidate();
                }
            } catch (Throwable unused) {
            }
            postDelayed(netTick, 1500L);
        }

        void refresh() {
            try {
                postDelayed(netTick, 300L);
            } catch (Throwable unused) {
            }
            try {
                android.content.Intent i = getContext().registerReceiver(null, new android.content.IntentFilter(android.content.Intent.ACTION_BATTERY_CHANGED));
                if (i != null) {
                    int lv = i.getIntExtra("level", -1);
                    int sc = i.getIntExtra("scale", 100);
                    if (lv >= 0 && sc > 0) {
                        batt = (int) (((float) lv * 100.0f) / sc);
                    }
                    int st = i.getIntExtra("status", 0);
                    charging = st == 2 || st == 5;
                }
                android.net.wifi.WifiManager wm2 = (android.net.wifi.WifiManager) getContext().getApplicationContext().getSystemService("wifi");
                if (wm2 != null && wm2.isWifiEnabled()) {
                    int rssi = wm2.getConnectionInfo() != null ? wm2.getConnectionInfo().getRssi() : -127;
                    wifi = android.net.wifi.WifiManager.calculateSignalLevel(rssi, 4);
                }
                invalidate();
            } catch (Throwable unused) {
            }
        }

        @Override
        protected void onDraw(android.graphics.Canvas cv) {
            float w = getWidth();
            float h = getHeight();
            float cx = w / 2.0f;
            float cy = h / 2.0f;
            float stroke = w * 0.055f;
            float r = (Math.min(w, h) / 2.0f) - stroke;
            this.pRing.setStrokeWidth(stroke);
            this.pArc.setStrokeWidth(stroke);
            cv.drawCircle(cx, cy, r, this.pRing);
            this.rect.set(cx - r, cy - r, cx + r, cy + r);
            int color = batt <= 20 ? -35072 : (batt <= 50 ? -256 : -1310734);
            if (charging) {
                color = -16711936;
            }
            this.pArc.setColor(color);
            cv.drawArc(this.rect, -90.0f, (batt / 100.0f) * 360.0f, false, this.pArc);
            this.pIcon.setStrokeWidth(w * 0.045f);
            this.pText.setAlpha(255);
            this.pText.setColor(nightTextColor());
            this.pText.setTextSize(w * 0.24f);
            this.pText.setTextAlign(android.graphics.Paint.Align.CENTER);
            this.pText.setFakeBoldText(true);
            if (netType.length() > 0) {
                cv.drawText(netType, cx, cy - (h * 0.18f), this.pText);
            }
            this.pText.setTextSize(w * 0.13f);
            this.pText.setColor(this.netDown ? -16711936 : -8355712);
            cv.drawText("\u2193", cx - (w * 0.12f), cy + (h * 0.115f), this.pText);
            this.pText.setColor(this.netUp ? -16711936 : -8355712);
            cv.drawText("\u2191", cx + (w * 0.12f), cy + (h * 0.115f), this.pText);
            if (wifi > 0) {
                float base = cy + (h * 0.10f);
                float rad = w * 0.20f;
                for (int k = 1; k <= 3; k++) {
                    if (k <= wifi) {
                        this.pIcon.setAlpha(255);
                    } else {
                        this.pIcon.setAlpha(64);
                    }
                    float rr = rad * (k / 3.0f);
                    android.graphics.RectF ar = new android.graphics.RectF(cx - rr, base - rr, cx + rr, base + rr);
                    cv.drawArc(ar, 225.0f, 90.0f, false, this.pIcon);
                }
                cv.drawCircle(cx, base, w * 0.022f, this.pIcon);
            } else {
                float bw = w * 0.035f;
                float gap = w * 0.022f;
                float base = cy + (h * 0.13f);
                for (int k = 0; k < 4; k++) {
                    float bh = h * (0.055f + (k * 0.045f));
                    if (k < Math.max(1, cell)) {
                        this.pIcon.setAlpha(255);
                    } else {
                        this.pIcon.setAlpha(60);
                    }
                    float x = cx - ((bw * 4.0f) + (gap * 3.0f)) / 2.0f + (k * (bw + gap));
                    this.pIcon.setStyle(android.graphics.Paint.Style.FILL);
                    cv.drawRoundRect(x, base - bh, x + bw, base, bw * 0.4f, bw * 0.4f, this.pIcon);
                }
            }
        }

        @Override
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            refresh();
        }

        @Override
        protected void onDetachedFromWindow() {
            try {
                getContext().unregisterReceiver(this.rx);
            } catch (Throwable unused) {
            }
            super.onDetachedFromWindow();
        }
    }

}
