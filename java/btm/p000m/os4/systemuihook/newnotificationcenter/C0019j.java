package btm.p000m.os4.systemuihook.newnotificationcenter;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import btm.p000m.os4.systemuihook.hypermusiccover.C0009j;
import java.util.ArrayList;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.j */
/* loaded from: classes.dex */
final class C0019j extends FrameLayout {

    /* renamed from: h */
    private static Object f454h;

    /* renamed from: i */
    private static C0020k f455i;

    /* renamed from: j */
    private static View f456j;

    /* renamed from: k */
    private static View f457k;

    /* renamed from: l */
    private static View f458l;

    /* renamed from: m */
    private static C0019j f459m;

    /* renamed from: n */
    private static ViewGroup f460n;

    /* renamed from: o */
    private static ViewGroup.LayoutParams f461o;

    /* renamed from: p */
    private static int f462p;

    /* renamed from: q */
    private static final ArrayList<a> f463q = new ArrayList<>();

    /* renamed from: r */
    private static final int[] f464r = new int[2];

    /* renamed from: s */
    private static final Rect f465s = new Rect();

    /* renamed from: a */
    private boolean f466a;

    /* renamed from: b */
    private boolean f467b;

    /* renamed from: c */
    private boolean f468c;

    /* renamed from: d */
    private float f469d;

    /* renamed from: e */
    private float f470e;

    /* renamed from: f */
    private MotionEvent f471f;

    /* renamed from: g */
    private final int f472g;

    /* renamed from: btm.m.os4.systemuihook.newnotificationcenter.j$a */
    private static final class a {

        /* renamed from: a */
        final View f473a;

        /* renamed from: b */
        final int f474b;

        /* renamed from: c */
        final float f475c;

        a(View view) {
            this.f473a = view;
            this.f474b = view.getVisibility();
            this.f475c = view.getAlpha();
        }

        /* renamed from: a */
        void m463a() {
            if (this.f473a.getVisibility() == 0) {
                this.f473a.setVisibility(this.f474b);
            }
            if (this.f473a.getAlpha() == 1.0f) {
                this.f473a.setAlpha(this.f475c);
            }
        }
    }

    private C0019j(Context context) {
        super(context);
        setClipChildren(false);
        setClipToPadding(false);
        this.f472g = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    /* renamed from: a */
    static void m455a(Object obj) {
        try {
            Object m211b = C0009j.m211b(obj, "miuiShortcutPlugin");
            Object m200a = m211b == null ? null : C0009j.m200a(m211b, "getShortcutContentView", new Object[0]);
            View view = m200a instanceof View ? (View) m200a : null;
            if (f454h != m211b || f456j != view) {
                m458b();
            }
            f454h = m211b;
            f456j = view;
            f457k = m449a(obj, true);
            f458l = m449a(obj, false);
            C0020k c0020k = f455i;
            if (c0020k != null) {
                c0020k.m473b();
            }
            f455i = null;
            if (m211b != null && view != null) {
                f455i = C0020k.m464a(obj, m211b);
            }
            C0014e.m383p0();
        } catch (Throwable th) {
            m458b();
            C0009j.m209a("[IOSShade] native shortcut capture unavailable: " + th);
        }
    }

    /* renamed from: b */
    static void m458b() {
        m462d();
        f454h = null;
        f455i = null;
        f456j = null;
        f457k = null;
        f458l = null;
    }

    /* renamed from: c */
    private void m461c() {
        this.f466a = false;
        this.f468c = false;
        MotionEvent motionEvent = this.f471f;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.f471f = null;
        }
    }

    /* renamed from: d */
    static void m462d() {
        C0019j c0019j = f459m;
        if (c0019j == null) {
            return;
        }
        f459m = null;
        c0019j.m450a();
        ArrayList<a> arrayList = f463q;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            a aVar = arrayList.get(i);
            i++;
            aVar.m463a();
        }
        f463q.clear();
        View view = f456j;
        if (view != null && view.getParent() == c0019j) {
            c0019j.removeView(f456j);
            ViewGroup viewGroup = f460n;
            if (viewGroup != null) {
                f460n.addView(f456j, Math.max(0, Math.min(f462p, viewGroup.getChildCount())), f461o);
            }
        }
        if (c0019j.getParent() instanceof ViewGroup) {
            ((ViewGroup) c0019j.getParent()).removeView(c0019j);
        }
        f460n = null;
        f461o = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: b */
    private static void m460b(View view) {
        if (view == null) {
            return;
        }
        View view2 = view;
        while (view2 != null && view2.getVisibility() != 8) {
            ArrayList<a> arrayList = f463q;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    a aVar = arrayList.get(i);
                    i++;
                    if (aVar.f473a == view2) {
                        break;
                    }
                } else if (view2.getAlpha() == 0.0f || (view2 != view && view2.getVisibility() == 4)) {
                    f463q.add(new a(view2));
                    view2.setAlpha(1.0f);
                    if (view2 != view) {
                        view2.setVisibility(0);
                    }
                }
            }
            if (view2 == f456j) {
                return;
            } else {
                view2 = view2.getParent() instanceof View ? (View) view2.getParent() : null;
            }
        }
    }

    /* renamed from: a */
    private static View m449a(Object obj, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isLeftShortcutView", z);
        Object m200a = C0009j.m200a(obj, "onSystemUIAction$1", bundle, "getShortcutView");
        if (m200a instanceof View) {
            return (View) m200a;
        }
        return null;
    }

    /* renamed from: b */
    private void m459b(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 3 && actionMasked != 5) {
            MotionEvent motionEvent2 = this.f471f;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            this.f471f = MotionEvent.obtain(motionEvent);
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.offsetLocation(motionEvent.getRawX() - motionEvent.getX(), motionEvent.getRawY() - motionEvent.getY());
            try {
                C0009j.m200a(f454h, "onTouchEvent", obtain);
                if (f459m == this && this.f466a) {
                    if (!this.f467b && actionMasked == 2 && (Math.abs(motionEvent.getRawX() - this.f469d) > this.f472g || Math.abs(motionEvent.getRawY() - this.f470e) > this.f472g)) {
                        m451a(motionEvent, 3);
                        this.f467b = true;
                    }
                    if (!this.f467b) {
                        m451a(motionEvent, motionEvent.getAction());
                    }
                    if (actionMasked == 1) {
                        f455i.m474e();
                        m461c();
                    }
                    return;
                }
                return;
            } catch (Throwable th) {
                try {
                    m450a();
                    C0009j.m209a("[IOSShade] native shortcut touch unavailable: " + th);
                    return;
                } finally {
                    obtain.recycle();
                }
            }
        }
        m450a();
        this.f468c = actionMasked == 5;
    }

    /* renamed from: a */
    static void m454a(FrameLayout frameLayout, View view, float f, boolean z) {
        if (z && frameLayout != null && f454h != null && f456j != null && f455i != null && (f457k != null || f458l != null)) {
            C0019j c0019j = f459m;
            if (c0019j != null && c0019j.getParent() != frameLayout) {
                m462d();
            }
            if (f459m == null) {
                if (f456j.getVisibility() != 0 || !(f456j.getParent() instanceof ViewGroup)) {
                    return;
                }
                f460n = (ViewGroup) f456j.getParent();
                f461o = f456j.getLayoutParams();
                f462p = f460n.indexOfChild(f456j);
                C0019j c0019j2 = new C0019j(frameLayout.getContext());
                f459m = c0019j2;
                try {
                    f460n.removeView(f456j);
                    c0019j2.addView(f456j, new FrameLayout.LayoutParams(-1, -1));
                    frameLayout.addView(c0019j2, new FrameLayout.LayoutParams(-1, -1));
                    m460b(f457k);
                    m460b(f458l);
                } catch (Throwable th) {
                    m462d();
                    C0009j.m209a("[IOSShade] native shortcut hosting unavailable: " + th);
                    return;
                }
            }
            C0019j c0019j3 = f459m;
            if (c0019j3 == null) {
                return;
            }
            if (c0019j3.getAlpha() != f) {
                c0019j3.setAlpha(f);
            }
            float translationX = view == null ? 0.0f : view.getTranslationX();
            float translationY = view != null ? view.getTranslationY() : 0.0f;
            if (c0019j3.getTranslationX() != translationX) {
                c0019j3.setTranslationX(translationX);
            }
            if (c0019j3.getTranslationY() != translationY) {
                c0019j3.setTranslationY(translationY);
            }
            m452a((View) frameLayout);
            return;
        }
        m462d();
    }

    /* renamed from: a */
    private static void m452a(View view) {
        float f;
        float f2;
        DisplayManager displayManager = (DisplayManager) view.getContext().getSystemService(DisplayManager.class);
        Display display = displayManager == null ? null : displayManager.getDisplay(0);
        if (display == null) {
            return;
        }
        Point point = new Point();
        display.getRealSize(point);
        int i = point.x;
        if (i >= 2000) {
            f = 2257.5f;
            f2 = 1543.0f;
        } else {
            int i2 = point.y;
            if (i2 >= 2000) {
                f = 1536.0f;
                f2 = 2239.0f;
            } else if (i > i2) {
                f = i - 107.0f;
                f2 = i2 - 118.0f;
            } else {
                f = 1061.0f;
                f2 = 1594.0f;
            }
        }
        int max = Math.max(132, Math.round(view.getResources().getDisplayMetrics().density * 48.0f));
        m453a(f458l, f, f2, max);
        m453a(f457k, f, f2 - (max + 18.0f), max);
    }

    /* renamed from: a */
    private static void m453a(View view, float f, float f2, int i) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null) {
            return;
        }
        View view2 = ((view.getParent() instanceof View) && (((View) view.getParent()).getLayoutParams() instanceof FrameLayout.LayoutParams)) ? (View) view.getParent() : view;
        if ((view2.getLayoutParams() instanceof FrameLayout.LayoutParams) && (view2.getParent() instanceof View)) {
            ((View) view2.getParent()).getLocationOnScreen(new int[2]);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view2.getLayoutParams();
            float f3 = i / 2.0f;
            int round = Math.round((f - r1[0]) - f3);
            int round2 = Math.round((f2 - r1[1]) - f3);
            if (layoutParams2.width == i && layoutParams2.height == i && layoutParams2.leftMargin == round && layoutParams2.topMargin == round2 && layoutParams2.gravity == 51) {
                return;
            }
            layoutParams2.height = i;
            layoutParams2.width = i;
            layoutParams2.leftMargin = round;
            layoutParams2.topMargin = round2;
            layoutParams2.bottomMargin = 0;
            layoutParams2.rightMargin = 0;
            layoutParams2.setMarginStart(round);
            layoutParams2.setMarginEnd(0);
            layoutParams2.gravity = 51;
            view2.setLayoutParams(layoutParams2);
            if (view2 == view || (layoutParams = view.getLayoutParams()) == null) {
                return;
            }
            if (layoutParams.width == i && layoutParams.height == i) {
                return;
            }
            layoutParams.height = i;
            layoutParams.width = i;
            view.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: a */
    static boolean m456a(MotionEvent motionEvent) {
        C0019j c0019j = f459m;
        if (c0019j == null) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            c0019j.m450a();
            if (c0019j.getAlpha() < 0.999f || !c0019j.isShown() || (!m457a(f457k, motionEvent) && !m457a(f458l, motionEvent))) {
                return false;
            }
            f455i.m472a();
            c0019j.f466a = true;
            c0019j.f468c = false;
            c0019j.f469d = motionEvent.getRawX();
            c0019j.f470e = motionEvent.getRawY();
            c0019j.f467b = false;
        }
        if (c0019j.f468c) {
            if (actionMasked == 1 || actionMasked == 3) {
                c0019j.f468c = false;
            }
            return true;
        }
        if (!c0019j.f466a) {
            return false;
        }
        c0019j.m459b(motionEvent);
        return true;
    }

    /* renamed from: a */
    private static boolean m457a(View view, MotionEvent motionEvent) {
        if (view != null && view.isShown() && view.isEnabled() && view.getAlpha() > 0.0f) {
            Rect rect = f465s;
            if (view.getGlobalVisibleRect(rect)) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                if (!rect.contains((int) rawX, (int) rawY)) {
                    return false;
                }
                view.getLocationOnScreen(f464r);
                float width = (rawX - r1[0]) - (view.getWidth() / 2.0f);
                float height = (rawY - r1[1]) - (view.getHeight() / 2.0f);
                float min = Math.min(view.getWidth(), view.getHeight()) / 2.0f;
                if ((width * width) + (height * height) <= min * min) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    private void m451a(MotionEvent motionEvent, int i) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        getLocationOnScreen(f464r);
        obtain.offsetLocation((motionEvent.getRawX() - r1[0]) - motionEvent.getX(), (motionEvent.getRawY() - r1[1]) - motionEvent.getY());
        obtain.setAction(i);
        try {
            super.dispatchTouchEvent(obtain);
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: a */
    private void m450a() {
        MotionEvent motionEvent;
        MotionEvent obtain = (!this.f466a || (motionEvent = this.f471f) == null) ? null : MotionEvent.obtain(motionEvent);
        m461c();
        if (obtain != null) {
            try {
                m451a(obtain, 3);
            } catch (Throwable th) {
                try {
                    C0009j.m209a("[IOSShade] native shortcut cancellation unavailable: " + th);
                    obtain.recycle();
                    if (f455i != null) {
                        f455i.m473b();
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    obtain.recycle();
                    C0020k c0020k = f455i;
                    if (c0020k != null) {
                        c0020k.m473b();
                    }
                    throw th2;
                }
            }
        }
        if (obtain != null) {
            obtain.recycle();
        }
        C0020k c0020k2 = f455i;
        if (c0020k2 != null) {
            c0020k2.m473b();
        }
    }
}
