package dev.duo.taskcore;

import android.graphics.Rect;
import android.os.Parcel;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class TaskBinding {
    public Object controller;
    public boolean enteringPip;
    public final long epoch;
    public final int generation;
    public boolean handedOver;
    public Object host;
    public Object motionRoot;
    public final Origin origin;
    public Snapshot snapshot;
    public Object taskView;
    public boolean toBack;
    public Lease lease = Lease.OBSERVED;
    public final Rect physical = new Rect();

    public enum Lease {
        OBSERVED,
        OWNER_ACQUIRED,
        SURFACE_ATTACHED,
        RETURN_REQUESTED,
        OWNER_RETURNED,
        RELEASED,
        TASK_GONE
    }

    public static final class Origin {
        public final int displayId;
        public final Object info;
        public final Object leash;
        public final String originalOwner;
        public final String packageName;
        public final int taskId;
        public final Object token;
        public final Object tokenBinder;
        public final int userId;

        public Origin(int i, int i2, int i3, Object obj, Object obj2, Object obj3, Object obj4, String str, String str2) {
            this.taskId = i;
            this.userId = i2;
            this.displayId = i3;
            this.token = obj;
            this.tokenBinder = obj2;
            this.info = obj3;
            this.leash = obj4;
            this.packageName = str;
            this.originalOwner = str2;
        }

        public boolean same(int i, Object obj, int i2, int i3) {
            return this.taskId == i && this.tokenBinder == obj && this.userId == i2 && this.displayId == i3;
        }
    }

    public static final class Snapshot {
        public final Rect bounds;
        public final boolean focusable;
        public final boolean hidden;
        public final boolean interceptBack;
        public final boolean trimmable;
        public final int windowingMode;

        public Snapshot(int i, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
            this.windowingMode = i;
            this.bounds = rect;
            this.trimmable = z;
            this.focusable = z2;
            this.hidden = z3;
            this.interceptBack = z4;
        }

        public void write(Parcel parcel) {
            parcel.writeInt(this.windowingMode);
            dev.duo.taskcore.WorkspaceProtocol.writeRect(parcel, this.bounds);
            parcel.writeInt((this.trimmable ? 1 : 0) | (this.focusable ? 2 : 0) | (this.hidden ? 4 : 0) | (this.interceptBack ? 8 : 0));
        }

        public static Snapshot read(Parcel parcel) {
            boolean z;
            boolean z2;
            int readInt = parcel.readInt();
            Rect readRect = dev.duo.taskcore.WorkspaceProtocol.readRect(parcel);
            int readInt2 = parcel.readInt();
            boolean z3 = false;
            boolean z4 = true;
            boolean z5 = (readInt2 & 1) != 0;
            if ((readInt2 & 2) != 0) {
                z = false;
                z3 = true;
            } else {
                z = false;
            }
            if ((readInt2 & 4) != 0) {
                z2 = true;
            } else {
                z2 = true;
                z4 = z;
            }
            if ((readInt2 & 8) != 0) {
                z = z2;
            }
            return new Snapshot(readInt, readRect, z5, z3, z4, z);
        }
    }

    public TaskBinding(Origin origin, long j, int i) {
        this.origin = origin;
        this.epoch = j;
        this.generation = i;
    }

    public boolean owned() {
        return this.lease == Lease.OWNER_ACQUIRED || this.lease == Lease.SURFACE_ATTACHED || this.lease == Lease.RETURN_REQUESTED;
    }

    public String toString() {
        return "task#" + this.origin.taskId + "(" + this.origin.packageName + ",u" + this.origin.userId + ",g" + this.generation + "," + this.lease + ")";
    }
}
