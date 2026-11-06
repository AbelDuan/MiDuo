package io.github.libxposed.service;

import io.github.libxposed.service.XposedService;
import java.util.Objects;

/* loaded from: classes.dex */
public final class HotReloadResult extends Record {
    private final String message;
    private final Status status;

    public enum Status {
        SUCCEEDED,
        FAILED,
        UNSUPPORTED,
        IN_PROGRESS,
        PROCESS_DIED
    }

    private /* synthetic */ boolean $record$equals(Object obj) {
        if (!(obj instanceof HotReloadResult)) {
            return false;
        }
        HotReloadResult hotReloadResult = (HotReloadResult) obj;
        return Objects.equals(this.status, hotReloadResult.status) && Objects.equals(this.message, hotReloadResult.message);
    }

    private /* synthetic */ Object[] $record$getFieldsAsObjects() {
        return new Object[]{this.status, this.message};
    }

    @Override // java.lang.Record
    public final boolean equals(Object o) {
        return $record$equals(o);
    }

    @Override // java.lang.Record
    public final int hashCode() {
        return HotReloadResult$$ExternalSyntheticRecord0.m3144m(this.status, this.message);
    }

    public String message() {
        return this.message;
    }

    public Status status() {
        return this.status;
    }

    @Override // java.lang.Record
    public final String toString() {
        return HotReloadResult$$ExternalSyntheticRecord1.m3145m($record$getFieldsAsObjects(), HotReloadResult.class, "status;message");
    }

    public HotReloadResult(Status status, String message) {
        this.status = status;
        this.message = message;
    }

    static HotReloadResult from(int code, String message) {
        Status status;
        switch (code) {
            case 0:
                status = Status.SUCCEEDED;
                break;
            case 1:
                status = Status.FAILED;
                break;
            case 2:
                status = Status.UNSUPPORTED;
                break;
            case 3:
                status = Status.IN_PROGRESS;
                break;
            case 4:
                status = Status.PROCESS_DIED;
                break;
            default:
                throw new XposedService.ServiceException("Invalid hot reload status code: " + code);
        }
        return new HotReloadResult(status, message);
    }
}
