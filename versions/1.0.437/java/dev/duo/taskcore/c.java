package dev.duo.taskcore;

/* loaded from: classes.dex */
public final class c {
    private static volatile java.lang.reflect.Field[] m;
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final boolean k;
    private static final java.lang.String[] l = {"keyguardShowing", "keyguardOccluded", "bouncerShowing", "dozing", "shadeOrQsExpanded", "controlCenterExpanded", "panelVisible", "remoteInputActive", "headsUpNotificationShowing", "isSwitchingUsers"};
    public static final dev.duo.taskcore.c n = new dev.duo.taskcore.c(new boolean[10], true);

    private c(boolean[] zArr) {
        this(zArr, false);
    }

    public static dev.duo.taskcore.c a(java.lang.Object obj) throws java.lang.ReflectiveOperationException {
        java.lang.reflect.Field[] fieldArr = m;
        if (fieldArr == null) {
            int length = l.length;
            java.lang.reflect.Field[] fieldArr2 = new java.lang.reflect.Field[length];
            for (int i = 0; i < length; i++) {
                java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField(l[i]);
                fieldArr2[i] = declaredField;
                declaredField.setAccessible(true);
            }
            m = fieldArr2;
            fieldArr = fieldArr2;
        }
        int length2 = l.length;
        boolean[] zArr = new boolean[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            zArr[i2] = fieldArr[i2].getBoolean(obj);
        }
        return new dev.duo.taskcore.c(zArr);
    }

    public boolean b() {
        return this.k || this.j;
    }

    public boolean c() {
        return this.a || this.d;
    }

    public java.lang.String toString() {
        return this.k ? "unknown" : "keyguard=" + this.a + " occluded=" + this.b + " bouncer=" + this.c + " dozing=" + this.d + " shade=" + this.e + " cc=" + this.f + " panel=" + this.g + " remoteInput=" + this.h + " headsUp=" + this.i + " switching=" + this.j;
    }

    private c(boolean[] zArr, boolean z) {
        this.k = z;
        this.a = zArr[0];
        this.b = zArr[1];
        this.c = zArr[2];
        this.d = zArr[3];
        this.e = zArr[4];
        this.f = zArr[5];
        this.g = zArr[6];
        this.h = zArr[7];
        this.i = zArr[8];
        this.j = zArr[9];
    }

    public boolean a() {
        return this.k || this.a || this.d || this.e || this.f || this.h || this.c;
    }
}
