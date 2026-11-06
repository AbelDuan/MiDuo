package dev.duo.taskcore;

/* loaded from: classes.dex */
final class VirtualFocus {
    static final int NONE = Integer.MIN_VALUE;
    int focused = NONE;
    int hovered = NONE;

    VirtualFocus() {
    }

    int[] focus(int i) {
        if (i == NONE || this.focused == i) {
            return null;
        }
        int i2 = this.focused;
        this.focused = i;
        return new int[]{i2, i};
    }

    boolean clear(int i) {
        if (i == NONE || this.focused != i) {
            return false;
        }
        this.focused = NONE;
        return true;
    }

    int clearAll() {
        int i = this.focused;
        this.focused = NONE;
        this.hovered = NONE;
        return i;
    }

    int[] hover(int i) {
        if (this.hovered == i) {
            return null;
        }
        int i2 = this.hovered;
        this.hovered = i;
        return new int[]{i2, i};
    }
}
