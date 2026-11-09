package dev.duo.hookprobe;

/* loaded from: classes.dex */
final class M {
    static final long a = 30;
    private static final int b = 16777216;

    static final class a extends java.lang.IllegalStateException {
        a() {
            super("Root 命令输出过大");
        }
    }

    private M() {
    }

    static java.lang.String a(java.lang.String str) throws java.lang.Exception {
        return a(str, false);
    }

    static java.lang.String a(java.lang.String str, boolean z) throws java.lang.Exception {
        if (java.lang.Thread.currentThread().isInterrupted()) {
            throw new java.lang.InterruptedException("检查已取消");
        }
        final java.lang.Process start = (z ? new java.lang.ProcessBuilder("su", "--mount-master", "-c", str) : new java.lang.ProcessBuilder("su", "-c", str)).redirectErrorStream(true).start();
        final java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        final java.io.IOException[] iOExceptionArr = new java.io.IOException[1];
        java.lang.Thread thread = new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.hookprobe.M$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                dev.duo.hookprobe.M.a(start, byteArrayOutputStream, iOExceptionArr);
            }
        }, "MiDuoRootRead");
        thread.setDaemon(true);
        thread.start();
        long nanoTime = java.lang.System.nanoTime();
        java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.SECONDS;
        long nanos = nanoTime + timeUnit.toNanos(a);
        try {
            try {
                boolean waitFor = start.waitFor(a, timeUnit);
                if (waitFor) {
                    thread.join(java.lang.Math.max(1L, java.util.concurrent.TimeUnit.NANOSECONDS.toMillis(nanos - java.lang.System.nanoTime())));
                }
                if (!waitFor || thread.isAlive()) {
                    throw new java.util.concurrent.TimeoutException("Root 命令超过 30 秒没有结束");
                }
                start.destroyForcibly();
                if (byteArrayOutputStream.size() > b) {
                    throw new dev.duo.hookprobe.M.a();
                }
                java.io.IOException iOException = iOExceptionArr[0];
                if (iOException != null) {
                    throw iOException;
                }
                java.lang.String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                if (start.exitValue() == 0) {
                    return byteArrayOutputStream2;
                }
                throw new java.lang.IllegalStateException(byteArrayOutputStream2.trim());
            } catch (java.lang.InterruptedException e) {
                java.lang.Thread.currentThread().interrupt();
                throw e;
            }
        } catch (java.lang.Throwable th) {
            start.destroyForcibly();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(java.lang.Process process, java.io.ByteArrayOutputStream byteArrayOutputStream, java.io.IOException[] iOExceptionArr) {
        int read;
        byte[] bArr = new byte[8192];
        try {
            java.io.InputStream inputStream = process.getInputStream();
            while (byteArrayOutputStream.size() <= b && (read = inputStream.read(bArr)) >= 0) {
                try {
                    byteArrayOutputStream.write(bArr, 0, read);
                } finally {
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (java.io.IOException e) {
            iOExceptionArr[0] = e;
        }
    }
}
