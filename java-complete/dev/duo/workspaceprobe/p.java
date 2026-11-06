package dev.duo.workspaceprobe;

import android.net.LocalServerSocket;
import android.net.LocalSocket;
import android.os.Process;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructTimeval;
import android.util.Log;
import dev.duo.hookprobe.J;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceSession;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class p {
    static final String g = "com.lsposed.miduo.workbench.v1";
    private static final String h = "DuoWorkbenchApi";
    private final Object a = new Object();
    private final String b = Process.myPid() + J.e + SystemClock.elapsedRealtimeNanos();
    private b c = new b("inactive", null, 0);
    private LocalSocket d;
    private boolean e;
    private boolean f;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[WorkspaceSession.State.values().length];
            a = iArr;
            try {
                iArr[WorkspaceSession.State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[WorkspaceSession.State.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[WorkspaceSession.State.RETURN_FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[WorkspaceSession.State.PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[WorkspaceSession.State.PREPARING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[WorkspaceSession.State.ATTACHING.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[WorkspaceSession.State.ACTIVE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[WorkspaceSession.State.TRANSITIONING.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    static final class b {
        final String a;
        final String b;
        final long c;

        b(String str, String str2, long j) {
            this.a = str;
            this.b = str2;
            this.c = j;
        }

        byte[] a() {
            return ("{\"apiVersion\":1,\"state\":\"" + this.a + "\",\"sessionId\":" + (this.b == null ? "null" : "\"" + this.b + "\"") + ",\"revision\":" + this.c + "}\n").getBytes(StandardCharsets.UTF_8);
        }
    }

    p() {
    }

    static String a(WorkspaceSession.State state, boolean z) {
        int[] iArr = a.a;
        int i = iArr[state.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return "inactive";
        }
        if (z || state == WorkspaceSession.State.RETURNING) {
            return "exiting";
        }
        switch (iArr[state.ordinal()]) {
            case 4:
                return "paused";
            case 5:
            case WorkspaceProtocol.QUERY /* 6 */:
                return "entering";
            case 7:
            case WorkspaceProtocol.RELEASE_TASK /* 8 */:
                return "active";
            default:
                throw new IllegalArgumentException("Unknown workbench state " + state);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z;
        LocalSocket localSocket;
        b bVar;
        while (true) {
            synchronized (this.a) {
                while (true) {
                    z = this.e;
                    if (!z || (this.f && this.d != null)) {
                        break;
                    }
                    try {
                        this.a.wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        Log.e(h, "Scene writer interrupted", e);
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
            } catch (IOException e2) {
                synchronized (this.a) {
                    if (this.d == localSocket) {
                        this.d = null;
                    }
                    a(localSocket);
                    Log.d(h, "Scene client disconnected", e2);
                }
            }
        }
    }

    void a(WorkspaceSession.State state, boolean z, long j) {
        String a2 = a(state, z);
        String str = this.b + ":" + j;
        synchronized (this.a) {
            if (a2.equals(this.c.a) && str.equals(this.c.b)) {
                return;
            }
            this.c = new b(a2, str, this.c.c + 1);
            if (this.d != null) {
                this.f = true;
                this.a.notifyAll();
            }
        }
    }

    void a() {
        try {
            final LocalServerSocket localServerSocket = new LocalServerSocket(g);
            synchronized (this.a) {
                this.e = true;
            }
            Thread thread = new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.p$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.p.this.b();
                }
            }, "DuoSceneWrite");
            thread.setDaemon(true);
            thread.start();
            Thread thread2 = new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.p$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    dev.duo.workspaceprobe.p.this.b(localServerSocket);
                }
            }, "DuoSceneAccept");
            thread2.setDaemon(true);
            thread2.start();
            Log.i(h, "Scene API ready com.lsposed.miduo.workbench.v1");
        } catch (IOException e) {
            Log.e(h, "Scene API unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(LocalServerSocket localServerSocket) {
        LocalSocket localSocket;
        while (true) {
            try {
                try {
                    LocalSocket accept = localServerSocket.accept();
                    try {
                        if (accept.getPeerCredentials().getUid() != 0) {
                            a(accept);
                        } else {
                            Os.setsockoptTimeval(accept.getFileDescriptor(), OsConstants.SOL_SOCKET, OsConstants.SO_SNDTIMEO, StructTimeval.fromMillis(1000L));
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
                    } catch (ErrnoException | IOException e) {
                        a(accept);
                        Log.w(h, "Scene client rejected", e);
                    }
                } catch (Throwable th) {
                    synchronized (this.a) {
                        this.e = false;
                        LocalSocket localSocket2 = this.d;
                        this.d = null;
                        this.a.notifyAll();
                        if (localSocket2 != null) {
                            a(localSocket2);
                        }
                        try {
                            localServerSocket.close();
                        } catch (IOException e2) {
                            Log.w(h, "Scene listener close failed", e2);
                        }
                        throw th;
                    }
                }
            } catch (IOException e3) {
                Log.e(h, "Scene API stopped", e3);
                synchronized (this.a) {
                    this.e = false;
                    LocalSocket localSocket3 = this.d;
                    this.d = null;
                    this.a.notifyAll();
                    if (localSocket3 != null) {
                        a(localSocket3);
                    }
                    try {
                        localServerSocket.close();
                        return;
                    } catch (IOException e4) {
                        Log.w(h, "Scene listener close failed", e4);
                        return;
                    }
                }
            }
        }
    }

    private static void a(LocalSocket localSocket) {
        try {
            localSocket.close();
        } catch (IOException e) {
            Log.w(h, "Scene socket close failed", e);
        }
    }
}
