package dev.duo.hookprobe;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: dev.duo.hookprobe.M */
/* loaded from: classes.dex */
final class C0057M {

    /* renamed from: a */
    static final long f955a = 30;

    /* renamed from: b */
    private static final int f956b = 16777216;

    /* renamed from: dev.duo.hookprobe.M$a */
    static final class a extends IllegalStateException {
        a() {
            super("Root 命令输出过大");
        }
    }

    private C0057M() {
    }

    /* renamed from: a */
    static String m977a(String str) throws Exception {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedException("检查已取消");
        }
        final Process start = new ProcessBuilder("su", "-c", str).redirectErrorStream(true).start();
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        final IOException[] iOExceptionArr = new IOException[1];
        Thread thread = new Thread(new Runnable() { // from class: dev.duo.hookprobe.M$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0057M.m978a(start, byteArrayOutputStream, iOExceptionArr);
            }
        }, "MiDuoRootRead");
        thread.setDaemon(true);
        thread.start();
        long nanoTime = System.nanoTime();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long nanos = nanoTime + timeUnit.toNanos(f955a);
        try {
            try {
                boolean waitFor = start.waitFor(f955a, timeUnit);
                if (waitFor) {
                    thread.join(Math.max(1L, TimeUnit.NANOSECONDS.toMillis(nanos - System.nanoTime())));
                }
                if (!waitFor || thread.isAlive()) {
                    throw new TimeoutException("Root 命令超过 30 秒没有结束");
                }
                start.destroyForcibly();
                if (byteArrayOutputStream.size() > f956b) {
                    throw new a();
                }
                IOException iOException = iOExceptionArr[0];
                if (iOException != null) {
                    throw iOException;
                }
                String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                if (start.exitValue() == 0) {
                    return byteArrayOutputStream2;
                }
                throw new IllegalStateException(byteArrayOutputStream2.trim());
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw e;
            }
        } catch (Throwable th) {
            start.destroyForcibly();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static /* synthetic */ void m978a(Process process, ByteArrayOutputStream byteArrayOutputStream, IOException[] iOExceptionArr) {
        int read;
        byte[] bArr = new byte[8192];
        try {
            InputStream inputStream = process.getInputStream();
            while (byteArrayOutputStream.size() <= f956b && (read = inputStream.read(bArr)) >= 0) {
                try {
                    byteArrayOutputStream.write(bArr, 0, read);
                } finally {
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException e) {
            iOExceptionArr[0] = e;
        }
    }
}
