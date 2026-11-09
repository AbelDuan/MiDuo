package dev.duo.taskcore;

/* loaded from: classes.dex */
public final class h {
    public static final int A = 4096;
    public static final int B = 0;
    public static final int C = 1;
    public static final int D = 2;
    public static final int E = 3;
    public static final int F = 4;
    public static final int G = 5;
    private static final int H = 1950482432;
    public static volatile java.lang.String I = "";
    public static volatile java.lang.String J = "";
    public static final int a = 15991297;
    public static final java.lang.String b = "android.view.IWindowManager";
    public static final int c = 1;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 4;
    public static final int h = 5;
    public static final int i = 6;
    public static final int j = 7;
    public static final int k = 8;
    public static final int l = 9;
    public static final int m = 10;
    public static final int n = 11;
    public static final int o = 12;
    public static final int p = 1;
    public static final int q = 2;
    public static final int r = 3;
    public static final int s = 4;
    public static final int t = 1;
    public static final int u = 2;
    public static final int v = 3;
    public static final int w = 4;
    public static final java.lang.String x = "dev.duo.taskcore.source";
    public static final java.lang.String y = "dev.duo.taskcore.WorkspaceEvents";
    public static final int z = 1;

    public static final class a {
        private final android.os.IBinder a;
        private volatile java.util.concurrent.Executor b;
        private volatile java.util.function.Consumer<dev.duo.taskcore.h.b> c;
        public final android.os.IBinder d = new dev.duo.taskcore.h.a.BinderC0007a();
        public int e;

        /* renamed from: dev.duo.taskcore.h$a$a, reason: collision with other inner class name */
        class BinderC0007a extends android.os.Binder {
            BinderC0007a() {
            }

            @Override // android.os.Binder
            protected boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) throws android.os.RemoteException {
                if (i != 1) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel.enforceInterface(dev.duo.taskcore.h.y);
                if (parcel.readInt() != dev.duo.taskcore.h.a() || parcel.readInt() != 1 || !dev.duo.taskcore.h.J.equals(parcel.readString())) {
                    throw new java.lang.SecurityException("source callback build/protocol mismatch");
                }
                final dev.duo.taskcore.h.b a = dev.duo.taskcore.h.b.a(parcel);
                java.util.concurrent.Executor executor = dev.duo.taskcore.h.a.this.b;
                final java.util.function.Consumer consumer = dev.duo.taskcore.h.a.this.c;
                if (executor == null || consumer == null) {
                    throw new java.lang.IllegalStateException("source listener not set");
                }
                executor.execute(new java.lang.Runnable() { // from class: dev.duo.taskcore.h$a$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        consumer.accept(a);
                    }
                });
                return true;
            }
        }

        public interface b<T> {
            T a(android.os.Parcel parcel);
        }

        public interface c {
            void a(android.os.Parcel parcel);
        }

        public a(android.os.IBinder iBinder) {
            this.a = iBinder;
        }

        public static dev.duo.taskcore.h.a a() throws java.lang.ReflectiveOperationException {
            java.lang.Object invoke = java.lang.Class.forName("android.view.WindowManagerGlobal").getMethod("getWindowManagerService", null).invoke(null, null);
            return new dev.duo.taskcore.h.a((android.os.IBinder) invoke.getClass().getMethod("asBinder", null).invoke(invoke, null));
        }

        public java.util.List<dev.duo.taskcore.h.b> b(long j, final android.os.IBinder iBinder) throws dev.duo.taskcore.i.c {
            return (java.util.List) a(11, j, new dev.duo.taskcore.h.a.c() { // from class: dev.duo.taskcore.h$a$$ExternalSyntheticLambda2
                @Override // dev.duo.taskcore.h.a.c
                public final void a(android.os.Parcel parcel) {
                    parcel.writeStrongBinder(iBinder);
                }
            }, new dev.duo.taskcore.h.a.b() { // from class: dev.duo.taskcore.h$a$$ExternalSyntheticLambda3
                @Override // dev.duo.taskcore.h.a.b
                public final java.lang.Object a(android.os.Parcel parcel) {
                    java.util.List a;
                    a = dev.duo.taskcore.h.a.a(parcel);
                    return a;
                }
            });
        }

        public void a(java.util.concurrent.Executor executor, java.util.function.Consumer<dev.duo.taskcore.h.b> consumer) {
            this.c = consumer;
            this.b = executor;
        }

        public void b() throws dev.duo.taskcore.i.c {
            java.lang.String str = (java.lang.String) a(7, 0L, null, new dev.duo.taskcore.h.a.b() { // from class: dev.duo.taskcore.h$a$$ExternalSyntheticLambda1
                @Override // dev.duo.taskcore.h.a.b
                public final java.lang.Object a(android.os.Parcel parcel) {
                    return parcel.readString();
                }
            });
            if (!dev.duo.taskcore.h.J.equals(str)) {
                throw new dev.duo.taskcore.i.c("system_server 代码版本 " + str + " ≠ 本包 " + dev.duo.taskcore.h.J + "（系统端尚未加载本版本，暂不能进入工作台）");
            }
        }

        public void a(long j, final android.os.IBinder iBinder, final android.os.IBinder iBinder2, final android.os.IBinder iBinder3, final int i) throws dev.duo.taskcore.i.c {
            a(9, j, new dev.duo.taskcore.h.a.c() { // from class: dev.duo.taskcore.h$a$$ExternalSyntheticLambda0
                @Override // dev.duo.taskcore.h.a.c
                public final void a(android.os.Parcel parcel) {
                    dev.duo.taskcore.h.a.a(iBinder, iBinder2, iBinder3, i, parcel);
                }
            }, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(android.os.IBinder iBinder, android.os.IBinder iBinder2, android.os.IBinder iBinder3, int i, android.os.Parcel parcel) {
            parcel.writeStrongBinder(iBinder);
            parcel.writeStrongBinder(iBinder2);
            parcel.writeStrongBinder(iBinder3);
            parcel.writeInt(i);
        }

        public void a(long j, final android.os.IBinder iBinder) throws dev.duo.taskcore.i.c {
            a(10, j, new dev.duo.taskcore.h.a.c() { // from class: dev.duo.taskcore.h$a$$ExternalSyntheticLambda4
                @Override // dev.duo.taskcore.h.a.c
                public final void a(android.os.Parcel parcel) {
                    parcel.writeStrongBinder(iBinder);
                }
            }, null);
        }

        public void a(long j) throws dev.duo.taskcore.i.c {
            a(12, j, null, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ java.util.List a(android.os.Parcel parcel) {
            int readInt = parcel.readInt();
            java.util.ArrayList arrayList = new java.util.ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(dev.duo.taskcore.h.b.a(parcel));
            }
            return arrayList;
        }

        public <T> T a(int i, long j, dev.duo.taskcore.h.a.c cVar, dev.duo.taskcore.h.a.b<T> bVar) throws dev.duo.taskcore.i.c {
            android.os.Parcel obtain = android.os.Parcel.obtain();
            android.os.Parcel obtain2 = android.os.Parcel.obtain();
            try {
                try {
                    dev.duo.taskcore.h.a(obtain, i, j, this.d);
                    if (cVar != null) {
                        cVar.a(obtain);
                    }
                    if (this.a.transact(dev.duo.taskcore.h.a, obtain, obtain2, 0)) {
                        if (obtain2.readInt() == dev.duo.taskcore.h.a()) {
                            int readInt = obtain2.readInt();
                            boolean z = obtain2.readInt() != 0;
                            this.e = obtain2.readInt();
                            java.lang.String readString = obtain2.readString();
                            if (readInt == 0 && z) {
                                return bVar == null ? null : bVar.a(obtain2);
                            }
                            throw new dev.duo.taskcore.i.c("system_server " + readInt + ": " + readString);
                        }
                        throw new dev.duo.taskcore.i.c("system_server 未加载本模块协作代码（系统端尚未加载本版本，暂不能进入工作台）");
                    }
                    throw new dev.duo.taskcore.i.c("system_server 未加载工作台协作代码（系统端尚未加载本版本，暂不能进入工作台）");
                } catch (android.os.RemoteException e) {
                    throw new dev.duo.taskcore.i.c("system_server 调用失败: " + e);
                }
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }
    }

    public static final class b {
        public final long a;
        public final int b;
        public final int c;
        public final int d;
        public final android.os.IBinder e;
        public final android.os.IBinder f;
        public final dev.duo.taskcore.h.c g;
        public final dev.duo.taskcore.h.c h;
        public final boolean i;

        public b(long j, int i, android.os.IBinder iBinder, int i2, int i3, android.os.IBinder iBinder2, dev.duo.taskcore.h.c cVar, dev.duo.taskcore.h.c cVar2, boolean z) {
            this.a = j;
            this.b = i;
            this.e = iBinder;
            this.c = i2;
            this.d = i3;
            this.f = iBinder2;
            this.g = cVar;
            this.h = cVar2;
            this.i = z;
        }

        static dev.duo.taskcore.h.b a(android.os.Parcel parcel) {
            return new dev.duo.taskcore.h.b(parcel.readLong(), parcel.readInt(), parcel.readStrongBinder(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder(), dev.duo.taskcore.h.c.a(parcel), dev.duo.taskcore.h.c.a(parcel), parcel.readInt() != 0);
        }

        void b(android.os.Parcel parcel) {
            parcel.writeLong(this.a);
            parcel.writeInt(this.b);
            parcel.writeStrongBinder(this.e);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d);
            parcel.writeStrongBinder(this.f);
            dev.duo.taskcore.h.c.a(parcel, this.g);
            dev.duo.taskcore.h.c.a(parcel, this.h);
            parcel.writeInt(this.i ? 1 : 0);
        }
    }

    private h() {
    }

    public static int a() {
        return (I.hashCode() & 65535) ^ H;
    }

    static void a(android.os.Parcel parcel, int i2, long j2, android.os.IBinder iBinder) {
        parcel.writeInterfaceToken(b);
        parcel.writeInt(a());
        parcel.writeInt(1);
        parcel.writeInt(i2);
        parcel.writeLong(j2);
        parcel.writeStrongBinder(iBinder);
        parcel.writeString(J);
    }

    public static final class c {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final android.os.IBinder e;
        public final android.os.IBinder f;

        public c(int i, int i2, int i3, int i4, android.os.IBinder iBinder, android.os.IBinder iBinder2) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = iBinder;
            this.f = iBinder2;
        }

        static void a(android.os.Parcel parcel, dev.duo.taskcore.h.c cVar) {
            parcel.writeInt(cVar == null ? 0 : 1);
            if (cVar == null) {
                return;
            }
            parcel.writeInt(cVar.a);
            parcel.writeInt(cVar.b);
            parcel.writeInt(cVar.c);
            parcel.writeInt(cVar.d);
            parcel.writeStrongBinder(cVar.e);
            parcel.writeStrongBinder(cVar.f);
        }

        static dev.duo.taskcore.h.c a(android.os.Parcel parcel) {
            if (parcel.readInt() == 0) {
                return null;
            }
            return new dev.duo.taskcore.h.c(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder(), parcel.readStrongBinder());
        }
    }

    static void a(android.os.Parcel parcel, android.graphics.Rect rect) {
        if (rect == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(rect.left);
        parcel.writeInt(rect.top);
        parcel.writeInt(rect.right);
        parcel.writeInt(rect.bottom);
    }

    static android.graphics.Rect a(android.os.Parcel parcel) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return new android.graphics.Rect(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }

    static void a(android.os.Parcel parcel, int i2, android.os.IBinder iBinder) {
        parcel.writeInt(i2);
        parcel.writeStrongBinder(iBinder);
    }

    static <S> java.lang.String a(java.util.Map<java.lang.Integer, S> map, android.os.Parcel parcel, java.util.function.Function<S, android.os.IBinder> function) {
        int readInt = parcel.readInt();
        android.os.IBinder readStrongBinder = parcel.readStrongBinder();
        S s2 = map.get(java.lang.Integer.valueOf(readInt));
        if (s2 != null && function.apply(s2) == readStrongBinder) {
            map.remove(java.lang.Integer.valueOf(readInt));
            return null;
        }
        return "task " + readInt + " has no lease with this token";
    }
}
