package dev.duo.taskcore;

import android.graphics.Rect;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import dev.duo.taskcore.WorkspaceProtocol;
import dev.duo.taskcore.WorkspaceSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
public final class WorkspaceProtocol {
    public static final int BEGIN_RETURN = 4;
    public static final int CALL_STATE = 4;
    public static final int CANCEL_SOURCE = 10;
    public static final int ERR_BUILD = 2;
    public static final int ERR_CALLER = 1;
    public static final int ERR_INTERNAL = 5;
    public static final int ERR_SESSION = 3;
    public static final int ERR_TASK = 4;
    public static final String EVENT_INTERFACE = "dev.duo.taskcore.WorkspaceEvents";
    public static final int FINISH_RETURN = 5;
    public static final int FSI_FINISHED = 3;
    public static final int FSI_FOREGROUND = 2;
    public static final int HELLO = 7;
    public static final String INTERFACE = "android.view.IWindowManager";
    public static final int LAYOUT = 3;
    public static final int LOOKUP_SOURCE = 11;
    private static final int MAGIC_BASE = 1950482432;
    public static final int MAX_PAYLOAD = 4096;
    public static final int OK = 0;
    public static final int OPEN = 1;
    public static final int QUERY = 6;
    public static final int REGISTER_SOURCE = 9;
    public static final int RELEASE_TASK = 8;
    public static final int SNAPSHOT = 2;
    public static final int SOURCE_CALLBACK = 1;
    public static final int SOURCE_CROSS_APP = 3;
    public static final int SOURCE_FSI = 2;
    public static final String SOURCE_KEY = "dev.duo.taskcore.source";
    public static final int SOURCE_NOTIFICATION = 1;
    public static final int SOURCE_RESULT = 1;
    public static final int SOURCE_SELF_HOME = 4;
    public static final int TRANSACTION = 15991297;
    public static final int USER_SELECTION = 12;
    public static final int VERSION = 1;
    public static volatile String modulePackage = "";
    public static volatile String buildId = "";

    public static int magic() {
        return (modulePackage.hashCode() & 65535) ^ MAGIC_BASE;
    }

    private WorkspaceProtocol() {
    }

    static void header(Parcel parcel, int i, long j, IBinder iBinder) {
        parcel.writeInterfaceToken(INTERFACE);
        parcel.writeInt(magic());
        parcel.writeInt(1);
        parcel.writeInt(i);
        parcel.writeLong(j);
        parcel.writeStrongBinder(iBinder);
        parcel.writeString(buildId);
    }

    static void writeRect(Parcel parcel, Rect rect) {
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

    static Rect readRect(Parcel parcel) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return new Rect(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }

    static void writeRelease(Parcel parcel, int i, IBinder iBinder) {
        parcel.writeInt(i);
        parcel.writeStrongBinder(iBinder);
    }

    static <S> String withdraw(Map<Integer, S> map, Parcel parcel, Function<S, IBinder> function) {
        int readInt = parcel.readInt();
        IBinder readStrongBinder = parcel.readStrongBinder();
        S s = map.get(Integer.valueOf(readInt));
        if (s == null || function.apply(s) != readStrongBinder) {
            return "task " + readInt + " has no lease with this token";
        }
        map.remove(Integer.valueOf(readInt));
        return null;
    }

    public static final class TaskRef {
        public final IBinder activityToken;
        public final int activityType;
        public final int displayId;
        public final int taskId;
        public final IBinder taskToken;
        public final int userId;

        public TaskRef(int i, int i2, int i3, int i4, IBinder iBinder, IBinder iBinder2) {
            this.taskId = i;
            this.userId = i2;
            this.displayId = i3;
            this.activityType = i4;
            this.taskToken = iBinder;
            this.activityToken = iBinder2;
        }

        static void write(Parcel parcel, TaskRef taskRef) {
            parcel.writeInt(taskRef == null ? 0 : 1);
            if (taskRef == null) {
                return;
            }
            parcel.writeInt(taskRef.taskId);
            parcel.writeInt(taskRef.userId);
            parcel.writeInt(taskRef.displayId);
            parcel.writeInt(taskRef.activityType);
            parcel.writeStrongBinder(taskRef.taskToken);
            parcel.writeStrongBinder(taskRef.activityToken);
        }

        static TaskRef read(Parcel parcel) {
            if (parcel.readInt() == 0) {
                return null;
            }
            return new TaskRef(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder(), parcel.readStrongBinder());
        }
    }

    public static final class SourceEvent {
        public final long epoch;
        public final int event;
        public final TaskRef foreground;
        public final int kind;
        public final IBinder request;
        public final boolean returnedToMember;
        public final int startResult;
        public final TaskRef target;
        public final IBinder transition;

        public SourceEvent(long j, int i, IBinder iBinder, int i2, int i3, IBinder iBinder2, TaskRef taskRef, TaskRef taskRef2, boolean z) {
            this.epoch = j;
            this.event = i;
            this.request = iBinder;
            this.kind = i2;
            this.startResult = i3;
            this.transition = iBinder2;
            this.target = taskRef;
            this.foreground = taskRef2;
            this.returnedToMember = z;
        }

        void write(Parcel parcel) {
            parcel.writeLong(this.epoch);
            parcel.writeInt(this.event);
            parcel.writeStrongBinder(this.request);
            parcel.writeInt(this.kind);
            parcel.writeInt(this.startResult);
            parcel.writeStrongBinder(this.transition);
            TaskRef.write(parcel, this.target);
            TaskRef.write(parcel, this.foreground);
            parcel.writeInt(this.returnedToMember ? 1 : 0);
        }

        static SourceEvent read(Parcel parcel) {
            return new SourceEvent(parcel.readLong(), parcel.readInt(), parcel.readStrongBinder(), parcel.readInt(), parcel.readInt(), parcel.readStrongBinder(), TaskRef.read(parcel), TaskRef.read(parcel), parcel.readInt() != 0);
        }
    }

    public static final class Client {
        public int lastRevision;
        public final IBinder owner = new AnonymousClass1();
        private volatile Executor sourceExecutor;
        private volatile Consumer<SourceEvent> sourceListener;
        private final IBinder wm;

        public interface Reader<T> {
            T read(Parcel parcel);
        }

        public interface Writer {
            void write(Parcel parcel);
        }

        /* renamed from: dev.duo.taskcore.WorkspaceProtocol$Client$1, reason: invalid class name */
        class AnonymousClass1 extends Binder {
            AnonymousClass1() {
            }

            @Override // android.os.Binder
            protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
                if (i != 1) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel.enforceInterface(dev.duo.taskcore.WorkspaceProtocol.EVENT_INTERFACE);
                if (parcel.readInt() != dev.duo.taskcore.WorkspaceProtocol.magic() || parcel.readInt() != 1 || !dev.duo.taskcore.WorkspaceProtocol.buildId.equals(parcel.readString())) {
                    throw new SecurityException("source callback build/protocol mismatch");
                }
                final SourceEvent read = SourceEvent.read(parcel);
                Executor executor = Client.this.sourceExecutor;
                final Consumer consumer = Client.this.sourceListener;
                if (executor == null || consumer == null) {
                    throw new IllegalStateException("source listener not set");
                }
                executor.execute(new Runnable() { // from class: dev.duo.taskcore.WorkspaceProtocol$Client$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        consumer.accept(read);
                    }
                });
                return true;
            }
        }

        public Client(IBinder iBinder) {
            this.wm = iBinder;
        }

        public static Client connect() throws ReflectiveOperationException {
            Object invoke = Class.forName("android.view.WindowManagerGlobal").getMethod("getWindowManagerService", new Class[0]).invoke(null, new Object[0]);
            return new Client((IBinder) invoke.getClass().getMethod("asBinder", new Class[0]).invoke(invoke, new Object[0]));
        }

        public void setSourceListener(Executor executor, Consumer<SourceEvent> consumer) {
            this.sourceListener = consumer;
            this.sourceExecutor = executor;
        }

        public void registerSource(long j, final IBinder iBinder, final IBinder iBinder2, final IBinder iBinder3, final int i) throws dev.duo.taskcore.WorkspaceSession.Refused {
            call(9, j, new Writer() { // from class: dev.duo.taskcore.WorkspaceProtocol$Client$$ExternalSyntheticLambda1
                @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Writer
                public final void write(Parcel parcel) {
                    dev.duo.taskcore.WorkspaceProtocol.Client.lambda$registerSource$0(iBinder, iBinder2, iBinder3, i, parcel);
                }
            }, null);
        }

        static /* synthetic */ void lambda$registerSource$0(IBinder iBinder, IBinder iBinder2, IBinder iBinder3, int i, Parcel parcel) {
            parcel.writeStrongBinder(iBinder);
            parcel.writeStrongBinder(iBinder2);
            parcel.writeStrongBinder(iBinder3);
            parcel.writeInt(i);
        }

        public void cancelSource(long j, final IBinder iBinder) throws dev.duo.taskcore.WorkspaceSession.Refused {
            call(10, j, new Writer() { // from class: dev.duo.taskcore.WorkspaceProtocol$Client$$ExternalSyntheticLambda2
                @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Writer
                public final void write(Parcel parcel) {
                    parcel.writeStrongBinder(iBinder);
                }
            }, null);
        }

        public void userSelected(long j) throws dev.duo.taskcore.WorkspaceSession.Refused {
            call(12, j, null, null);
        }

        public List<SourceEvent> lookupSource(long j, final IBinder iBinder) throws dev.duo.taskcore.WorkspaceSession.Refused {
            return (List) call(11, j, new Writer() { // from class: dev.duo.taskcore.WorkspaceProtocol$Client$$ExternalSyntheticLambda3
                @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Writer
                public final void write(Parcel parcel) {
                    parcel.writeStrongBinder(iBinder);
                }
            }, new Reader() { // from class: dev.duo.taskcore.WorkspaceProtocol$Client$$ExternalSyntheticLambda4
                @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Reader
                public final Object read(Parcel parcel) {
                    return dev.duo.taskcore.WorkspaceProtocol.Client.lambda$lookupSource$3(parcel);
                }
            });
        }

        static /* synthetic */ List lambda$lookupSource$3(Parcel parcel) {
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i = 0; i < readInt; i++) {
                arrayList.add(SourceEvent.read(parcel));
            }
            return arrayList;
        }

        public void hello() throws dev.duo.taskcore.WorkspaceSession.Refused {
            String str = (String) call(7, 0L, null, new Reader() { // from class: dev.duo.taskcore.WorkspaceProtocol$Client$$ExternalSyntheticLambda0
                @Override // dev.duo.taskcore.WorkspaceProtocol.Client.Reader
                public final Object read(Parcel parcel) {
                    return parcel.readString();
                }
            });
            if (!dev.duo.taskcore.WorkspaceProtocol.buildId.equals(str)) {
                throw new dev.duo.taskcore.WorkspaceSession.Refused("system_server 代码版本 " + str + " ≠ 本包 " + dev.duo.taskcore.WorkspaceProtocol.buildId + "（系统端尚未加载本版本，暂不能进入工作台）");
            }
        }

        public <T> T call(int i, long j, Writer writer, Reader<T> reader) throws dev.duo.taskcore.WorkspaceSession.Refused {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                try {
                    dev.duo.taskcore.WorkspaceProtocol.header(obtain, i, j, this.owner);
                    if (writer != null) {
                        writer.write(obtain);
                    }
                    if (!this.wm.transact(dev.duo.taskcore.WorkspaceProtocol.TRANSACTION, obtain, obtain2, 0)) {
                        throw new dev.duo.taskcore.WorkspaceSession.Refused("system_server 未加载工作台协作代码（系统端尚未加载本版本，暂不能进入工作台）");
                    }
                    if (obtain2.readInt() != dev.duo.taskcore.WorkspaceProtocol.magic()) {
                        throw new dev.duo.taskcore.WorkspaceSession.Refused("system_server 未加载本模块协作代码（系统端尚未加载本版本，暂不能进入工作台）");
                    }
                    int readInt = obtain2.readInt();
                    boolean z = obtain2.readInt() != 0;
                    this.lastRevision = obtain2.readInt();
                    String readString = obtain2.readString();
                    if (readInt != 0 || !z) {
                        throw new dev.duo.taskcore.WorkspaceSession.Refused("system_server " + readInt + ": " + readString);
                    }
                    return reader == null ? null : reader.read(obtain2);
                } catch (RemoteException e) {
                    throw new dev.duo.taskcore.WorkspaceSession.Refused("system_server 调用失败: " + e);
                }
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }
    }
}
