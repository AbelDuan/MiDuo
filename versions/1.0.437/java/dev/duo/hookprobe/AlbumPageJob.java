package dev.duo.hookprobe;

/* loaded from: classes.dex */
public final class AlbumPageJob extends android.app.job.JobService {
    private static final java.lang.String b = "MiDuoAlbum";
    private static final int c = 41201;
    private static final java.lang.String d = "ids";
    private volatile java.lang.Thread a;

    static void a(android.content.Context context, int[] iArr) {
        android.os.PersistableBundle persistableBundle = new android.os.PersistableBundle();
        persistableBundle.putIntArray(d, iArr);
        int schedule = ((android.app.job.JobScheduler) context.getSystemService(android.app.job.JobScheduler.class)).schedule(new android.app.job.JobInfo.Builder(c, new android.content.ComponentName(context, (java.lang.Class<?>) dev.duo.hookprobe.AlbumPageJob.class)).setExpedited(true).setExtras(persistableBundle).build());
        if (schedule == 1) {
            android.util.Log.i(b, "widget page job scheduled ids=" + java.util.Arrays.toString(iArr));
        } else {
            android.util.Log.w(b, "widget page job not scheduled (result " + schedule + "), left to the MiDuo page");
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final android.app.job.JobParameters jobParameters) {
        final int[] intArray = jobParameters.getExtras().getIntArray(d);
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        final android.content.Context applicationContext = getApplicationContext();
        java.lang.Thread thread = new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.AlbumPageJob$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.AlbumPageJob.this.a(applicationContext, intArray, jobParameters);
            }
        }, "MiDuoAlbumPage");
        this.a = thread;
        thread.start();
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(android.app.job.JobParameters jobParameters) {
        java.lang.Thread thread = this.a;
        if (thread == null) {
            return false;
        }
        thread.interrupt();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void a(android.content.Context r4, int[] r5, android.app.job.JobParameters r6) {
        /*
            r3 = this;
            r0 = 0
            dev.duo.hookprobe.b$d r1 = dev.duo.hookprobe.AlbumWidgetProvider.a(r4)     // Catch: java.lang.Throwable -> Lc java.lang.InterruptedException -> Lf
            dev.duo.hookprobe.C0012b.a(r4, r5, r1)     // Catch: java.lang.Throwable -> Lc java.lang.InterruptedException -> Lf
            r3.jobFinished(r6, r0)
            return
        Lc:
            r4 = move-exception
            r5 = r0
            goto L1d
        Lf:
            r4 = move-exception
            r4 = 1
            java.lang.String r5 = "MiDuoAlbum"
            java.lang.String r1 = "widget page job stopped by the system, left to the MiDuo page"
            android.util.Log.w(r5, r1)     // Catch: java.lang.Throwable -> L19
            return
        L19:
            r5 = move-exception
            r2 = r5
            r5 = r4
            r4 = r2
        L1d:
            if (r5 != 0) goto L22
            r3.jobFinished(r6, r0)
        L22:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.duo.hookprobe.AlbumPageJob.a(android.content.Context, int[], android.app.job.JobParameters):void");
    }
}
