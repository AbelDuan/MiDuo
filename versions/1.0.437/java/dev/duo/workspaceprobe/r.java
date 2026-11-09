package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class r {
    static final java.lang.String g = "dev.duo.hookprobe.workbench.v1";
    private static final java.lang.String h = "DuoWorkbenchApi";
    private final java.lang.Object a = new java.lang.Object();
    private final java.lang.String b = android.os.Process.myPid() + dev.duo.hookprobe.J.e + android.os.SystemClock.elapsedRealtimeNanos();
    private dev.duo.workspaceprobe.r.b c = new dev.duo.workspaceprobe.r.b("inactive", null, 0);
    private android.net.LocalSocket d;
    private boolean e;
    private boolean f;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[dev.duo.taskcore.i.d.values().length];
            a = iArr;
            try {
                iArr[dev.duo.taskcore.i.d.IDLE.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError e) {
            }
            try {
                a[dev.duo.taskcore.i.d.CLOSED.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError e2) {
            }
            try {
                a[dev.duo.taskcore.i.d.RETURN_FAILED.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError e3) {
            }
            try {
                a[dev.duo.taskcore.i.d.PAUSED.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError e4) {
            }
            try {
                a[dev.duo.taskcore.i.d.PREPARING.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError e5) {
            }
            try {
                a[dev.duo.taskcore.i.d.ATTACHING.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError e6) {
            }
            try {
                a[dev.duo.taskcore.i.d.ACTIVE.ordinal()] = 7;
            } catch (java.lang.NoSuchFieldError e7) {
            }
            try {
                a[dev.duo.taskcore.i.d.TRANSITIONING.ordinal()] = 8;
            } catch (java.lang.NoSuchFieldError e8) {
            }
        }
    }

    static final class b {
        final java.lang.String a;
        final java.lang.String b;
        final long c;

        b(java.lang.String str, java.lang.String str2, long j) {
            this.a = str;
            this.b = str2;
            this.c = j;
        }

        byte[] a() {
            return ("{\"apiVersion\":1,\"state\":\"" + this.a + "\",\"sessionId\":" + (this.b == null ? "null" : "\"" + this.b + "\"") + ",\"revision\":" + this.c + "}\n").getBytes(java.nio.charset.StandardCharsets.UTF_8);
        }
    }

    r() {
    }

    static java.lang.String a(dev.duo.taskcore.i.d dVar, boolean z) {
        int[] iArr = dev.duo.workspaceprobe.r.a.a;
        int i = iArr[dVar.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return "inactive";
        }
        if (z || dVar == dev.duo.taskcore.i.d.RETURNING) {
            return "exiting";
        }
        switch (iArr[dVar.ordinal()]) {
            case 4:
                return "paused";
            case 5:
            case 6:
                return "entering";
            case 7:
            case dev.duo.taskcore.h.k /* 8 */:
                return "active";
            default:
                throw new java.lang.IllegalArgumentException("Unknown workbench state " + dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z;
        android.net.LocalSocket localSocket;
        dev.duo.workspaceprobe.r.b bVar;
        while (true) {
            synchronized (this.a) {
                while (true) {
                    z = this.e;
                    if (!z || (this.f && this.d != null)) {
                        break;
                    }
                    try {
                        this.a.wait();
                    } catch (java.lang.InterruptedException e) {
                        java.lang.Thread.currentThread().interrupt();
                        android.util.Log.e(h, "Scene writer interrupted", e);
                        return;
                    }
                }
                if (!z) {
                    return;
                }
                this.f = false;
                localSocket = this.d;
                bVar = this.c;
            }
            try {
                localSocket.getOutputStream().write(bVar.a());
            } catch (java.io.IOException e2) {
                synchronized (this.a) {
                    if (this.d == localSocket) {
                        this.d = null;
                    }
                    a(localSocket);
                    android.util.Log.d(h, "Scene client disconnected", e2);
                }
            }
        }
    }

    void a(dev.duo.taskcore.i.d dVar, boolean z, long j) {
        java.lang.String a2 = a(dVar, z);
        java.lang.String str = this.b + ":" + j;
        synchronized (this.a) {
            if (a2.equals(this.c.a) && str.equals(this.c.b)) {
                return;
            }
            this.c = new dev.duo.workspaceprobe.r.b(a2, str, this.c.c + 1);
            if (this.d != null) {
                this.f = true;
                this.a.notifyAll();
            }
        }
    }

    void a() {
        try {
            final android.net.LocalServerSocket localServerSocket = new android.net.LocalServerSocket(g);
            synchronized (this.a) {
                this.e = true;
            }
            java.lang.Thread thread = new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.r$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.r.this.b();
                }
            }, "DuoSceneWrite");
            thread.setDaemon(true);
            thread.start();
            java.lang.Thread thread2 = new java.lang.Thread(new java.lang.Runnable() { // from class: dev.duo.workspaceprobe.r$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.r.this.b(localServerSocket);
                }
            }, "DuoSceneAccept");
            thread2.setDaemon(true);
            thread2.start();
            android.util.Log.i(h, "Scene API ready dev.duo.hookprobe.workbench.v1");
        } catch (java.io.IOException e) {
            android.util.Log.e(h, "Scene API unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(android.net.LocalServerSocket localServerSocket) {
        android.net.LocalSocket localSocket;
        while (true) {
            try {
                try {
                    android.net.LocalSocket accept = localServerSocket.accept();
                    try {
                        if (accept.getPeerCredentials().getUid() != 0) {
                            a(accept);
                        } else {
                            android.system.Os.setsockoptTimeval(accept.getFileDescriptor(), android.system.OsConstants.SOL_SOCKET, android.system.OsConstants.SO_SNDTIMEO, android.system.StructTimeval.fromMillis(1000L));
                            synchronized (this.a) {
                                localSocket = this.d;
                                this.d = accept;
                                this.f = true;
                                this.a.notifyAll();
                            }
                            if (localSocket != null) {
                                a(localSocket);
                            }
                        }
                    } catch (android.system.ErrnoException | java.io.IOException e) {
                        a(accept);
                        android.util.Log.w(h, "Scene client rejected", e);
                    }
                } catch (java.lang.Throwable th) {
                    synchronized (this.a) {
                        this.e = false;
                        android.net.LocalSocket localSocket2 = this.d;
                        this.d = null;
                        this.a.notifyAll();
                        if (localSocket2 != null) {
                            a(localSocket2);
                        }
                        try {
                            localServerSocket.close();
                        } catch (java.io.IOException e2) {
                            android.util.Log.w(h, "Scene listener close failed", e2);
                        }
                        throw th;
                    }
                }
            } catch (java.io.IOException e3) {
                android.util.Log.e(h, "Scene API stopped", e3);
                synchronized (this.a) {
                    this.e = false;
                    android.net.LocalSocket localSocket3 = this.d;
                    this.d = null;
                    this.a.notifyAll();
                    if (localSocket3 != null) {
                        a(localSocket3);
                    }
                    try {
                        localServerSocket.close();
                        return;
                    } catch (java.io.IOException e4) {
                        android.util.Log.w(h, "Scene listener close failed", e4);
                        return;
                    }
                }
            }
        }
    }

    private static void a(android.net.LocalSocket localSocket) {
        try {
            localSocket.close();
        } catch (java.io.IOException e) {
            android.util.Log.w(h, "Scene socket close failed", e);
        }
    }
}
