package dev.duo.hookprobe;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Log;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class AlbumPageJob extends JobService {

    /* renamed from: b */
    private static final String f770b = "MiDuoAlbum";

    /* renamed from: c */
    private static final int f771c = 41201;

    /* renamed from: d */
    private static final String f772d = "ids";

    /* renamed from: a */
    private volatile Thread f773a;

    /* renamed from: a */
    static void m758a(Context context, int[] iArr) {
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putIntArray(f772d, iArr);
        int schedule = ((JobScheduler) context.getSystemService(JobScheduler.class)).schedule(new JobInfo.Builder(f771c, new ComponentName(context, (Class<?>) AlbumPageJob.class)).setExpedited(true).setExtras(persistableBundle).build());
        if (schedule == 1) {
            Log.i(f770b, "widget page job scheduled ids=" + Arrays.toString(iArr));
        } else {
            Log.w(f770b, "widget page job not scheduled (result " + schedule + "), left to the MiDuo page");
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        final int[] intArray = jobParameters.getExtras().getIntArray(f772d);
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        final Context applicationContext = getApplicationContext();
        Thread thread = new Thread(new Runnable() { // from class: dev.duo.hookprobe.AlbumPageJob$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AlbumPageJob.this.m759a(applicationContext, intArray, jobParameters);
            }
        }, "MiDuoAlbumPage");
        this.f773a = thread;
        thread.start();
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        Thread thread = this.f773a;
        if (thread == null) {
            return false;
        }
        thread.interrupt();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void m759a(Context context, int[] iArr, JobParameters jobParameters) {
        boolean z;
        try {
            C0100b.m1567a(context, iArr, AlbumWidgetProvider.m761a(context));
            jobFinished(jobParameters, false);
        } catch (InterruptedException e) {
            try {
                Log.w(f770b, "widget page job stopped by the system, left to the MiDuo page");
            } catch (Throwable th) {
                z = true;
                th = th;
                if (z) {
                    jobFinished(jobParameters, false);
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            z = false;
            if (z) {
            }
        }
    }
}
