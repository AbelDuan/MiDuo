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
import dev.duo.hookprobe.RailCodec;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceSession;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* renamed from: dev.duo.workspaceprobe.p */
/* loaded from: classes.dex */
final class WorkbenchLocalApi {

    /* renamed from: g */
    static final String f2994g = "dev.duo.hookprobe.workbench.v1";

    /* renamed from: h */
    private static final String f2995h = "DuoWorkbenchApi";

    /* renamed from: a */
    private final Object f2996a = new Object();

    /* renamed from: b */
    private final String f2997b = Process.myPid() + RailCodec.f922e + SystemClock.elapsedRealtimeNanos();

    /* renamed from: c */
    private b f2998c = new b("inactive", null, 0);

    /* renamed from: d */
    private LocalSocket f2999d;

    /* renamed from: e */
    private boolean f3000e;

    /* renamed from: f */
    private boolean f3001f;

    /* renamed from: dev.duo.workspaceprobe.p$a */
    static /* synthetic */ class a {

        /* renamed from: a */
        static final /* synthetic */ int[] f3002a;

        static {
            int[] iArr = new int[WorkspaceSession.State.values().length];
            f3002a = iArr;
            try {
                iArr[WorkspaceSession.State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3002a[WorkspaceSession.State.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3002a[WorkspaceSession.State.RETURN_FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3002a[WorkspaceSession.State.PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3002a[WorkspaceSession.State.PREPARING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3002a[WorkspaceSession.State.ATTACHING.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3002a[WorkspaceSession.State.ACTIVE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f3002a[WorkspaceSession.State.TRANSITIONING.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: dev.duo.workspaceprobe.p$b */
    static final class b {

        /* renamed from: a */
        final String f3003a;

        /* renamed from: b */
        final String f3004b;

        /* renamed from: c */
        final long f3005c;

        b(String str, String str2, long j) {
            this.f3003a = str;
            this.f3004b = str2;
            this.f3005c = j;
        }

        /* renamed from: a */
        byte[] m3143a() {
            return ("{\"apiVersion\":1,\"state\":\"" + this.f3003a + "\",\"sessionId\":" + (this.f3004b == null ? "null" : "\"" + this.f3004b + "\"") + ",\"revision\":" + this.f3005c + "}\n").getBytes(StandardCharsets.UTF_8);
        }
    }

    WorkbenchLocalApi() {
    }

    /* renamed from: a */
    static String m3136a(WorkspaceSession.State state, boolean z) {
        int[] iArr = a.f3002a;
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
    /* renamed from: b */
    public void m3139b() {
        boolean z;
        LocalSocket localSocket;
        b bVar;
        while (true) {
            synchronized (this.f2996a) {
                while (true) {
                    z = this.f3000e;
                    if (!z || (this.f3001f && this.f2999d != null)) {
                        break;
                    }
                    try {
                        this.f2996a.wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        Log.e(f2995h, "Scene writer interrupted", e);
                        return;
                    }
                }
                if (!z) {
                    return;
                }
                this.f3001f = false;
                localSocket = this.f2999d;
                bVar = this.f2998c;
            }
            try {
                localSocket.getOutputStream().write(bVar.m3143a());
            } catch (IOException e2) {
                synchronized (this.f2996a) {
                    if (this.f2999d == localSocket) {
                        this.f2999d = null;
                    }
                    m3138a(localSocket);
                    Log.d(f2995h, "Scene client disconnected", e2);
                }
            }
        }
    }

    /* renamed from: a */
    void m3142a(WorkspaceSession.State state, boolean z, long j) {
        String m3136a = m3136a(state, z);
        String str = this.f2997b + ":" + j;
        synchronized (this.f2996a) {
            if (m3136a.equals(this.f2998c.f3003a) && str.equals(this.f2998c.f3004b)) {
                return;
            }
            this.f2998c = new b(m3136a, str, this.f2998c.f3005c + 1);
            if (this.f2999d != null) {
                this.f3001f = true;
                this.f2996a.notifyAll();
            }
        }
    }

    /* renamed from: a */
    void m3141a() {
        try {
            final LocalServerSocket localServerSocket = new LocalServerSocket(f2994g);
            synchronized (this.f2996a) {
                this.f3000e = true;
            }
            Thread thread = new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.p$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WorkbenchLocalApi.this.m3139b();
                }
            }, "DuoSceneWrite");
            thread.setDaemon(true);
            thread.start();
            Thread thread2 = new Thread(new Runnable() { // from class: dev.duo.workspaceprobe.p$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    WorkbenchLocalApi.this.m3140b(localServerSocket);
                }
            }, "DuoSceneAccept");
            thread2.setDaemon(true);
            thread2.start();
            Log.i(f2995h, "Scene API ready dev.duo.hookprobe.workbench.v1");
        } catch (IOException e) {
            Log.e(f2995h, "Scene API unavailable", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void m3140b(LocalServerSocket localServerSocket) {
        LocalSocket localSocket;
        while (true) {
            try {
                try {
                    LocalSocket accept = localServerSocket.accept();
                    try {
                        if (accept.getPeerCredentials().getUid() != 0) {
                            m3138a(accept);
                        } else {
                            Os.setsockoptTimeval(accept.getFileDescriptor(), OsConstants.SOL_SOCKET, OsConstants.SO_SNDTIMEO, StructTimeval.fromMillis(1000L));
                            synchronized (this.f2996a) {
                                localSocket = this.f2999d;
                                this.f2999d = accept;
                                this.f3001f = true;
                                this.f2996a.notifyAll();
                            }
                            if (localSocket != null) {
                                m3138a(localSocket);
                            }
                        }
                    } catch (ErrnoException | IOException e) {
                        m3138a(accept);
                        Log.w(f2995h, "Scene client rejected", e);
                    }
                } catch (Throwable th) {
                    synchronized (this.f2996a) {
                        this.f3000e = false;
                        LocalSocket localSocket2 = this.f2999d;
                        this.f2999d = null;
                        this.f2996a.notifyAll();
                        if (localSocket2 != null) {
                            m3138a(localSocket2);
                        }
                        try {
                            localServerSocket.close();
                        } catch (IOException e2) {
                            Log.w(f2995h, "Scene listener close failed", e2);
                        }
                        throw th;
                    }
                }
            } catch (IOException e3) {
                Log.e(f2995h, "Scene API stopped", e3);
                synchronized (this.f2996a) {
                    this.f3000e = false;
                    LocalSocket localSocket3 = this.f2999d;
                    this.f2999d = null;
                    this.f2996a.notifyAll();
                    if (localSocket3 != null) {
                        m3138a(localSocket3);
                    }
                    try {
                        localServerSocket.close();
                        return;
                    } catch (IOException e4) {
                        Log.w(f2995h, "Scene listener close failed", e4);
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static void m3138a(LocalSocket localSocket) {
        try {
            localSocket.close();
        } catch (IOException e) {
            Log.w(f2995h, "Scene socket close failed", e);
        }
    }
}
