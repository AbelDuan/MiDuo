package io.github.libxposed.service;

import java.util.Objects;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class HookedTarget {
    private final long mLoadedVersionCode;
    private final int mPid;
    private final String mProcessName;
    private final State mState;
    final long mTargetId;
    private final int mUid;

    public enum State {
        UP_TO_DATE,
        STALE,
        RELOADING,
        FAILED
    }

    HookedTarget(long targetId, int uid, int pid, String processName, State state, long loadedVersionCode) {
        this.mTargetId = targetId;
        this.mUid = uid;
        this.mPid = pid;
        this.mProcessName = (String) Objects.requireNonNull(processName);
        this.mState = (State) Objects.requireNonNull(state);
        this.mLoadedVersionCode = loadedVersionCode;
    }

    public int getUid() {
        return this.mUid;
    }

    public int getPid() {
        return this.mPid;
    }

    public String getProcessName() {
        return this.mProcessName;
    }

    public State getState() {
        return this.mState;
    }

    public long getLoadedVersionCode() {
        return this.mLoadedVersionCode;
    }
}
