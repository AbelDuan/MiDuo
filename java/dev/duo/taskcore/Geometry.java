package dev.duo.taskcore;

import android.graphics.Rect;

/* loaded from: classes.dex */
public final class Geometry {
    public static final int EDGE = 40;
    public static final int GAP = 24;
    public static final int SLOTS = 4;
    public final Rect display;
    public final float slotScale;
    public final Rect logical = new Rect();
    public final Rect[] slots = new Rect[4];

    public Geometry(Rect rect) {
        this.display = new Rect(rect);
        int height = rect.height() - 80;
        int i = (height - 72) / 4;
        float f = height;
        float f2 = i / f;
        int round = Math.round(((rect.width() - 80) - 24) / (1.0f + f2));
        int width = ((rect.width() - 80) - 24) - round;
        this.logical.set((rect.right - 40) - round, rect.top + 40, rect.right - 40, rect.bottom - 40);
        float f3 = round;
        this.slotScale = Math.min(width / f3, f2);
        int round2 = Math.round(f3 * this.slotScale);
        int round3 = Math.round(f * this.slotScale);
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = rect.top + 40 + ((i + 24) * i2) + ((i - round3) / 2);
            int i4 = rect.left + 40 + ((width - round2) / 2);
            this.slots[i2] = new Rect(i4, i3, i4 + round2, i3 + round3);
        }
    }

    public Rect mainFollowing(float f) {
        float width = this.logical.width() + f;
        float height = this.logical.height() * (width / this.logical.width());
        int round = Math.round(this.logical.centerY() - (height / 2.0f));
        return new Rect(Math.round(this.logical.right - width), round, this.logical.right, Math.round(round + height));
    }

    public float[] matrixFor(Rect rect) {
        float width = rect.width() / this.logical.width();
        return new float[]{width, rect.left - (this.logical.left * width), rect.top - (this.logical.top * width)};
    }

    public static Rect between(Rect rect, Rect rect2, float f, Rect rect3) {
        rect3.set(Math.round(rect.left + ((rect2.left - rect.left) * f)), Math.round(rect.top + ((rect2.top - rect.top) * f)), Math.round(rect.right + ((rect2.right - rect.right) * f)), Math.round(rect.bottom + ((rect2.bottom - rect.bottom) * f)));
        return rect3;
    }
}
