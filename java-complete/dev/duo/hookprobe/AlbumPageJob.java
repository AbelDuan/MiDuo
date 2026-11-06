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

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class AlbumPageJob extends JobService {
    private static final String b = "MiDuoAlbum";
    private static final int c = 41201;
    private static final String d = "ids";
    private volatile Thread a;

    static void a(Context context, int[] iArr) {
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putIntArray(d, iArr);
        int schedule = ((JobScheduler) context.getSystemService(JobScheduler.class)).schedule(new JobInfo.Builder(c, new ComponentName(context, (Class<?>) dev.duo.hookprobe.AlbumPageJob.class)).setExpedited(true).setExtras(persistableBundle).build());
        if (schedule == 1) {
            Log.i(b, "widget page job scheduled ids=" + Arrays.toString(iArr));
        } else {
            Log.w(b, "widget page job not scheduled (result " + schedule + "), left to the MiDuo page");
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        final int[] intArray = jobParameters.getExtras().getIntArray(d);
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        final Context applicationContext = getApplicationContext();
        Thread thread = new Thread(new Runnable() { // from class: dev.duo.hookprobe.AlbumPageJob$$ExternalSyntheticLambda0
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
    public boolean onStopJob(JobParameters jobParameters) {
        Thread thread = this.a;
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
    */
    public /* synthetic */ void a(Context context, int[] iArr, JobParameters jobParameters) {
        boolean z;
        try {
            dev.duo.hookprobe.b.a(context, iArr, AlbumWidgetProvider.a(context));
            jobFinished(jobParameters, false);
        } catch (InterruptedException e) {
            try {
                Log.w(b, "widget page job stopped by the system, left to the MiDuo page");
            } catch (Throwable th) {
                z = true;

                if (z) {
                    jobFinished(jobParameters, false);
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
            z = false;
            if (z) {
            }
        }
    }
}
