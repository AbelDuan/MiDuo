package dev.duo.taskcore;

/* loaded from: classes.dex */
final class f {
    static final int c = Integer.MIN_VALUE;
    int a = c;
    int b = c;

    f() {
    }

    boolean a(int i) {
        if (i == c || this.a != i) {
            return false;
        }
        this.a = c;
        return true;
    }

    int[] b(int i) {
        int i2;
        if (i == c || (i2 = this.a) == i) {
            return null;
        }
        this.a = i;
        return new int[]{i2, i};
    }

    int[] c(int i) {
        int i2 = this.b;
        if (i2 == i) {
            return null;
        }
        this.b = i;
        return new int[]{i2, i};
    }

    int a() {
        int i = this.a;
        this.a = c;
        this.b = c;
        return i;
    }
}
