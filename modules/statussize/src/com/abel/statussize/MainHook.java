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
    private static volatile android.graphics.Rect sAnchorCache = null;  // 最近一次算出的有效锚点
    private static volatile String sSbGeoKey = "";
    private static volatile Object sSbLp = null;    // 状态栏窗口的 LayoutParams，用于随时刷新 insets
    private static volatile int sAppTopInit = -2;   // -2=未读；-1=跟随系统；>=0=顶部避让 dp

    /** App 进程里惰性读 dsh_sb_zero：onPackageLoaded 时 Application 还没创建，只能延后读 */
    /** onPackageLoaded 时 Application 还没建好，currentApplication() 是 null，
     *  改为挂 Application.attach —— 那一刻 Context 一定可用 */
    private void hookAppAttach(ClassLoader cl) {
        try {
            Class<?> appCls = Class.forName("android.app.Application", false, cl);
            for (final java.lang.reflect.Method m : appCls.getDeclaredMethods()) {
                if (!"attach".equals(m.getName()) || m.getParameterCount() != 1) continue;
                if (!android.content.Context.class.isAssignableFrom(m.getParameterTypes()[0])) continue;
                hook(m).intercept(new XposedInterface.Hooker() {
                    public Object intercept(XposedInterface.Chain chain) throws Throwable {
                        Object ctx = chain.getArg(0);
                        if (ctx instanceof android.content.Context) {
                            sAppCtx = (android.content.Context) ctx;
                        }
                        if (ctx instanceof android.content.Context && sAppTopInit == -2) {
                            try {
                                int v = Settings.Global.getInt(((android.content.Context) ctx).getContentResolver(), KEY_APPTOP, -1);
                                sAppTopInit = v;
                                log("App attach 读到 dsh_app_top_dp=" + v);
                            } catch (Throwable th) { log("attach 读配置失败: " + th); }
                        }
                        return chain.proceed();
                    }
                });
                log("已挂钩 Application.attach");
                return;
            }
            log("Application.attach 没找到");
        } catch (Throwable th) { log("hookAppAttach 失败: " + th); }
    }

    /** 返回当前「应用顶部避让」的 dp 值：-2=还没读到，-1=跟随系统，>=0=要留白的 dp */
    private static int appTopDpLazy() {
        // 2 秒软缓存：用户在设置页改完值，App 不重启也能跟上，同时避免每次取 dimen 都走 IPC
        long now = android.os.SystemClock.elapsedRealtime();
        if (sAppTopInit != -2 && now - sAppTopAt < 2000L) return sAppTopInit;
        sAppTopAt = now;
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            Object app = at.getMethod("currentApplication").invoke(null);
            if (app == null) return -2;
            int v = Settings.Global.getInt(((android.content.Context) app).getContentResolver(), KEY_APPTOP, -1);
            sAppTopInit = v;
            log("App 进程读到 dsh_app_top_dp=" + v);
            return v;
        } catch (Throwable th) {
            log("读 dsh_app_top_dp 失败: " + th);
            return -2;
        }
    }
    private static volatile long sAppTopAt = 0L;
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
            hookInsetVisible(classLoader);
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
                hookNotifLsn(defaultClassLoader);
                hookDecorationDot(defaultClassLoader);
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
                hookInsetVisible(defaultClassLoader2);
                log("system_server 已挂钩");
            } else {
                ClassLoader appCl = packageLoadedParam.getDefaultClassLoader();
                hookResources(appCl);
                log("App 已挂钩 Resources pkg=" + packageName);
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
                        if (dp >= 0) {
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

    /** App 进程内缓存：Application context 与最近一次算出的摄像头宽 */
    private static volatile android.content.Context sAppCtx = null;
    private static volatile int sTopCount = 0;
    private static volatile int sCapLog = 0;
    private static volatile boolean sDecorBaseHooked = false;
    private static int sNotchPxCache = -1;

    /** 摄像头物理宽度（内屏 140 / 外屏 54），按短边比例推算，避免硬编码 */
    private static int notchPxFor(int shortestSide) {
        if (sNotchPxCache > 0) {
            return sNotchPxCache;
        }
        sNotchPxCache = Math.round(shortestSide * 0.0981f);
        return sNotchPxCache;
    }

    /** 当前是否横屏，以及摄像头贴左/贴右（返回 -1 左，1 右，0 不处理） */
    private static int cutoutSideInApp() {
        try {
            android.content.Context c = sAppCtx;
            if (c == null) {
                // Application.attach 可能晚于第一次 setView，这里直接问 ActivityThread 要
                try {
                    Class<?> at = Class.forName("android.app.ActivityThread");
                    Object app = at.getMethod("currentApplication").invoke(null);
                    if (app instanceof android.content.Context) {
                        c = (android.content.Context) app;
                        sAppCtx = c;
                    }
                } catch (Throwable ignored) {
                }
            }
            if (c == null) {
                return 0;
            }
            android.view.WindowManager wm = (android.view.WindowManager)
                    c.getSystemService(android.content.Context.WINDOW_SERVICE);
            if (wm == null) {
                return 0;
            }
            android.view.Display d = wm.getDefaultDisplay();
            int rot = d.getRotation();
            android.graphics.Point pt = new android.graphics.Point();
            d.getRealSize(pt);
            int w = pt.x;   // getRealSize 已按当前方向给值
            int h = pt.y;
            if (w <= h) {
                return 0;   // 竖屏：摄像头在顶边，侧边不处理
            }
            if (rot == 3) {
                return 1;   // ROTATION_270 → 摄像头右上
            }
            if (rot == 1) {
                return -1;  // ROTATION_90 → 摄像头左下
            }
        } catch (Throwable th) {
            log("cutoutSideInApp 异常: " + th);
        }
        return 0;
    }


    /** hook ViewRootImpl.setView：所有 Activity 窗口的最后一站 */
    /**
     * 自由窗口标题栏（三点菜单所在的 DecorCaptionView）：onLayout 之后把所有子 View 垂直居中。
     * 标题栏高度由系统 dimen 决定，我们改不到它的值，就直接在布局结果上归中。
     */
    private void hookCaption(ClassLoader cl) {
        try {
            Class<?> dcv = Class.forName("com.android.internal.policy.DecorCaptionView", false, cl);
            int n = 0;
            for (final java.lang.reflect.Method m : dcv.getDeclaredMethods()) {
                if (!"onLayout".equals(m.getName())) continue;
                m.setAccessible(true);
                hook(m).setId("dcv_layout").intercept(new XposedInterface.Hooker() {
                    public Object intercept(XposedInterface.Chain chain) throws Throwable {
                        Object r = chain.proceed();
                        try {
                            Object self = chain.getThisObject();
                            if (self instanceof android.view.ViewGroup) {
                                android.view.ViewGroup vg = (android.view.ViewGroup) self;
                                int h = vg.getHeight();
                                for (int i = 0; i < vg.getChildCount(); i++) {
                                    android.view.View c = vg.getChildAt(i);
                                    if (c == null || c.getVisibility() != android.view.View.VISIBLE) continue;
                                    int ch = c.getHeight();
                                    if (ch <= 0 || ch >= h) continue;
                                    int top = (h - ch) / 2;
                                    int d = top - c.getTop();
                                    if (d != 0) c.offsetTopAndBottom(d);
                                }
                            }
                        } catch (Throwable ignored) {
                        }
                        return r;
                    }
                });
                n++;
            }
            log("hookCaption onLayout 挂钩数=" + n);
        } catch (Throwable th) {
            log("hookCaption 跳过: " + th);
        }
    }

    private void hookResources(ClassLoader classLoader) {
        try {
            hookAppAttach(classLoader);
            hookCaption(classLoader);
            resolveDims();
            hookDimMethod("getDimensionPixelSize");
            hookDimMethod("getDimensionPixelOffset");
            hookDimMethod("getDimension");
        } catch (Throwable th) {
            log("hookResources 异常: " + th);
        }
    }

    /** 捕获 SystemUI 的 NotificationListener 实例（它继承 NotificationListenerService，
     *  只有它调 getActiveNotifications() 才能拿到全部应用的通知）。 */
    private void hookNotifLsn(ClassLoader classLoader) {
        try {
            Class<?> c = null;
            for (String cn : new String[]{
                    "com.android.systemui.statusbar.notification.MiuiNotificationListener",
                    "com.android.systemui.statusbar.NotificationListener"}) {
                try {
                    c = Class.forName(cn, false, classLoader);
                    log("NotificationListener 类 = " + cn);
                    break;
                } catch (Throwable ignored) {
                }
            }
            if (c == null) {
                log("NotificationListener 类未找到");
                return;
            }
            int n = 0;
            for (java.lang.reflect.Method m : c.getDeclaredMethods()) {
                if (m.getName().startsWith("on") || m.getName().equals("getActiveNotifications")) {
                    try {
                        m.setAccessible(true);
                        hook(m).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE)
                               .setId("notif_lsn_" + m.getName())
                               .intercept(new XposedInterface.Hooker() {
                                   @Override
                                   public Object intercept(XposedInterface.Chain chain) throws Throwable {
                                       if (MainHook.sNotifListener == null) {
                                           MainHook.sNotifListener = chain.getThisObject();
                                           log("NotificationListener 实例已捕获 via " + m.getName());
                                       }
                                       return chain.proceed();
                                   }
                               });
                        n++;
                    } catch (Throwable ignored) {
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            for (java.lang.reflect.Method mm : c.getDeclaredMethods()) {
                sb.append(mm.getName()).append('/').append(mm.getParameterCount()).append(' ');
            }
            log("NotificationListener 方法: " + sb);
            log("已挂钩 NotificationListener 方法数=" + n);
            try {
                Class<?> appCls = Class.forName("com.android.systemui.SystemUIApplication", false, classLoader);
                Object app = call(appCls, "get", new Object[0]);
                if (app != null) {
                    Object arr2 = call(app, "getComponents", new Class[]{Class.class}, new Object[]{c});
                    if (arr2 instanceof Object[] && ((Object[]) arr2).length > 0) {
                        MainHook.sNotifListener = ((Object[]) arr2)[0];
                        log("NotificationListener 通过 getComponents 捕获");
                    }
                }
            } catch (Throwable th) {
                log("getComponents 失败: " + th);
            }
        } catch (Throwable th) {
            log("hookNotifLsn 异常: " + th);
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
            if (call instanceof Integer) {
                int tp = ((Integer) call).intValue();
                if ((tp & WindowInsets.Type.displayCutout()) != 0) {
                    return chain.proceed(new Object[]{new Rect(0, 0, 0, 0)});
                }
                if ((tp & WindowInsets.Type.statusBars()) != 0 && chain.getArgs().size() > 0) {
                    Object a0 = chain.getArgs().get(0);
                    if (a0 instanceof Rect) {
                        Rect r = new Rect((Rect) a0);
                        int top = sAppTopDp < 0 ? (r.bottom - r.top) : dpToPx(sAppTopDp);
                        r.bottom = r.top + top;
                        return chain.proceed(new Object[]{r});
                    }
                }
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
            int topDp = appTopDpLazy();
            if (sSbarDims.contains(Integer.valueOf(id)) && topDp >= 0) {
                int topPx = dpToPx(topDp);
                if (sDimLog < 20) {
                    sDimLog++;
                    log("状态栏 dimen 改为 " + topPx + "px (appTop=" + topDp + "dp) id=0x" + Integer.toHexString(id));
                }
                if ("getDimension".equals(str)) return Float.valueOf(topPx);
                return Integer.valueOf(topPx);
            }
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
                String[] strArr = {"status_bar_height", "status_bar_height_portrait", "status_bar_height_landscape", "status_bar_height_default", "status_bar_simple_height", "decor_caption_height", "freeform_caption_height", "freeform_caption_height_landscape", "decor_caption_height_landscape"};
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
                for (Object obj4 : (Object[]) obj3) {
                    if (obj4 != null) {
                        applySideInsets(obj4);
                    }
                }
                log("应用侧边避让 -> 右 " + origStatusBarPx() + "px");
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

    private static volatile boolean sInsetsApplied = false;
    private static volatile boolean sLastHide = false;

    private static void refreshStatusBarTranslation() {
        if (sDotLp == null) {
            try {
                android.view.WindowManager dwm0 = (android.view.WindowManager)
                        sAppContext.getSystemService(android.content.Context.WINDOW_SERVICE);
                if (dwm0 != null) {
                    ensureCutoutDot(dwm0);
                }
            } catch (Throwable th) {
                log("ensureDot 异常: " + th);
            }
        }

        for (Object c : new java.util.ArrayList(sControllers)) {
            try {
                Object v = get(c, "mStatusBarWindowView");
                Object lpObj = get(c, "mLp");
                Object wmObj = get(c, "mWindowManager");
                if (v instanceof View) {
                    boolean hide = sSbDp == 0;
                    sHideSbContent = hide;
                    // 三点背景条高度 / 内容可见性必须跟着配置走，放在主循环里才能持续生效
                    hideSbContent((View) v);
                    ((View) v).setTranslationY(0.0f);
                    ((View) v).setAlpha(1.0f);
                    if (lpObj instanceof android.view.WindowManager.LayoutParams && wmObj instanceof android.view.WindowManager) {
                        android.view.WindowManager.LayoutParams lp = (android.view.WindowManager.LayoutParams) lpObj;
                        lp.alpha = hide ? 0.001f : 1.0f;
                        if (!sInsetsApplied) {
                            clearInsets(lp);
                            sInsetsApplied = true;
                        }
                        applySideGeometry(lp);
                        Object pr = get(lp, "paramsForRotation");
                        if (pr instanceof Object[]) {
                            for (Object ro : (Object[]) pr) {
                                if (ro instanceof android.view.WindowManager.LayoutParams) {
                                    applySideGeometry((android.view.WindowManager.LayoutParams) ro);
                                }
                            }
                        }
                        try {
                            ((android.view.WindowManager) wmObj).updateViewLayout((View) v, lp);
                        } catch (Throwable unused) {
                        }
                    }
                    if (sLastHide != hide) {
                        sLastHide = hide;
                        log("状态栏可见性 alpha=" + (hide ? "0（隐藏，触摸保留）" : "1（显示）"));
                    }
                    syncDockPosition();
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
            // 0x118 = LAYOUT_IN_SCREEN | NOT_FOCUSABLE | NOT_TOUCHABLE
            // 加 NOT_TOUCHABLE：窗口虽透明但仍会吃掉顶部区域的点击（分屏/小窗三点菜单点不到就是这个原因）
            lp.flags = 0x00000118;
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
                                    ((android.view.WindowManager.LayoutParams) p).alpha = sHideSbContent ? 0.001f : 1.0f;
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

    private void hookDecorationDot(ClassLoader cl) {
        try {
            Class<?> dot = Class.forName("com.android.wm.shell.multitasking.miuimultiwinswitch.miuiwindowdecor.decoration.MiuiDecorationDot", false, cl);
            int n = 0;
            for (final java.lang.reflect.Method m : dot.getDeclaredMethods()) {
                if (!"addWindow".equals(m.getName())) {
                    continue;
                }
                m.setAccessible(true);
                final int pc = m.getParameterCount();
                hook(m).setId("decor_addwin").intercept(new XposedInterface.Hooker() {
                    public Object intercept(XposedInterface.Chain chain) throws Throwable {
                        try {
                            int dotsDp0 = sDotsDp;
                            if (pc >= 3 && dotsDp0 > 0) {
                                int targetY0 = dpToPx(dotsDp0) / 2;
                                Object[] arr = chain.getArgs().toArray();
                                Object oldY = arr[2];
                                arr[2] = Integer.valueOf(targetY0);
                                if (sDimLog < 200) {
                                    sDimLog++;
                                    log("addWindow 改 y: " + oldY + " -> " + targetY0 + " (dots=" + dotsDp0 + "dp)");
                                }
                                return chain.proceed(arr);
                            }
                        } catch (Throwable th) {
                            log("addWindow 改 y 异常: " + th);
                        }
                        return chain.proceed();
                    }
                });
                n++;
            }
            log("MiuiDecorationDot.addWindow 挂钩数=" + n);
            try {
                log("已取到 mDotY 字段");
            } catch (Throwable th) {
                log("取 mDotY 失败: " + th);
            }
            int ny = 0;
            for (final java.lang.reflect.Method m3 : dot.getDeclaredMethods()) {
                String mn3 = m3.getName();
                boolean isCapGeo = "updateCaptionGeometry".equals(mn3);
                if (!isCapGeo && !"updateRootView".equals(mn3) && !"updateViewHierarchy".equals(mn3)) {
                    continue;
                }
                m3.setAccessible(true);
                hook(m3).setId("dot_y_" + mn3).intercept(new XposedInterface.Hooker() {
                    public Object intercept(XposedInterface.Chain chain) throws Throwable {
                        Object r = chain.proceed();
                        if (isCapGeo) {
                            Object arg0 = chain.getArg(0);
                            if (arg0 != null) {
                                try {
                                    rewriteRelayout(arg0);
                                } catch (Throwable th) {
                                    log("改写失败: " + th);
                                }
                            }
                        }
                        try {
                            if (isCapGeo && r != null && sDotsDp > 0) {
                                int tgt = dpToPx(sDotsDp) / 2;
                                java.lang.reflect.Field fCapH = r.getClass().getDeclaredField("mCaptionHeight");
                                fCapH.setAccessible(true);
                                float capH = fCapH.getFloat(r);
                                java.lang.reflect.Field fOff = r.getClass().getDeclaredField("mCaptionOffsetY");
                                fOff.setAccessible(true);
                                java.lang.reflect.Field fCapY = r.getClass().getDeclaredField("mCaptionY");
                                fCapY.setAccessible(true);
                                int oy0 = fCapY.getInt(r);
                                int nOff = Math.round(2 * tgt - capH);
                                fOff.setInt(r, nOff);
                                fCapY.setInt(r, tgt);
                                if (sCapLog < 60) {
                                    sCapLog++;
                                    log("TopCaption 改写: capH=" + capH + " capY " + oy0 + "->" + tgt + " offsetY=" + nOff + " (dots=" + sDotsDp + "dp,target=" + tgt + ")");
                                }
                            }
                        } catch (Throwable thc) {
                            if (sCapLog < 60) {
                                sCapLog++;
                                log("TopCaption 改写异常: " + thc);
                            }
                        }

                        return r;
                    }
                });
                ny++;
            }
            log("MiuiDecorationDot 位置方法挂钩数=" + ny);
            try {
                Class<?> infoCls = Class.forName("com.android.wm.shell.multitasking.miuimultiwinswitch.miuiwindowdecor.decoration.MiuiDecorationInfo", false, cl);
                for (java.lang.reflect.Field fi : infoCls.getDeclaredFields()) {
                    log("INFO F: " + fi.getType().getSimpleName() + " " + fi.getName());
                }
                for (java.lang.reflect.Method mi : infoCls.getDeclaredMethods()) {
                    log("INFO M: " + mi.getName() + "/" + mi.getParameterCount());
                }
            } catch (Throwable th) {
                log("MiuiDecorationInfo 探查异常: " + th);
            }
            try {
                for (final java.lang.reflect.Method mg : dot.getDeclaredMethods()) {
                    if (!"updateCaptionGeometry_TopCaption".equals(mg.getName())) {
                        continue;
                    }
                    mg.setAccessible(true);
                    final int pgc = mg.getParameterCount();
                    hook(mg).setId("dot_capgeo2").intercept(new XposedInterface.Hooker() {
                        public Object intercept(XposedInterface.Chain chain) throws Throwable {
                            Object r = chain.proceed();
                            try {
                                int dotsDp2 = sDotsDp;
                                if (dotsDp2 > 0 && r != null) {
                                    int target2 = dpToPx(dotsDp2) / 2;
                                    java.lang.reflect.Field fCapH = r.getClass().getDeclaredField("mCaptionHeight");
                                    fCapH.setAccessible(true);
                                    float capH = fCapH.getFloat(r);
                                    java.lang.reflect.Field fOff = r.getClass().getDeclaredField("mCaptionOffsetY");
                                    fOff.setAccessible(true);
                                    java.lang.reflect.Field fCapY = r.getClass().getDeclaredField("mCaptionY");
                                    fCapY.setAccessible(true);
                                    int oldY = fCapY.getInt(r);
                                    int newOff = Math.round(2 * target2 - capH);
                                    fOff.setInt(r, newOff);
                                    fCapY.setInt(r, target2);
                                    if (sDimLog < 200) {
                                        sDimLog++;
                                        log("TopCaption 定位改写: capH=" + capH + " oldCapY=" + oldY + " -> offsetY=" + newOff + " capY=" + target2 + " (dots=" + dotsDp2 + "dp)");
                                    }
                                }
                            } catch (Throwable th) {
                                if (sDimLog < 200) {
                                    sDimLog++;
                                    log("TopCaption 改写异常: " + th);
                                }
                            }
                            return r;
                        }
                    });
                    log("updateCaptionGeometry_TopCaption 定位改写已挂钩 pc=" + pgc);
                }
            } catch (Throwable thg) {
                log("TopCaption 改写挂钩异常: " + thg);
            }
            try {
                Class<?> infoCls2 = Class.forName("com.android.wm.shell.multitasking.miuimultiwinswitch.miuiwindowdecor.decoration.MiuiDecorationInfo", false, cl);
                for (final java.lang.reflect.Method mo : infoCls2.getDeclaredMethods()) {
                    String mno = mo.getName();
                    if ("getCaptionOffsetY".equals(mno) || "getTopCaptionHeightWithPadding".equals(mno) || "getTopCaptionHeight".equals(mno)) {
                        mo.setAccessible(true);
                        final String mname = mno;
                        hook(mo).setId("info_" + mno).intercept(new XposedInterface.Hooker() {
                            public Object intercept(XposedInterface.Chain chain) throws Throwable {
                                Object r = chain.proceed();
                                try {
                                    if (sDimLog < 200 && "getCaptionOffsetY".equals(mname)) {
                                        sDimLog++;
                                        log("Info." + mname + " = " + r + " dots=" + sDotsDp);
                                    }
                                } catch (Throwable th) {
                                }
                                return r;
                            }
                        });
                        log("已挂钩 Info." + mno);
                    }
                }
            } catch (Throwable th2) {
                log("Info 方法挂钩异常: " + th2);
            }
            for (final java.lang.reflect.Method m2 : dot.getDeclaredMethods()) {
            }
            for (final java.lang.reflect.Field f2 : dot.getDeclaredFields()) {
            }
        } catch (Throwable th) {
            log("hookDecorationDot 异常: " + th);
        }
    }

    private void hookDecorHierarchy(ClassLoader cl) {
        try {
            Class<?> dotCls2 = Class.forName("com.android.wm.shell.multitasking.miuimultiwinswitch.miuiwindowdecor.decoration.MiuiDecorationDot", false, cl);
            for (Class<?> c = dotCls2; c != null && c != Object.class; c = c.getSuperclass()) {
                for (final java.lang.reflect.Method m : c.getDeclaredMethods()) {
                    if (!m.getName().startsWith("updateCaptionGeometry") || m.getParameterCount() < 1) {
                        continue;
                    }
                    try {
                        m.setAccessible(true);
                        final String fname = m.getName();
                        hook(m).setId("base_" + c.getSimpleName() + "_" + fname).intercept(new XposedInterface.Hooker() {
                            public Object intercept(XposedInterface.Chain chain) throws Throwable {
                                Object out = chain.proceed();
                                Object arg0 = chain.getArg(0);
                                if (arg0 != null) {
                                    try {
                                        rewriteRelayout(arg0);
                                    } catch (Throwable th) {
                                        log("改写失败(" + fname + "): " + th);
                                    }
                                }
                                return out;
                            }
                        });
                    } catch (Throwable th) {
                    }
                }
            }
            sDecorBaseHooked = true;
        } catch (Throwable th) {
            log("hookDecorHierarchy 异常: " + th);
        }
    }

    private static void rewriteRelayout(Object r) throws Throwable {
        int tgt = dpToPx(sDotsDp) / 2;
        java.lang.reflect.Field fCapH = r.getClass().getDeclaredField("mCaptionHeight");
        fCapH.setAccessible(true);
        float capH = fCapH.getFloat(r);
        java.lang.reflect.Field fOff = r.getClass().getDeclaredField("mCaptionOffsetY");
        fOff.setAccessible(true);
        java.lang.reflect.Field fCapY = r.getClass().getDeclaredField("mCaptionY");
        fCapY.setAccessible(true);
        int oy0 = fCapY.getInt(r);
        int nOff = Math.round(2 * tgt - capH);
        fOff.setInt(r, nOff);
        fCapY.setInt(r, tgt);
        if (oy0 != tgt) {
            log("Relayout 改写: capH=" + capH + " capY " + oy0 + "->" + tgt + " offsetY=" + nOff + " (dots=" + sDotsDp + "dp)");
        }
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
                sStatusBarView.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                    }
                }, 2500L);
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

    /**
     * 应用顶部避让高度（px）。状态栏 InsetsSource 的 frame 直接来自本窗口高度，
     * 所以必须改 lp.height 才能真正改变下发给应用的 statusBars inset。
     */
    private static int appInsetPx() {
        if (sAppTopDp < 0) {
            return origStatusBarPx();
        }
        return dpToPx(sAppTopDp);
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
            boolean hide = sSbDp < 0;
            for (int id : new int[]{ID_CLOCK_AREA, ID_SYS_ICONS, ID_STATUS_ICONS}) {
                View v = root.findViewById(id);
                if (v == null) {
                    continue;
                }
                v.setVisibility(hide ? View.INVISIBLE : View.VISIBLE);
            }
            View dots = root.findViewById(0x7f0b086b);
            if (dots != null) {
                // 三点背景条高度：优先跟随「三点高度」配置；未配置时才退回原状态栏高度
                int h = sDotsDp > 0 ? dpToPx(sDotsDp)
                        : (hide ? Math.round(origStatusBarPx() * 0.4f) : origStatusBarPx());
                android.view.ViewGroup.LayoutParams lp = dots.getLayoutParams();
                if (lp != null && lp.height != h) {
                    lp.height = h;
                    dots.setLayoutParams(lp);
                    dots.requestLayout();
                }
                // 让条内的菜单在条的垂直中线（用户要的是 条高/2 处）
                if (dots instanceof android.view.ViewGroup) {
                    android.view.ViewGroup vg = (android.view.ViewGroup) dots;
                    for (int ci = 0; ci < vg.getChildCount(); ci++) {
                        android.view.View cv = vg.getChildAt(ci);
                        if (cv == null) continue;
                        android.view.ViewGroup.LayoutParams clp = cv.getLayoutParams();
                        if (clp instanceof android.widget.FrameLayout.LayoutParams) {
                            ((android.widget.FrameLayout.LayoutParams) clp).gravity = android.view.Gravity.CENTER_VERTICAL;
                            cv.setLayoutParams(clp);
                        } else if (clp instanceof android.widget.LinearLayout.LayoutParams) {
                            ((android.widget.LinearLayout.LayoutParams) clp).gravity = android.view.Gravity.CENTER_VERTICAL;
                            cv.setLayoutParams(clp);
                        }
                    }
                }
                float ty = hide ? -dpToPx(14) : 0f;
                dots.setTranslationY(ty);
                if (sDotsApplied != h) {
                    sDotsApplied = h;
                    log("三点背景条 -> " + h + "px (hide=" + hide + ")");
                }
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
            boolean hideSb = true;
            float targetA = 0.0f;
            log("applyWindowAlpha -> 侧边竖条 alpha=0");
            w.alpha = targetA;
            applySideGeometry(w);
            w.flags |= 0x00000010;   // NOT_TOUCHABLE：透明状态栏不能再吃掉顶部点击
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
                    applySideGeometry(c2);
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
                            applySideGeometry(r);
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

    /** 把系统状态栏窗口摆成右侧全高竖条：宽 = 原状态栏高 140px，高 = 屏幕高，贴右。
     *  窗口位置决定 inset 来源——贴着右边全高，系统就会把 statusBars 从 top 换算成 right。 */
    /** 摄像头是否贴在屏幕左侧（横屏 ROTATION_90 时成立） */
    private static boolean cutoutOnLeft() {
        android.graphics.Rect a = anchorFromRotation();
        if (a == null) {
            return false;
        }
        return a.left <= 0 && a.right < screenWidthPx() / 2;
    }

    /** 摄像头是否贴在屏幕右侧（横屏 ROTATION_270 时成立） */
    private static boolean cutoutOnRight() {
        android.graphics.Rect a = anchorFromRotation();
        if (a == null) {
            return false;
        }
        return a.right >= screenWidthPx() && a.left > screenWidthPx() / 2;
    }

    /**
     * 状态栏窗口只作为 insets 提供者：宽度铺满、高度 = 应用顶部避让值、贴顶。
     * 这样 statusBars 下发出去的 top inset 就等于 dsh_app_top_dp，和 Resources 那条路完全一致。
     * （之前做成右侧竖条时 top inset 恒为 0，读 insets 的 App 就不会让位了。）
     */
    /**
     * 状态栏窗口的几何。inset 是 source=FRAME 模式、由窗口自身的位置和尺寸决定的，
     * setInsetsSize 盖不住它 —— 所以想让 App 在某个方向让出空间，就得把窗口本身摆成那个形状：
     *   摄像头贴左/贴右  → 竖条（宽=摄像头宽，高=整屏）
     *   摄像头贴顶        → 横条（宽=整屏，高=避让值）
     */
    private static void applySideGeometry(android.view.WindowManager.LayoutParams lp) {
        int sw = screenWidthPx();
        int sh = screenHeightPx();
        android.graphics.Rect a = dockAnchor();
        if (a == null) {
            a = sAnchorCache;
        } else {
            sAnchorCache = a;
        }
        int notch = (a == null) ? 0 : Math.min(a.width(), a.height());
        lp.gravity = android.view.Gravity.TOP | android.view.Gravity.LEFT;
        lp.y = 0;
        // 状态栏窗口永远做「顶部横条」，只负责下发 top inset。
        // 侧边避让不占用这个窗口（一个窗口只能占一条边），改由 App 进程内收窄窗口实现。
        // 窗口高度要留出「三点背景条」的空间，否则 dots 会被窗口裁在顶部；
        // 但真正下发给 App 的 top inset 仍然只取 appInsetPx()（在 applyInsetsTo 里单独设）。
        int dotsH = sDotsDp > 0 ? dpToPx(sDotsDp) : 0;
        lp.width = sw;
        lp.height = Math.max(appInsetPx(), dotsH);
        lp.x = 0;
        sSbLp = lp;
        String key = "sbgeo|" + lp.width + "x" + lp.height + "@" + lp.x + "," + lp.y + "|" + sw + "x" + sh;
        if (!key.equals(sSbGeoKey)) {
            sSbGeoKey = key;
            log("状态栏窗口 -> " + lp.width + "x" + lp.height + " @(" + lp.x + "," + lp.y + ") anchor=" + a);
        }
        applySideInsets(lp);
    }

    private static int sNotchWidthPx = 140;

    /** 强制 statusBars 的 InsetsSource 保持可见，否则 App 收不到那条侧边 inset */
    private void hookInsetVisible(ClassLoader cl) {
        try {
            Class<?> isc = Class.forName("android.view.InsetsSource", false, cl);
            int n = 0;
            for (final java.lang.reflect.Method m : isc.getDeclaredMethods()) {
                if (!"setVisible".equals(m.getName())) {
                    continue;
                }
                Class<?>[] pt = m.getParameterTypes();
                if (pt.length < 1 || pt[0] != boolean.class) {
                    continue;
                }
                try {
                    hook(m).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE)
                            .setId("inset_visible_" + n)
                            .intercept(new XposedInterface.Hooker() {
                                @Override
                                public Object intercept(XposedInterface.Chain chain) throws Throwable {
                                    try {
                                        Object t = call(chain.getThisObject(), "getType", new Object[0]);
                                        int it = t instanceof Integer ? ((Integer) t).intValue() : 0;
                                        Object v = chain.getArgs().get(0);
                                        boolean want = v instanceof Boolean && ((Boolean) v);
                                        if ((it & WindowInsets.Type.statusBars()) != 0 && !want) {
                                            Object[] a = chain.getArgs().toArray();
                                            a[0] = Boolean.TRUE;
                                            return chain.proceed(a);
                                        }
                                    } catch (Throwable th) {
                                        log("inset_visible 异常: " + th);
                                    }
                                    return chain.proceed();
                                }
                            });
                    n++;
                } catch (Throwable th) {
                    log("inset_visible 单方法失败: " + th);
                }
            }
            log("InsetsSource.setVisible 已挂钩 n=" + n);
        } catch (Throwable th) {
            log("hookInsetVisible 异常: " + th);
        }
    }

    /**
     * 把窗口向系统提供的 statusBars inset 全部清零，让 InsetsSource 完全由窗口 frame 决定
     * （窗口现在是「顶部横条、高度 = appInsetPx()」，frame 自然给出 top = 避让值）。
     * 以前这里给 statusBars 设了 right = origStatusBarPx()，那是右侧竖条时代的写法，
     * 会让 top 恒为 0，读 insets 的 App 就不让位了。
     */
    private static void applySideInsets(Object lpObj) {
        applyInsetsTo(lpObj, false);
        try {
            Object pr = get(lpObj, "paramsForRotation");
            if (pr instanceof Object[]) {
                for (Object o : (Object[]) pr) {
                    if (o != null) {
                        applyInsetsTo(o, true);
                    }
                }
            }
        } catch (Throwable th) {
            log("applySideInsets(paramsForRotation) 异常: " + th);
        }
    }

    private static void applyInsetsTo(Object lpObj, boolean fromRotation) {
        try {
            Object prov = get(lpObj, "providedInsets");
            if (!(prov instanceof Object[])) {
                if (sDimLog < 40) { sDimLog++; log("applySideInsets 跳过：providedInsets=" + prov); }
                return;
            }
            if (sDimLog < 40) { sDimLog++; log("applySideInsets 处理 provider 数=" + ((Object[]) prov).length + " appInset=" + appInsetPx()); }
            for (Object o : (Object[]) prov) {
                if (o == null) {
                    continue;
                }
                Object t = call(o, "getType", new Object[0]);
                int it = t instanceof Integer ? ((Integer) t).intValue() : 0;
                if ((it & WindowInsets.Type.statusBars()) != 0) {
                    // 与 applySideGeometry 用同一套判断，保证 insetsSize 和窗口形状一致
                    // 只下发 top inset：右键/左键避让改由 App 进程内收窄窗口负责，
                    // 状态栏窗口保持顶部横条，两者不抢同一条边。
                    int top = appInsetPx();
                    int left = 0;
                    int right = 0;
                    android.graphics.Rect a = dockAnchor();
                    if (a == null) {
                        a = sAnchorCache;
                    } else {
                        sAnchorCache = a;
                    }
                    call(o, "setInsetsSize", android.graphics.Insets.of(left, top, right, 0));
                    if (sDimLog < 100) {
                        sDimLog++;
                        log("statusBars inset" + (fromRotation ? "(rot)" : "") + " L=" + left + " T=" + top + " R=" + right + " anchor=" + a);
                    }
                } else {
                    call(o, "setInsetsSize", android.graphics.Insets.of(0, 0, 0, 0));
                }
            }
        } catch (Throwable th) {
            log("applyInsetsTo 异常: " + th);
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
                applySideGeometry(lp);
                Object arr = get(lp, "paramsForRotation");
                if (arr instanceof Object[]) {
                    for (Object o : (Object[]) arr) {
                        if (o instanceof android.view.WindowManager.LayoutParams) {
                            applySideGeometry((android.view.WindowManager.LayoutParams) o);
                        }
                    }
                }
                clearInsets(lp);
                ((View) vObj).setTranslationY(0.0f);
                boolean hideSb = true;
                sHideSbContent = hideSb;
                lp.alpha = 0.001f;
                ((android.view.WindowManager) wmObj).updateViewLayout((View) vObj, lp);
                log("状态栏 -> 顶部横条 " + screenWidthPx() + "x" + appInsetPx() + "（appTop=" + sAppTopDp + "dp），原生内容隐藏");
                ensureCutoutDot((android.view.WindowManager) wmObj);
                startExpandedPoller();
                break;
            } catch (Throwable th) {
                log("applySbWindowZero 异常: " + th);
            }
        }
    }

    /**
     * 按 dsh_app_top_dp 重设状态栏窗口向系统提供的 inset：
     *   -1 = 完全不干预（跟随系统原始 inset）
     *    0 = 全部清零（应用内容完全顶格）
     *   >0 = displayCutout 清零、statusBars 顶部留白 N dp
     */
    private static void clearInsets(android.view.WindowManager.LayoutParams lp) {
        if (sAppTopDp < 0) {
            return;
        }
        applySideInsets(lp);
    }

    private static volatile Object sNotifListener = null;
    private static volatile boolean sNotifLogState = false;

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
                ((View) vObj).setTranslationY(0.0f);
                applySideGeometry(lp);
                lp.alpha = 0.0f;
                applySideInsets(lp);
                ((android.view.WindowManager) wmObj).updateViewLayout((View) vObj, lp);
                log("恢复状态栏窗口 -> 右侧竖条");
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
            hookLightBar(context);
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
                            MainHook.sInsetsApplied = false;
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

    /**
     * Dock 底色：与系统状态栏一致 —— 系统状态栏是完全透明的，只有图标着色。
     * 这里只用极轻的一层把容器轮廓托出来，背景内容直接透上来，
     * 所以白色 App 上透白、深色 App 上透黑，配色天然跟系统同步。
     */
    private static int[] glassGradient() {
        if (sysLightStatusBar()) {
            return new int[]{0x1FFFFFFF, 0x16FFFFFF, 0x0DFFFFFF};
        }
        return new int[]{0x29000000, 0x1F000000, 0x14000000};
    }

    private static android.view.View sMyBox = null;

    private static Boolean sCachedLight = null;
    private static long sLastLightCheck = 0L;
    private static boolean sLightProbeLogged = false;

    /**
     * 前台是否使用"浅色状态栏"（深色图标、浅色背景）。
     * 状态栏窗口被我们隐藏后，系统不再刷新它的图标颜色，读 sSysClock 会拿到陈旧值，
     * 所以改从 LightBarController 取系统的判定结果（这就是系统自己用的数据源）。
     */
    private static boolean sysLightStatusBar() {
        long now = android.os.SystemClock.uptimeMillis();
        if (now - sLastLightCheck > 800L) {
            sLastLightCheck = now;
            try {
                ClassLoader cl = sAppContext != null ? sAppContext.getClassLoader() : null;
                if (cl != null) {
                    Object inst = findLightBar(cl);
                    if (inst != null) {
                        boolean ok = false;
                        Object ap = get(inst, "mAppearance");
                        if (ap instanceof Integer) {
                            // WindowInsetsController.APPEARANCE_LIGHT_STATUS_BARS = 0x8
                            sCachedLight = (((Integer) ap).intValue() & 0x8) != 0;
                            ok = true;
                        }
                        if (!ok) {
                            Object v = get(inst, "mIsLight");
                            if (!(v instanceof Boolean)) {
                                v = call(inst, "isLight", new Object[0]);
                            }
                            if (v instanceof Boolean) {
                                sCachedLight = (Boolean) v;
                                ok = true;
                            }
                        }
                        if (ok) {
                            if (!sLightProbeLogged) {
                                sLightProbeLogged = true;
                                log("LightBar 读取成功 " + inst.getClass().getSimpleName() + " appearance=" + ap + " light=" + sCachedLight);
                            }
                        } else if (!sLightProbeLogged) {
                            sLightProbeLogged = true;
                            log("LightBar 实例=" + inst.getClass().getSimpleName() + " 无可用字段");
                        }
                    } else if (!sLightProbeLogged) {
                        sLightProbeLogged = true;
                        log("LightBar 实例为空，回退系统图标颜色");
                    }
                }
            } catch (Throwable th) {
                if (!sLightProbeLogged) {
                    sLightProbeLogged = true;
                    log("LightBar 不可用: " + th);
                }
            }
        }
        if (sCachedLight != null) {
            return sCachedLight.booleanValue();
        }
        return android.graphics.Color.luminance(sysColorRaw() | 0xFF000000) < 0.5f;
    }

    private static volatile Object sLightBarInst = null;
    private static boolean sLightBarHookDone = false;

    /** 挂 LightBarControllerImpl，拿到系统"当前状态栏是否浅色"的权威判定 */
    private void hookLightBar(Context ctx) {
        if (sLightBarHookDone) {
            return;
        }
        sLightBarHookDone = true;
        try {
            ClassLoader cl = ctx.getClassLoader();
            Class<?> k = Class.forName("com.android.systemui.statusbar.phone.LightBarControllerImpl", false, cl);
            int n = 0;
            for (java.lang.reflect.Method m : k.getDeclaredMethods()) {
                String nm = m.getName();
                if (!"start".equals(nm) && !"updateStatus".equals(nm) && !"reevaluate".equals(nm)) {
                    continue;
                }
                try {
                    hook(m).setExceptionMode(XposedInterface.ExceptionMode.PROTECTIVE).setId("lightbar_" + nm).intercept(new XposedInterface.Hooker() {
                        public Object intercept(XposedInterface.Chain chain) throws Throwable {
                            sLightBarInst = chain.getThisObject();
                            return chain.proceed();
                        }
                    });
                    n++;
                } catch (Throwable ignore) {
                }
            }
            log("LightBar hook 挂载 " + n + " 个方法");
        } catch (Throwable th) {
            log("LightBar hook 失败: " + th);
        }
    }

    private static Object findLightBar(ClassLoader cl) {
        if (sLightBarInst != null) {
            return sLightBarInst;
        }
        String[] cands = new String[]{
            "com.android.systemui.statusbar.phone.LightBarControllerImpl",
            "com.android.systemui.statusbar.phone.LightBarController",
            "com.android.systemui.statusbar.data.repository.LightBarControllerStoreImpl"
        };
        for (String cn : cands) {
            Class<?> k;
            try {
                k = Class.forName(cn, false, cl);
            } catch (Throwable ignore) {
                continue;
            }
            try {
                Class<?> dep = Class.forName("com.android.systemui.Dependency", false, cl);
                Object o = dep.getMethod("get", Class.class).invoke(null, k);
                if (o != null) {
                    return o;
                }
            } catch (Throwable ignore) {
            }
            try {
                java.lang.reflect.Field f = k.getDeclaredField("INSTANCE");
                f.setAccessible(true);
                Object o = f.get(null);
                if (o != null) {
                    return o;
                }
            } catch (Throwable ignore) {
            }
        }
        return null;
    }

    private static int sysColorRaw() {
        try {
            if (sSysClock != null) {
                return sSysClock.getCurrentTextColor();
            }
        } catch (Throwable unused) {
        }
        return nightTextColor();
    }

    /** 系统状态栏当前图标颜色：色调跟随浅色/深色判定，alpha 沿用系统值 */
    private static int sysColor() {
        int a = (sysColorRaw() >>> 24) & 0xFF;
        if (a == 0) {
            a = 0xBF;
        }
        return sysLightStatusBar() ? (a << 24) : ((a << 24) | 0xFFFFFF);
    }

    /** 系统状态栏是否处于「浅色背景」模式（图标为深色） */


    /** 当前这块屏的挖孔底边（横屏时摄像头在右侧顶部，底边即 Dock 起始安全线） */
    private static int dockCutoutBottom() {
        try {
            android.view.WindowInsets wi = sStatusBarView != null ? sStatusBarView.getRootWindowInsets() : null;
            if (wi != null) {
                android.view.DisplayCutout dc = wi.getDisplayCutout();
                if (dc != null) {
                    int bottom = 0;
                    for (android.graphics.Rect r : dc.getBoundingRects()) {
                        if (r.bottom > bottom) {
                            bottom = r.bottom;
                        }
                    }
                    if (bottom > 0) {
                        return bottom;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return origStatusBarPx();
    }

    private static int nightTextColor() {
        return isNight() ? 0xFFFFFFFF : 0xFF15151A;
    }

    private static int nightStrokeColor() {
        return sysLightStatusBar() ? 0x33000000 : 0x3DFFFFFF;
    }

    private static void applyBarBackground(View box) {
        if (box != null) {
            box.setBackground(null);
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

    private static android.view.WindowManager sDotWm = null;
    private static android.view.WindowManager.LayoutParams sDotLp = null;
    private static String sDockKey = "";

    /**
     * 内屏的完整窗口矩形。取的是 SystemUI 自身 context 绑定的显示器（默认屏 = 内屏），
     * 不再用 sStatusBarView —— 内外屏各有自己的一棵状态栏，切换时那个引用会漂到另一块屏，
     * Dock 就是因此跳到外屏坐标系里错位的。
     */
    /**
     * 内屏（Display.DEFAULT_DISPLAY）的当前窗口尺寸。
     * 必须用 getRealSize + rotation 自己换向：SystemUI 的 context 绑的可能是外屏，
     * 直接拿 WindowManager.getCurrentWindowMetrics() 会得到 1168x1712（外屏），
     * 于是摄像头比例全算错、Dock 跑到屏幕另一侧。
     */
    /**
     * 内屏（物理屏）的当前窗口尺寸。
     * 用 Resources 的物理 metrics 配 innerRotation() 自己换向 —— 这是最稳的一条路：
     * SystemUI 的 context 可能绑在外屏，getCurrentWindowMetrics() 会给 1168x1712；
     * Display.getRealSize() 在本机 SystemUI 里拿不到有效值。
     */
    private static android.graphics.Rect innerBounds() {
        android.util.DisplayMetrics dm = Resources.getSystem().getDisplayMetrics();
        int w = dm.widthPixels;
        int h = dm.heightPixels;
        if (sDimLog < 80) {
            sDimLog++;
            log("innerBounds = " + w + "x" + h);
        }
        return new android.graphics.Rect(0, 0, w, h);
    }

    /** 内屏当前的 Display 旋转（0/1/2/3），拿不到时回退 0 */
    private static int innerRotation() {
        try {
            if (sAppContext != null) {
                android.hardware.display.DisplayManager dmgr = (android.hardware.display.DisplayManager)
                        sAppContext.getSystemService(android.content.Context.DISPLAY_SERVICE);
                if (dmgr != null) {
                    android.view.Display d = dmgr.getDisplay(android.view.Display.DEFAULT_DISPLAY);
                    if (d != null) {
                        return d.getRotation();
                    }
                }
            }
        } catch (Throwable th) {
            log("innerRotation 异常: " + th);
        }
        return 0;
    }

    private static int screenWidthPx() {
        return innerBounds().width();
    }

    private static int screenHeightPx() {
        return innerBounds().height();
    }

    /** 当前屏最"显著"的挖孔矩形（面积最大那个） */
    private static android.graphics.Rect dockAnchor() {
        int sw = screenWidthPx();
        int sh = screenHeightPx();
        android.view.DisplayCutout dc = sLastCutout;
        if (dc == null) {
            dc = cutoutFromSystem();
        }
        if (dc == null && sStatusBarView != null) {
            try {
                android.view.WindowInsets wi = sStatusBarView.getRootWindowInsets();
                if (wi != null) {
                    dc = wi.getDisplayCutout();
                }
            } catch (Throwable th) {
                log("dockAnchor(wi) 异常: " + th);
            }
        }
        if (dc != null) {
            sLastCutout = dc;
        }
        android.graphics.Rect ra = dockAnchorFrom(dc, sw, sh);
        if (ra == null) {
            ra = anchorFromRotation();
        }
        return ra;
    }

    /** 从 SystemUI 自身的 WindowManager 取整屏 cutout：maximum metrics 不受窗口边界/挖孔模式限制 */
    /** 兜底：按「内屏挖孔在物理左上角 164x140」+ 当前 rotation 推算窗口坐标 */
    private static android.graphics.Rect anchorFromRotation() {
        try {
            int sw = screenWidthPx();
            int sh = screenHeightPx();
            int pw = Math.min(sw, sh);
            int ph = Math.max(sw, sh);
            int cw = Math.round(pw * 0.0981f);
            int chh = Math.round(ph * 0.0592f);
            int rot = 0;
            try {
                if (sMyBox != null && sMyBox.getDisplay() != null) {
                    rot = innerRotation();
                }
            } catch (Throwable th) {
                log("getRotation 异常: " + th);
            }
            android.graphics.Rect r;
            if (rot == 1) {
                r = new android.graphics.Rect(0, pw - cw, chh, pw);
            } else if (rot == 2) {
                r = new android.graphics.Rect(sw - cw, sh - chh, sw, sh);
            } else if (rot == 3) {
                r = new android.graphics.Rect(ph - chh, 0, ph, cw);
            } else {
                r = new android.graphics.Rect(0, 0, cw, chh);
            }
            if (sAnchorLogged != rot) {
                sAnchorLogged = rot;
                log("按旋转推算锚点 rot=" + rot + " -> " + r + " 屏=" + sw + "x" + sh);
            }
            return r;
        } catch (Throwable th) {
            log("anchorFromRotation 异常: " + th);
            return null;
        }
    }

    private static android.view.DisplayCutout cutoutFromSystem() {
        try {
            if (sAppContext == null) {
                return null;
            }
            android.view.WindowManager wm = (android.view.WindowManager)
                    sAppContext.getSystemService(android.content.Context.WINDOW_SERVICE);
            if (wm != null) {
                android.view.WindowInsets wi = wm.getMaximumWindowMetrics().getWindowInsets();
                if (wi != null && wi.getDisplayCutout() != null) {
                    return wi.getDisplayCutout();
                }
            }
            android.hardware.display.DisplayManager dm = (android.hardware.display.DisplayManager)
                    sAppContext.getSystemService(android.content.Context.DISPLAY_SERVICE);
            if (dm == null) {
                return null;
            }
            android.view.Display d = dm.getDisplay(android.view.Display.DEFAULT_DISPLAY);
            if (d == null) {
                return null;
            }
            try {
                java.lang.reflect.Method mc = android.view.Display.class.getMethod("getCutout");
                Object oc = mc.invoke(d);
                if (oc instanceof android.view.DisplayCutout) {
                    return (android.view.DisplayCutout) oc;
                }
            } catch (Throwable th) {
                log("Display.getCutout 失败: " + th);
            }
            Class<?> dic = Class.forName("android.view.DisplayInfo");
            Object di = dic.getConstructor().newInstance();
            java.lang.reflect.Method gdi = android.view.Display.class.getMethod("getDisplayInfo", dic);
            gdi.invoke(d, di);
            java.lang.reflect.Field f = dic.getField("displayCutout");
            Object o = f.get(di);
            if (!(o instanceof android.view.DisplayCutout)) {
                return null;
            }
            android.view.DisplayCutout phy = (android.view.DisplayCutout) o;
            java.lang.reflect.Field rf = dic.getField("rotation");
            int rot = ((Integer) rf.get(di)).intValue();
            android.graphics.Point ps = new android.graphics.Point();
            d.getRealSize(ps);
            return rotateCutout(phy, rot, ps.x, ps.y);
        } catch (Throwable th) {
            log("cutoutFromSystem 异常: " + th);
            return null;
        }
    }

    /** DisplayInfo 里的 cutout 是物理坐标，按当前 rotation 换算成窗口坐标 */
    private static android.view.DisplayCutout rotateCutout(android.view.DisplayCutout phy,
                                                            int rotation, int pw, int ph) {
        if (rotation == android.view.Surface.ROTATION_0) {
            return phy;
        }
        java.util.List<android.graphics.Rect> out = new java.util.ArrayList<>();
        for (android.graphics.Rect r : phy.getBoundingRects()) {
            int l = r.left;
            int t = r.top;
            int rr = r.right;
            int b = r.bottom;
            android.graphics.Rect x;
            if (rotation == android.view.Surface.ROTATION_90) {
                x = new android.graphics.Rect(t, pw - rr, b, pw - l);
            } else if (rotation == android.view.Surface.ROTATION_180) {
                x = new android.graphics.Rect(pw - rr, ph - b, pw - l, ph - t);
            } else if (rotation == android.view.Surface.ROTATION_270) {
                x = new android.graphics.Rect(ph - b, l, ph - t, rr);
            } else {
                x = new android.graphics.Rect(r);
            }
            out.add(x);
        }
        if (out.isEmpty()) {
            return null;
        }
        return new android.view.DisplayCutout(new android.graphics.Rect(phy.getSafeInsetLeft(),
                phy.getSafeInsetTop(), phy.getSafeInsetRight(), phy.getSafeInsetBottom()), out);
    }

    private static android.graphics.Rect dockAnchorFrom(android.view.DisplayCutout dc, int sw, int sh) {
        if (dc == null) {
            return null;
        }
        boolean eLeft = dc.getSafeInsetLeft() > 0;
        boolean eTop = dc.getSafeInsetTop() > 0;
        boolean eRight = dc.getSafeInsetRight() > 0;
        boolean eBottom = dc.getSafeInsetBottom() > 0;
        android.graphics.Rect best = null;
        int bestArea = 0;
        for (android.graphics.Rect r : dc.getBoundingRects()) {
            if (r == null || r.width() <= 0 || r.height() <= 0) {
                continue;
            }
            if (r.left < 0 || r.top < 0 || r.right > sw || r.bottom > sh) {
                continue;
            }
            boolean onEdge = (eLeft && r.left <= 0) || (eRight && r.right >= sw)
                    || (eTop && r.top <= 0) || (eBottom && r.bottom >= sh);
            if (!onEdge) {
                continue;
            }
            int area = r.width() * r.height();
            if (area > bestArea) {
                bestArea = area;
                best = new android.graphics.Rect(r);
            }
        }
        return best;
    }

    private static volatile int sSurfBottom = 0;

    private static volatile int sGeomLogged = 0;
    private static volatile int sAnchorLogged = 0;
    private static volatile int sDotsApplied = -1;

    private static void refreshSurfInsets() {
        try {
            java.lang.reflect.Field f = android.view.WindowManager.LayoutParams.class.getDeclaredField("surfaceInsets");
            f.setAccessible(true);
            Object v = f.get(sDotLp);
            if (v instanceof android.graphics.Rect) {
                int b = ((android.graphics.Rect) v).bottom;
                if (b > 0) {
                    sSurfBottom = b;
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            if (sDot != null && sDotLp != null && sDot.getHeight() > 0 && sDotLp.height > sDot.getHeight()) {
                sSurfBottom = (sDotLp.height - sDot.getHeight()) / 2;
            }
        } catch (Throwable unused) {
        }
    }

    private static void zeroSurfaceInsets(android.view.WindowManager.LayoutParams lp) {
        try {
            java.lang.reflect.Field f = android.view.WindowManager.LayoutParams.class.getDeclaredField("surfaceInsets");
            f.setAccessible(true);
            Object v = f.get(lp);
            if (v instanceof android.graphics.Rect) {
                ((android.graphics.Rect) v).set(0, 0, 0, 0);
            }
        } catch (Throwable unused) {
        }
    }

    private static void applyDockPosition(android.view.WindowManager.LayoutParams lp) {
        zeroSurfaceInsets(lp);
        int sw = screenWidthPx();
        int sh = screenHeightPx();
        int w = origStatusBarPx();
        int h = (int) (w * 1.85f) + dpToPx(52);
        android.graphics.Rect a = dockAnchor();
        lp.width = w;
        lp.height = h;
        lp.gravity = android.view.Gravity.TOP | android.view.Gravity.LEFT;
        int x;
        int y;
        if (a == null) {
            x = sw - w;
            y = 0;
        } else if (Math.max(sw, sh) >= 1500) {
            // 内屏：横向跟摄像头同一列；纵向永远贴屏幕顶部
            int cx = (a.left + a.right) / 2;
            x = Math.max(0, Math.min(sw - w, cx - w / 2));
            if (a.top <= 0) {
                y = a.bottom;          // 摄像头本身贴顶 → 让到它正下方，别盖住
            } else {
                y = 0;                 // 摄像头在下方/侧下方 → 回到屏幕顶部
            }
        } else {
            x = sw - w;
            y = a.bottom;
        }
        lp.x = x;
        lp.y = y;
        String key = "dock|" + x + "," + y + "|" + w + "x" + h + "|" + sw + "x" + sh;
        if (!key.equals(sDockKey)) {
            sDockKey = key;
            log("Dock 定位：anchor=" + a + " x=" + x + " y=" + y
                    + " 屏=" + sw + "x" + sh + " 尺寸=" + w + "x" + h);
        }
    }

    private static String dockKeyOf(android.graphics.Rect a) {
        return (a == null ? "null" : (a.left + "," + a.top + "," + a.right + "," + a.bottom)) + "/" + screenWidthPx() + "x" + screenHeightPx();
    }

    /** 旋转/折叠后重新贴边（每 350ms 轮询里调用，仅在挖孔或屏幕尺寸变化时才动窗口） */
    private static void syncDockPosition() {
        // 这里 dockAnchor() 一定可用（刚算过），把侧边/顶部 inset 也刷一遍，
        // 否则初始化时 anchor 还是 null，侧边避让永远写不进去。
        Object lpRef = sSbLp;
        if (lpRef != null) {
            applyInsetsTo(lpRef, false);
        }
        if (sMyClock != null) {
            int cc = sysColor();
            if (sMyClock.getCurrentTextColor() != cc) {
                sMyClock.setTextColor(cc);
            }
        }
        if (sDotLp == null || sDotWm == null) {
            return;
        }
        try {
            refreshSurfInsets();
            String k = "side|" + screenWidthPx() + "x" + screenHeightPx();
            if (k.equals(sDockKey)) {
                return;
            }
            applyDockPosition(sDotLp);
            if (sMyBox != null) {
                sDotWm.updateViewLayout(sMyBox, sDotLp);
            }
        } catch (Throwable th) {
            log("syncDockPosition 异常: " + th);
        }
    }

    private static int screenHeightPx2Unused = 0;

    private static void ensureCutoutDot(android.view.WindowManager wm) {
        try {
            if (sDot != null || wm == null || sAppContext == null) {
                return;
            }
            android.widget.LinearLayout box = new android.widget.LinearLayout(sAppContext);
            box.setOrientation(1);
            box.setGravity(android.view.Gravity.CENTER_HORIZONTAL);
            sMyBox = box;
            box.setPadding(dpToPx(6), dpToPx(18), dpToPx(6), dpToPx(18));
            android.widget.TextClock tc = new android.widget.TextClock(sAppContext);
            tc.setFormat24Hour("HH:mm");
            tc.setTextColor(sysColor());
            tc.setTextSize(android.util.TypedValue.COMPLEX_UNIT_SP, 13.0f);
            tc.setShadowLayer(3.0f, 0.0f, 1.0f, -16777216);
            sMyClock = tc;
            tc.setGravity(android.view.Gravity.CENTER_HORIZONTAL);
            android.widget.LinearLayout.LayoutParams tlp =
                    new android.widget.LinearLayout.LayoutParams(
                            android.widget.LinearLayout.LayoutParams.WRAP_CONTENT,
                            android.widget.LinearLayout.LayoutParams.WRAP_CONTENT);
            tlp.gravity = android.view.Gravity.CENTER_HORIZONTAL;
            box.addView(tc, tlp);
            DotView dv = new DotView(sAppContext);
            int dotPx = (int) (origStatusBarPx() * 0.80f);
            android.widget.LinearLayout.LayoutParams dlp = new android.widget.LinearLayout.LayoutParams(dotPx, (int) (dotPx * 1.85f));
            dlp.topMargin = 40;
            dlp.gravity = android.view.Gravity.CENTER_HORIZONTAL;
            android.view.View spacer = new android.view.View(sAppContext);
            box.addView(spacer, new android.widget.LinearLayout.LayoutParams(1, 0, 1.0f));
            box.addView(dv, dlp);
            android.view.WindowManager.LayoutParams lp = new android.view.WindowManager.LayoutParams();
            sDotWm = wm;
            sDotLp = lp;
            lp.type = 2038;
            lp.width = origStatusBarPx();
            lp.height = screenHeightPx();
            lp.gravity = android.view.Gravity.TOP | android.view.Gravity.RIGHT;
            applyDockPosition(lp);
            lp.flags = 0x00000308;
            // 0x100 LAYOUT_IN_SCREEN | 0x200 LAYOUT_NO_LIMITS | 0x8 NOT_FOCUSABLE
            // 没有 NO_LIMITS 时 display frame 会被挖孔 inset 左推 140px，lp.x=0 落在 x=140
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
            lp.x = 0;
            lp.y = Math.max(0, screenHeightPx() - lp.height);
            wm.addView(box, lp);
            box.postDelayed(new Runnable() {
                @Override
                public void run() {
                    try {
                        android.view.WindowInsets wi = box.getRootWindowInsets();
                        if (wi != null && wi.getDisplayCutout() != null) {
                            sLastCutout = wi.getDisplayCutout();
                            log("cutout 探测成功: " + sLastCutout.getBoundingRects()
                                    + " safe=" + sLastCutout.getSafeInsetLeft() + "/"
                                    + sLastCutout.getSafeInsetTop() + "/"
                                    + sLastCutout.getSafeInsetRight() + "/"
                                    + sLastCutout.getSafeInsetBottom());
                            syncDockPosition();
                        } else {
                            log("cutout 探测失败 wi=" + (wi != null));
                        }
                    } catch (Throwable th) {
                        log("cutout 探测异常: " + th);
                    }
                }
            }, 900L);
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

    /* ==================== 系统资源直取 ==================== */

    /** 系统状态栏资源的承载包（图标、dimen、id 都在 com.android.systemui 里）。 */
    private static final String SYS_PKG = "com.android.systemui";

    private static int sysResId(String type, String name) {
        try {
            return sAppContext.getResources().getIdentifier(name, type, SYS_PKG);
        } catch (Throwable th) {
            return 0;
        }
    }

    private static android.graphics.drawable.Drawable sysDrawable(String name) {
        try {
            int id = sysResId("drawable", name);
            if (id == 0) {
                log("系统资源缺失: drawable/" + name);
                return null;
            }
            android.graphics.drawable.Drawable d =
                    sAppContext.getResources().getDrawable(id, sAppContext.getTheme());
            return d;
        } catch (Throwable th) {
            log("取系统 drawable 失败 " + name + ": " + th);
            return null;
        }
    }

    private static int sysId(String name) {
        return sysResId("id", name);
    }

    /* ==================== 状态栏视图树探针（定位系统控件的依据） ==================== */

    private static int sTreeNodes = 0;

    private static java.io.PrintWriter sTreeOut = null;
    private static android.widget.TextView sSysClock = null;

    /** 系统状态栏的图标容器（statusIcons），Dock 底部一排直接镜像它的可见子项 */
    private static volatile android.view.DisplayCutout sLastCutout = null;

    private static android.view.ViewGroup sSysIconBar = null;

    /** 系统的通知图标区（notification_icon_area），通知图标不放在 statusIcons 里 */
    private static android.view.ViewGroup sNotifArea = null;
    private static android.widget.TextView sMyClock = null;
    private static boolean sClockStyled = false;

    /** 把系统 MiuiClock 的字号/颜色/字体完整复制到 Dock 时钟上 */
    private static void applyClockStyle(android.widget.TextView mine) {
        if (mine == null || sSysClock == null) {
            return;
        }
        try {
            mine.setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX, sSysClock.getTextSize());
            mine.setTextColor(sSysClock.getCurrentTextColor());
            mine.setTypeface(sSysClock.getTypeface());
            mine.setLetterSpacing(sSysClock.getLetterSpacing());
            mine.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            sClockStyled = true;
            log("时钟对齐: size=" + sSysClock.getTextSize()
                    + " color=#" + Integer.toHexString(sSysClock.getCurrentTextColor())
                    + " typeface=" + sSysClock.getTypeface()
                    + " spacing=" + sSysClock.getLetterSpacing());
        } catch (Throwable th) {
            log("applyClockStyle 异常: " + th);
        }
    }

    private static void tw(String line) {
        try {
            if (sTreeOut != null) {
                sTreeOut.println(line);
            }
        } catch (Throwable ignored) {
        }
        log("TREE " + line);
    }

    private static void dumpNode(View v, int depth) {
        if (v == null || depth > 18 || sTreeNodes > 900) {
            return;
        }
        sTreeNodes++;
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < depth; i++) {
                sb.append("  ");
            }
            String cn = v.getClass().getName();
            sb.append(cn.substring(cn.lastIndexOf('.') + 1));
            int vid = v.getId();
            if (vid != 0) {
                try {
                    sb.append(" id=").append(sAppContext.getResources().getResourceEntryName(vid));
                } catch (Throwable ignored) {
                    sb.append(" id=0x").append(Integer.toHexString(vid));
                }
            }
            if (v instanceof android.widget.TextView) {
                android.widget.TextView tv = (android.widget.TextView) v;
                CharSequence cs = tv.getText();
                sb.append(" text=").append(cs == null ? "null" : cs.toString().replace('\n', ' '));
                sb.append(" size=").append(tv.getTextSize());
                sb.append(" color=#").append(Integer.toHexString(tv.getCurrentTextColor()));
                sb.append(" bold=").append(tv.getTypeface() != null && tv.getTypeface().isBold());
            }
            if (v instanceof android.widget.ImageView) {
                android.widget.ImageView iv = (android.widget.ImageView) v;
                android.graphics.drawable.Drawable d = iv.getDrawable();
                sb.append(" drawable=").append(d == null ? "null" : d.getClass().getSimpleName());
                if (d != null) {
                    sb.append(" dw=").append(d.getIntrinsicWidth()).append("x").append(d.getIntrinsicHeight());
                    android.content.res.ColorStateList tint = iv.getImageTintList();
                    if (tint != null) {
                        sb.append(" tint=#").append(Integer.toHexString(tint.getDefaultColor()));
                    }
                    sb.append(" alpha=").append(iv.getImageAlpha());
                }
                try {
                    java.lang.reflect.Method m = v.getClass().getMethod("getSlot");
                    Object slot = m.invoke(v);
                    sb.append(" slot=").append(slot);
                } catch (Throwable ignored) {
                }
            }
            sb.append(" vis=").append(v.getVisibility());
            sb.append(" xy=").append(v.getLeft()).append(",").append(v.getTop());
            sb.append(" wh=").append(v.getWidth()).append("x").append(v.getHeight());
            tw(sb.toString());
            if (v instanceof android.view.ViewGroup) {
                android.view.ViewGroup g = (android.view.ViewGroup) v;
                for (int i = 0; i < g.getChildCount(); i++) {
                    dumpNode(g.getChildAt(i), depth + 1);
                }
            }
        } catch (Throwable ignored) {
        }
    }

    static final class DotView extends View {
        private final android.graphics.Paint pText = new android.graphics.Paint(1);

        private final android.graphics.Paint pRing = new android.graphics.Paint(1);
        private final android.graphics.Paint pArc = new android.graphics.Paint(1);
        private final android.graphics.RectF rect = new android.graphics.RectF();
        private final java.util.HashMap<String, android.graphics.drawable.Drawable> icCache = new java.util.HashMap<String, android.graphics.drawable.Drawable>();

        private int batt = 80;
        private boolean charging = false;
        private int wifiLevel = 0;
        private int cellLevel = 0;
        private int overrideType = 0;
        private int dataType = 0;
        private boolean netUp = false;
        private boolean netDown = false;
        private long lastRx = -1;
        private long lastTx = -1;

        private android.net.wifi.WifiManager wifiMgr = null;
        private android.telephony.TelephonyManager teleMgr = null;
        private android.telephony.TelephonyCallback teleCb = null;

        private final Runnable netTick = new Runnable() {
            @Override
            public void run() {
                refreshNet();
            }
        };

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

        private final class Callback extends android.telephony.TelephonyCallback
                implements android.telephony.TelephonyCallback.DisplayInfoListener,
                android.telephony.TelephonyCallback.SignalStrengthsListener {
            @Override
            public void onDisplayInfoChanged(android.telephony.TelephonyDisplayInfo info) {
                try {
                    overrideType = info.getOverrideNetworkType();
                    postInvalidate();
                } catch (Throwable unused) {
                }
            }

            @Override
            public void onSignalStrengthsChanged(android.telephony.SignalStrength ss) {
                if (ss == null) {
                    return;
                }
                int lv = -1;
                try {
                    lv = ss.getLevel();
                } catch (Throwable unused) {
                }
                if (lv < 0) {
                    try {
                        for (android.telephony.CellSignalStrength c : ss.getCellSignalStrengths()) {
                            lv = c.getLevel();
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (lv >= 0 && lv != cellLevel) {
                    cellLevel = lv;
                    postInvalidate();
                }
            }
        }

        DotView(android.content.Context c) {
            super(c);
            this.pText.setAntiAlias(true);
            this.pRing.setStyle(android.graphics.Paint.Style.STROKE);
            this.pRing.setAntiAlias(true);
            this.pArc.setStyle(android.graphics.Paint.Style.STROKE);
            this.pArc.setAntiAlias(true);
            this.pArc.setStrokeCap(android.graphics.Paint.Cap.ROUND);
            try {
                getContext().registerReceiver(this.rx, new android.content.IntentFilter(android.content.Intent.ACTION_BATTERY_CHANGED));
            } catch (Throwable unused) {
            }
            try {
                this.wifiMgr = (android.net.wifi.WifiManager) getContext().getApplicationContext().getSystemService("wifi");
                this.teleMgr = (android.telephony.TelephonyManager) getContext().getSystemService("phone");
                if (this.teleMgr != null && android.os.Build.VERSION.SDK_INT >= 31) {
                    this.teleCb = new Callback();
                    this.teleMgr.registerTelephonyCallback(getContext().getMainExecutor(), this.teleCb);
                }
            } catch (Throwable th) {
                log("Dock 注册电话监听失败: " + th);
            }
        }

        /** 系统状态栏当前图标着色，实时跟随深浅色 */
        private int sysColor() {
            try {
                if (sSysClock != null) {
                    return sSysClock.getCurrentTextColor();
                }
            } catch (Throwable unused) {
            }
            return nightTextColor();
        }

        private android.graphics.drawable.Drawable ic(String name) {
            android.graphics.drawable.Drawable d = icCache.get(name);
            if (d != null) {
                return d;
            }
            d = sysDrawable(name);
            if (d != null) {
                icCache.put(name, d);
            }
            return d;
        }

        private void drawIc(android.graphics.Canvas cv, String name, float l, float t, float size, int alpha) {
            android.graphics.drawable.Drawable d = ic(name);
            if (d == null) {
                return;
            }
            d.setBounds((int) l, (int) t, (int) (l + size), (int) (t + size));
            d.setTint(sysColor());
            d.setAlpha(alpha);
            d.draw(cv);
        }

        /** 环的颜色：充电绿、危险红、省电黄，正常跟随状态栏颜色 */
        private int battColor(int base) {
            if (charging) {
                return 0xFF34C759;
            }
            if (batt <= 20) {
                return 0xFFF43146;
            }
            if (batt <= 40) {
                return 0xFFEEBA18;
            }
            return base;
        }

        /** 反射取 StatusBarIconView 的 slot，用来区分「系统图标」和「通知图标」 */
        private String slotOf(android.view.View v) {
            try {
                java.lang.reflect.Method m = v.getClass().getMethod("getSlot");
                Object o = m.invoke(v);
                return o instanceof String ? (String) o : null;
            } catch (Throwable th) {
                return null;
            }
        }

        /** 取一份可安全着色的 drawable 副本，避免污染系统共享实例 */
        private android.graphics.drawable.Drawable copyOf(android.graphics.drawable.Drawable d) {
            android.graphics.drawable.Drawable cp = d.getConstantState() != null
                    ? d.getConstantState().newDrawable() : d;
            if (cp != d) {
                cp.mutate();
            }
            return cp;
        }

        /**
         * 环下方两行：第一行系统状态图标（静音/勿扰/蓝牙/闹钟…），
         * 第二行通知图标（各 App 的通知）。两者不共用同一行。
         */
        /** 系统状态栏的 notification_icon_area 在 MIUI 上是 GONE（不渲染通知图标），
         *  所以直接从通知中心取每条通知的 smallIcon，作为「通知图标行」的数据源。 */
        private java.util.List<android.graphics.drawable.Drawable> notifIcons() {
            java.util.List<android.graphics.drawable.Drawable> out = new java.util.ArrayList<>();
            try {
                if (sAppContext == null) {
                    return out;
                }
                android.app.NotificationManager nm = (android.app.NotificationManager)
                        sAppContext.getSystemService(android.content.Context.NOTIFICATION_SERVICE);
                if (nm == null) {
                    return out;
                }
                android.service.notification.StatusBarNotification[] arr = null;
                if (sNotifListener != null) {
                    Object r = call(sNotifListener, "getActiveNotifications", new Object[0]);
                    if (r instanceof android.service.notification.StatusBarNotification[]) {
                        arr = (android.service.notification.StatusBarNotification[]) r;
                    }
                }
                if (arr == null) {
                    arr = nm.getActiveNotifications();
                }
                if (sNotifLogState != (sNotifListener != null)) {
                    sNotifLogState = sNotifListener != null;
                    log("notifIcons: listener=" + sNotifLogState + " n=" + (arr == null ? -1 : arr.length));
                }
                if (arr == null) {
                    return out;
                }
                for (android.service.notification.StatusBarNotification sbn : arr) {
                    if (out.size() >= 8) {
                        break;
                    }
                    android.app.Notification n = sbn.getNotification();
                    if (n == null || n.getSmallIcon() == null) {
                        continue;
                    }
                    int imp = -1;
                    try {
                        String cid = n.getChannelId();
                        if (cid != null) {
                            android.app.NotificationChannel ch = nm.getNotificationChannel(cid);
                            if (ch != null) {
                                imp = ch.getImportance();
                            }
                        }
                    } catch (Throwable ignored) {
                    }
                    if (imp >= 0 && imp <= android.app.NotificationManager.IMPORTANCE_LOW) {
                        continue;
                    }
                    android.graphics.drawable.Drawable d = n.getSmallIcon().loadDrawable(sAppContext);
                    if (d != null) {
                        out.add(d);
                    }
                }
            } catch (Throwable th) {
                log("notifIcons 异常: " + th);
            }
            return out;
        }

        private void drawIconBar(android.graphics.Canvas cv, float w, int color) {
            if (sSysIconBar == null) {
                return;
            }
            java.util.List<android.graphics.drawable.Drawable> sys = new java.util.ArrayList<>();
            java.util.List<android.graphics.drawable.Drawable> notif = new java.util.ArrayList<>();
            for (int i = 0; i < sSysIconBar.getChildCount(); i++) {
                android.view.View c = sSysIconBar.getChildAt(i);
                if (c == null || c.getVisibility() != android.view.View.VISIBLE) {
                    continue;
                }
                if (!(c instanceof android.widget.ImageView)) {
                    continue;
                }
                android.graphics.drawable.Drawable d = ((android.widget.ImageView) c).getDrawable();
                if (d == null) {
                    continue;
                }
                String slot = slotOf(c);
                boolean isNotif = slot != null && slot.startsWith("notif");
                java.util.List<android.graphics.drawable.Drawable> bucket = isNotif ? notif : sys;
                if (bucket.size() >= 4) {
                    continue;
                }
                bucket.add(copyOf(d));
            }
            if (notif.size() < 8) {
                notif.addAll(notifIcons());
            }
            float isz = w * 0.21f;
            float gap = w * 0.045f;
            float y1 = w + (w * 0.03f);
            drawRow(cv, sys, w, y1, isz, gap, color);
            float y2 = y1 + isz + (w * 0.06f);
            java.util.List<android.graphics.drawable.Drawable> n1 =
                    notif.size() > 4 ? notif.subList(0, 4) : notif;
            drawRow(cv, n1, w, y2, isz, gap, color);
            if (notif.size() > 4) {
                drawRow(cv, notif.subList(4, notif.size()), w, y2 + isz + (w * 0.04f), isz, gap, color);
            }
        }

        private void drawRow(android.graphics.Canvas cv,
                             java.util.List<android.graphics.drawable.Drawable> ds,
                             float w, float y, float isz, float gap, int color) {
            if (ds.isEmpty()) {
                return;
            }
            float total = ds.size() * isz + (ds.size() - 1) * gap;
            float x = (w - total) / 2.0f;
            for (android.graphics.drawable.Drawable d : ds) {
                d.setBounds((int) x, (int) y, (int) (x + isz), (int) (y + isz));
                d.setTint(color);
                d.draw(cv);
                x += isz + gap;
            }
        }

        private String signalIcon() {
            int lv = cellLevel < 0 ? 0 : (cellLevel > 4 ? 4 : cellLevel);
            return "stat_sys_signal_" + lv;
        }

        /**
         * 系统的 WiFi 图标本身就是「信号 + 上下行箭头」的组合图形
         * （stat_sys_wifi_in / _out / _inout），跟状态栏完全一致，不再单独画箭头。
         */
        private String wifiIcon() {
            if (netUp && netDown) {
                return "stat_sys_wifi_inout";
            }
            if (netUp) {
                return "stat_sys_wifi_in";
            }
            if (netDown) {
                return "stat_sys_wifi_out";
            }
            int lv = wifiLevel < 0 ? 0 : (wifiLevel > 3 ? 3 : wifiLevel);
            return "stat_sys_wifi_signal_" + lv;
        }

        /** 网络类型图标：优先用系统 display info 的 override 值，其次用数据网络类型 */
        private String typeIcon() {
            int t = overrideType;
            if (t == 5) {
                return "ic_5g_a_mobiledata";
            }
            if (t == 2 || t == 3) {
                return "ic_5g_mobiledata";
            }
            if (t == 1 || t == 4) {
                return "ic_lte_plus_mobiledata";
            }
            switch (dataType) {
                case 20:
                    return "ic_5g_mobiledata";
                case 13:
                case 14:
                    return "ic_lte_mobiledata";
                case 11:
                case 12:
                    return "ic_4g_mobiledata";
                case 9:
                    return "ic_h_plus_mobiledata";
                case 10:
                    return "ic_h_mobiledata";
                case 3:
                case 4:
                case 5:
                case 6:
                case 8:
                    return "ic_3g_mobiledata";
                case 1:
                case 2:
                    return "ic_g_mobiledata";
                default:
                    return "";
            }
        }

        private void refreshNet() {
            try {
                if (this.teleMgr != null) {
                    int t = this.teleMgr.getDataNetworkType();
                    if (t != dataType) {
                        dataType = t;
                        postInvalidate();
                    }
                }
            } catch (Throwable unused) {
            }
            try {
                if (this.wifiMgr != null && this.wifiMgr.isWifiEnabled()) {
                    android.net.wifi.WifiInfo wi = null;
                    android.net.ConnectivityManager cm =
                            (android.net.ConnectivityManager) getContext().getSystemService(android.content.Context.CONNECTIVITY_SERVICE);
                    if (cm != null) {
                        android.net.NetworkCapabilities nc = cm.getNetworkCapabilities(cm.getActiveNetwork());
                        if (nc != null && nc.hasTransport(android.net.NetworkCapabilities.TRANSPORT_WIFI)) {
                            android.net.TransportInfo ti = nc.getTransportInfo();
                            if (ti instanceof android.net.wifi.WifiInfo) {
                                wi = (android.net.wifi.WifiInfo) ti;
                            }
                        }
                    }
                    int lv;
                    if (wi != null) {
                        lv = android.net.wifi.WifiManager.calculateSignalLevel(wi.getRssi(), 4);
                    } else {
                        lv = 0;
                    }
                    if (lv != wifiLevel) {
                        wifiLevel = lv;
                        postInvalidate();
                    }
                }
            } catch (Throwable unused) {
            }
            try {
                long rx2 = android.net.TrafficStats.getTotalRxBytes();
                long tx2 = android.net.TrafficStats.getTotalTxBytes();
                boolean dn = this.lastRx >= 0 && rx2 > this.lastRx;
                boolean up = this.lastTx >= 0 && tx2 > this.lastTx;
                this.lastRx = rx2;
                this.lastTx = tx2;
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
            postDelayed(netTick, 300L);
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
                invalidate();
            } catch (Throwable unused) {
            }
        }

        @Override
        protected void onDraw(android.graphics.Canvas cv) {
            float w = getWidth();
            int color = sysColor();

            /* ── 电池环：缺口朝下的 270° 圆环，弧长按电量点亮（与 HyperDuo 同构） ── */
            float cx = w / 2.0f;
            float cy = w / 2.0f;
            float stroke = w * 0.06f;
            float r = (w / 2.0f) - stroke;
            this.pRing.setStrokeWidth(stroke);
            this.pRing.setColor(color);
            this.pRing.setAlpha(95);
            cv.drawCircle(cx, cy, r, this.pRing);

            this.pArc.setStrokeWidth(stroke);
            this.pArc.setColor(battColor(color));
            this.pArc.setAlpha(255);
            this.rect.set(cx - r, cy - r, cx + r, cy + r);
            cv.drawArc(this.rect, 120.0f, (batt / 100.0f) * 300.0f, false, this.pArc);

            /* ── 环内：电量数字 ── */
            this.pText.setColor(color);
            this.pText.setTextSize(w * 0.30f);
            this.pText.setTextAlign(android.graphics.Paint.Align.CENTER);
            android.graphics.Paint.FontMetrics fm = this.pText.getFontMetrics();
            cv.drawText(String.valueOf(batt), cx, cy - ((fm.ascent + fm.descent) / 2.0f), this.pText);

            /* ── 环下方：系统状态栏图标横向一排 ── */
            drawIconBar(cv, w, color);
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
            try {
                if (this.teleMgr != null && this.teleCb != null) {
                    this.teleMgr.unregisterTelephonyCallback(this.teleCb);
                }
            } catch (Throwable unused) {
            }
            super.onDetachedFromWindow();
        }
    }

}
