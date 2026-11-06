package dev.duo.taskcore;

import java.lang.reflect.Field;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class SystemGate {
    private static final String[] NAMES = {"keyguardShowing", "keyguardOccluded", "bouncerShowing", "dozing", "shadeOrQsExpanded", "controlCenterExpanded", "panelVisible", "remoteInputActive", "headsUpNotificationShowing", "isSwitchingUsers"};
    public static final SystemGate UNKNOWN = new SystemGate(new boolean[NAMES.length], true);
    private static volatile Field[] fields;
    public final boolean bouncer;
    public final boolean controlCenter;
    public final boolean dozing;
    public final boolean headsUp;
    public final boolean keyguard;
    public final boolean occluded;
    public final boolean panel;
    public final boolean remoteInput;
    public final boolean shade;
    public final boolean switchingUsers;
    public final boolean unknown;

    private SystemGate(boolean[] zArr) {
        this(zArr, false);
    }

    private SystemGate(boolean[] zArr, boolean z) {
        this.unknown = z;
        this.keyguard = zArr[0];
        this.occluded = zArr[1];
        this.bouncer = zArr[2];
        this.dozing = zArr[3];
        this.shade = zArr[4];
        this.controlCenter = zArr[5];
        this.panel = zArr[6];
        this.remoteInput = zArr[7];
        this.headsUp = zArr[8];
        this.switchingUsers = zArr[9];
    }

    public static SystemGate read(Object obj) throws ReflectiveOperationException {
        Field[] fieldArr = fields;
        if (fieldArr == null) {
            int length = NAMES.length;
            Field[] fieldArr2 = new Field[length];
            for (int i = 0; i < length; i++) {
                fieldArr2[i] = obj.getClass().getDeclaredField(NAMES[i]);
                fieldArr2[i].setAccessible(true);
            }
            fields = fieldArr2;
            fieldArr = fieldArr2;
        }
        int length2 = NAMES.length;
        boolean[] zArr = new boolean[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            zArr[i2] = fieldArr[i2].getBoolean(obj);
        }
        return new SystemGate(zArr);
    }

    public boolean blocksActions() {
        return this.unknown || this.keyguard || this.dozing || this.shade || this.controlCenter || this.panel || this.remoteInput || this.headsUp || this.bouncer;
    }

    public boolean requiresClose() {
        return this.unknown || this.switchingUsers;
    }

    public boolean requiresPause() {
        return this.keyguard || this.dozing;
    }

    public String toString() {
        return this.unknown ? "unknown" : "keyguard=" + this.keyguard + " occluded=" + this.occluded + " bouncer=" + this.bouncer + " dozing=" + this.dozing + " shade=" + this.shade + " cc=" + this.controlCenter + " panel=" + this.panel + " remoteInput=" + this.remoteInput + " headsUp=" + this.headsUp + " switching=" + this.switchingUsers;
    }
}
