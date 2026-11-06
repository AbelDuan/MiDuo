package dev.duo.taskcore;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class Frames {
    private Driver running;
    private final Scheduler scheduler;

    interface Scheduler {
        void post(Driver driver);

        void remove(Driver driver);
    }

    static abstract class Driver {
        Runnable end;
        Object handle;

        abstract void frame(long j);

        Driver() {
        }

        final void finish() {
            Runnable runnable = this.end;
            this.end = null;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    Frames(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    void run(Driver driver) {
        Driver driver2 = this.running;
        this.running = driver;
        if (driver2 != null) {
            this.scheduler.remove(driver2);
            driver2.finish();
        }
        if (driver != null) {
            this.scheduler.post(driver);
        }
    }

    boolean current(Driver driver) {
        return this.running == driver;
    }

    void next(Driver driver) {
        if (this.running == driver) {
            this.scheduler.post(driver);
        }
    }

    void done(Driver driver) {
        if (this.running == driver) {
            this.running = null;
        }
        driver.finish();
    }

    static boolean acceptsGesture(boolean z, boolean z2, int i) {
        return !z && z2 && i == 0;
    }
}
