package com.abel.statussize;

import android.graphics.Rect;
import android.view.WindowManager;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;

/**
 * 只做一件事：在 system_server 里把应用窗口的右边界收窄 N 像素，
 * 让所有 App 无条件给摄像头那一侧让位。
 *
 * 这样做的原因：statusBars 的 right inset 已经正确下发，
 * 但绝大多数 App 只读 top、不读 right，所以 inset 这条路对它们无效。
 * 唯一能强制的是窗口边界本身。
 */
public class SysServerHook implements IXposedHookLoadPackage {
    private static final String TAG = "StatusSize-Sys: ";

    /** 内屏摄像头宽 140px；外屏 54px。 */
    private static final int NOTCH_INNER = 140;
    private static final int NOTCH_OUTER = 54;

    @Override
    public void handleLoadPackage(LoadPackageParam lp) throws Throwable {
        if (!"android".equals(lp.packageName)) return;
        XposedBridge.log(TAG + "命中 system_server，开始挂钩 WindowState.getBounds");

        try {
            Class<?> wsc = Class.forName("com.android.server.wm.WindowState", false, lp.classLoader);
            int hooked = 0;
            for (Method m : wsc.getDeclaredMethods()) {
                if (!"getBounds".equals(m.getName())) continue;
                if (m.getParameterCount() != 0) continue;
                if (m.getReturnType() != Rect.class) continue;
                m.setAccessible(true);
                XposedBridge.hookMethod(m, new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam p) {
                        try {
                            Object r = p.getResult();
                            if (!(r instanceof Rect)) return;
                            Object attrs = readField(p.thisObject, "mAttrs");
                            if (!(attrs instanceof WindowManager.LayoutParams)) return;
                            int type = ((WindowManager.LayoutParams) attrs).type;
                            if (type < WindowManager.LayoutParams.FIRST_APPLICATION_WINDOW
                                    || type > WindowManager.LayoutParams.LAST_APPLICATION_WINDOW) {
                                return;
                            }
                            Rect src = (Rect) r;
                            int notch = notchFor(p.thisObject);
                            if (notch <= 0) return;
                            Rect out = new Rect(src);
                            out.right = Math.max(out.left, out.right - notch);
                            p.setResult(out);
                        } catch (Throwable t) {
                            XposedBridge.log(TAG + "getBounds 处理异常 " + t);
                        }
                    }
                });
                hooked++;
                XposedBridge.log(TAG + "已挂钩 WindowState.getBounds()");
            }
            XposedBridge.log(TAG + "getBounds 挂钩总数=" + hooked);
        } catch (Throwable t) {
            XposedBridge.log(TAG + "挂钩失败 " + t);
        }
    }

    /** 内屏 140、外屏 54，按窗口所在 display 判断。 */
    private static int notchFor(Object windowState) {
        try {
            Object dc = readField(windowState, "mDisplayContent");
            if (dc == null) return NOTCH_INNER;
            Object display = readField(dc, "mDisplay");
            if (display == null) return NOTCH_INNER;
            Method getId = display.getClass().getMethod("getDisplayId");
            int id = ((Integer) getId.invoke(display)).intValue();
            // Display.DEFAULT_DISPLAY = 0 是内屏
            return id == 0 ? NOTCH_INNER : NOTCH_OUTER;
        } catch (Throwable t) {
            return NOTCH_INNER;
        }
    }

    private static Object readField(Object target, String name) {
        try {
            Class<?> c = target.getClass();
            while (c != null) {
                Field f = c.getDeclaredField(name);
                f.setAccessible(true);
                return f.get(target);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }
}
