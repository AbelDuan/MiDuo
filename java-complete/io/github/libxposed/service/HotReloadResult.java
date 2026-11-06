package io.github.libxposed.service;

import java.util.Objects;

/**
 * Decompiled from {@code io.github.libxposed.service.HotReloadResult}.
 *
 * The original class extends {@code java.lang.Record}, which Java source cannot
 * do directly. The record machinery is reproduced by hand here so behaviour is
 * preserved: canonical constructor, equals/hashCode/toString and the accessors
 * match the original synthetic implementations.
 */
public final class HotReloadResult {
    private final String message;
    private final Status status;

    public enum Status {
        SUCCEEDED,
        FAILED,
        UNSUPPORTED,
        IN_PROGRESS,
        PROCESS_DIED
    }

    private Object[] getFieldsAsObjects() {
        return new Object[]{this.status, this.message};
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof HotReloadResult)) {
            return false;
        }
        HotReloadResult other = (HotReloadResult) obj;
        return Objects.equals(this.status, other.status)
                && Objects.equals(this.message, other.message);
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.status, this.message);
    }

    public String message() {
        return this.message;
    }

    public Status status() {
        return this.status;
    }

    @Override
    public String toString() {
        return "HotReloadResult[status=" + this.status + ", message=" + this.message + "]";
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
