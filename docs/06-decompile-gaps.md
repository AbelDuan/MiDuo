# 反编译失败点索引（jadx 55 处 Code decompiled incorrectly）

行号一律按本工程 `java/` 目录的 jadx 产物（即 `jadx --deobf --show-bad-code`）。
这些位置 jadx 无法还原成等价 Java，源码里只留下原始指令转储提示。
改这些方法时请以 `apktool/smali` 下同名的 smali 为准。

| # | 文件（java/ 路径） | 行号 | 最近的方法签名 | 对应 smali |
|---|---|---|---|---|
| 1 | `btm/p000m/os4/systemuihook/hypermusiccover/C0007h.java` | 1022 | `private static void m155e(float f) {` | `apktool/smali/btm/m/os4/systemuihook/hypermusiccover/h.smali` |
| 2 | `btm/p000m/os4/systemuihook/newnotificationcenter/C0014e.java` | 985 | `private void m420b() {` | `apktool/smali/btm/m/os4/systemuihook/newnotificationcenter/e.smali` |
| 3 | `btm/p000m/os4/systemuihook/newnotificationcenter/C0014e.java` | 2249 | `private static void m359h0() {` | `apktool/smali/btm/m/os4/systemuihook/newnotificationcenter/e.smali` |
| 4 | `btm/p000m/os4/systemuihook/newnotificationcenter/C0014e.java` | 3398 | `private static void m315a(View view, ArrayList<View> arrayList) {` | `apktool/smali/btm/m/os4/systemuihook/newnotificationcenter/e.smali` |
| 5 | `btm/p000m/os4/systemuihook/newnotificationcenter/C0022m.java` | 361 | `static float m503h(View view) {` | `apktool/smali/btm/m/os4/systemuihook/newnotificationcenter/m.smali` |
| 6 | `dev/duo/fold/C0038g.java` | 214 | `private static int m709b(String str, String str2) {` | `apktool/smali/dev/duo/fold/g.smali` |
| 7 | `dev/duo/fold/Engine.java` | 713 | `public void m594f() throws Exception {` | `apktool/smali/dev/duo/fold/Engine.smali` |
| 8 | `dev/duo/fold/Preflight.java` | 85 | `public void onSensorChanged(SensorEvent sensorEvent) {` | `apktool/smali/dev/duo/fold/Preflight.smali` |
| 9 | `dev/duo/fold/Preflight.java` | 252 | `static JSONArray[] m634a(SensorManager sensorManager) throws InterruptedExceptio` | `apktool/smali/dev/duo/fold/Preflight.smali` |
| 10 | `dev/duo/hookprobe/AlbumPageJob.java` | 73 | `public /* synthetic */ void m759a(Context context, int[] iArr, JobParameters job` | `apktool/smali/dev/duo/hookprobe/AlbumPageJob.smali` |
| 11 | `dev/duo/hookprobe/C0041A.java` | 43 | `static Bundle m745a(Context context) {` | `apktool/smali/dev/duo/hookprobe/A.smali` |
| 12 | `dev/duo/hookprobe/C0041A.java` | 243 | `static Bundle m747a(Bundle bundle) {` | `apktool/smali/dev/duo/hookprobe/A.smali` |
| 13 | `dev/duo/hookprobe/C0050G.java` | 669 | `private void m871a(ClassLoader classLoader, final String str) {` | `apktool/smali/dev/duo/hookprobe/G.smali` |
| 14 | `dev/duo/hookprobe/C0055K.java` | 165 | `public static /* synthetic */ Object m962a(Field field, Field field2, Field fiel` | `apktool/smali/dev/duo/hookprobe/K.smali` |
| 15 | `dev/duo/hookprobe/C0100b.java` | 216 | `static void m1567a(Context context, int[] iArr, d dVar) throws InterruptedExcept` | `apktool/smali/dev/duo/hookprobe/b.smali` |
| 16 | `dev/duo/hookprobe/C0106h.java` | 119 | `public static /* synthetic */ Object m1696a(C0106h c0106h, XposedInterface.Chain` | `apktool/smali/dev/duo/hookprobe/h.smali` |
| 17 | `dev/duo/hookprobe/C0112n.java` | 249 | `private static void m1764h(XposedModule xposedModule, ClassLoader classLoader) {` | `apktool/smali/dev/duo/hookprobe/n.smali` |
| 18 | `dev/duo/hookprobe/C0112n.java` | 661 | `private static synchronized boolean m1753c(Map<String, ?> map, String str) {` | `apktool/smali/dev/duo/hookprobe/n.smali` |
| 19 | `dev/duo/hookprobe/C0112n.java` | 1044 | `public static /* synthetic */ Object m1722a(Field field, Field field2, XposedInt` | `apktool/smali/dev/duo/hookprobe/n.smali` |
| 20 | `dev/duo/hookprobe/C0113o.java` | 670 | `Bundle m1773a(String str, String str2, boolean z, int i, int i2, long j, boolean` | `apktool/smali/dev/duo/hookprobe/o.smali` |
| 21 | `dev/duo/hookprobe/C0114p.java` | 141 | `private static synchronized void m1885d() {` | `apktool/smali/dev/duo/hookprobe/p.smali` |
| 22 | `dev/duo/hookprobe/C0116r.java` | 88 | `static List<a> m1899a(Context context, C0113o c0113o, boolean z, boolean z2, Set` | `apktool/smali/dev/duo/hookprobe/r.smali` |
| 23 | `dev/duo/hookprobe/C0119u.java` | 606 | `synchronized void m2003d(IBinder iBinder) {` | `apktool/smali/dev/duo/hookprobe/u.smali` |
| 24 | `dev/duo/hookprobe/C0119u.java` | 722 | `public /* synthetic */ Object m1978a(Handler handler, XposedInterface.Chain chai` | `apktool/smali/dev/duo/hookprobe/u.smali` |
| 25 | `dev/duo/hookprobe/C0119u.java` | 804 | `synchronized void m1993a(IBinder iBinder, long j, int i, long j2) {` | `apktool/smali/dev/duo/hookprobe/u.smali` |
| 26 | `dev/duo/hookprobe/C0119u.java` | 874 | `void m1991a(int i, IBinder iBinder, Parcel parcel, Parcel parcel2) throws Except` | `apktool/smali/dev/duo/hookprobe/u.smali` |
| 27 | `dev/duo/hookprobe/C0122x.java` | 360 | `synchronized boolean m2025a(String str, float[] fArr, boolean z, boolean z2, lon` | `apktool/smali/dev/duo/hookprobe/x.smali` |
| 28 | `dev/duo/hookprobe/ConfigProvider.java` | 151 | `public Bundle call(String str, String str2, Bundle bundle) {` | `apktool/smali/dev/duo/hookprobe/ConfigProvider.smali` |
| 29 | `dev/duo/hookprobe/MainActivity.java` | 2214 | `public void m1185z() {` | `apktool/smali/dev/duo/hookprobe/MainActivity.smali` |
| 30 | `dev/duo/hookprobe/RailCustomActivity.java` | 1206 | `private void m1321d(final int i) {` | `apktool/smali/dev/duo/hookprobe/RailCustomActivity.smali` |
| 31 | `dev/duo/hookprobe/StandbyTrialActivity.java` | 86 | `C0086c(Context context) {` | `apktool/smali/dev/duo/hookprobe/StandbyTrialActivity.smali` |
| 32 | `dev/duo/hookprobe/TentClockActivity.java` | 349 | `C0093f(Context context) {` | `apktool/smali/dev/duo/hookprobe/TentClockActivity.smali` |
| 33 | `dev/duo/icons/C0126b.java` | 84 | `public /* synthetic */ void m2089a(String str, Intent intent, String str2, Resul` | `apktool/smali/dev/duo/icons/b.smali` |
| 34 | `dev/duo/icons/C0128d.java` | 251 | `public Properties m2101a(String str, Path path, String str2, Path path2) throws ` | `apktool/smali/dev/duo/icons/d.smali` |
| 35 | `dev/duo/icons/C0129e.java` | 450 | `static String m2111a(byte[] bArr, String str) {` | `apktool/smali/dev/duo/icons/e.smali` |
| 36 | `dev/duo/icons/C0129e.java` | 508 | `static int m2106a(byte[] bArr) throws IOException {` | `apktool/smali/dev/duo/icons/e.smali` |
| 37 | `dev/duo/icons/C0129e.java` | 743 | `public static b m2108a(File file, File file2, String str, c cVar) throws Excepti` | `apktool/smali/dev/duo/icons/e.smali` |
| 38 | `dev/duo/taskcore/WorkspaceSession.java` | 1310 | `private void resume(String str, Object obj) {` | `apktool/smali/dev/duo/taskcore/WorkspaceSession.smali` |
| 39 | `dev/duo/taskcore/WorkspaceShell.java` | 2818 | `public void m3396lambda$publishGroupFrame$51$devduotaskcoreWorkspaceShell(IBinde` | `apktool/smali/dev/duo/taskcore/WorkspaceShell.smali` |
| 40 | `dev/duo/taskcore/WorkspaceShell.java` | 3527 | `private boolean playPending(IBinder iBinder, Object obj, SurfaceControl.Transact` | `apktool/smali/dev/duo/taskcore/WorkspaceShell.smali` |
| 41 | `dev/duo/taskcore/WorkspaceWm.java` | 501 | `/* synthetic */ Object m3413lambda$installSourceHooks$7$devduotaskcoreWorkspaceW` | `apktool/smali/dev/duo/taskcore/WorkspaceWm.smali` |
| 42 | `dev/duo/taskcore/WorkspaceWm.java` | 1035 | `private String dispatch(int i, long j, IBinder iBinder, int i2, int i3, Parcel p` | `apktool/smali/dev/duo/taskcore/WorkspaceWm.smali` |
| 43 | `dev/duo/workspaceprobe/C0143b.java` | 7263 | `private void m2628h2() {` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 44 | `dev/duo/workspaceprobe/C0143b.java` | 7951 | `public void m2678l2() {` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 45 | `dev/duo/workspaceprobe/C0143b.java` | 8654 | `public void onPackageLoaded(XposedModuleInterface.PackageLoadedParam packageLoad` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 46 | `dev/duo/workspaceprobe/C0143b.java` | 8963 | `public List<Object[]> m2175H() {` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 47 | `dev/duo/workspaceprobe/C0143b.java` | 9269 | `public /* synthetic */ void m2498b0() {` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 48 | `dev/duo/workspaceprobe/C0143b.java` | 9423 | `public /* synthetic */ void m2593f0() {` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 49 | `dev/duo/workspaceprobe/C0143b.java` | 12111 | `public void m2730r() {` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 50 | `dev/duo/workspaceprobe/C0143b.java` | 14728 | `public /* synthetic */ void m2570e(final Object obj) {` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 51 | `dev/duo/workspaceprobe/C0143b.java` | 15887 | `private boolean m2489b(SurfaceControl.Transaction transaction, boolean z) {` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 52 | `dev/duo/workspaceprobe/C0143b.java` | 16836 | `public static int m2257a(SurfaceControl surfaceControl) throws ReflectiveOperati` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 53 | `dev/duo/workspaceprobe/C0143b.java` | 17432 | `public /* synthetic */ Object m2300a(boolean z, XposedInterface.Chain chain) thr` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 54 | `dev/duo/workspaceprobe/C0143b.java` | 18811 | `public /* synthetic */ Object m2298a(Method method, Method method2, Method metho` | `apktool/smali/dev/duo/workspaceprobe/b.smali` |
| 55 | `dev/duo/workspaceprobe/C0147f.java` | 391 | `public static void m2947b(int i, boolean z) {` | `apktool/smali/dev/duo/workspaceprobe/f.smali` |

共 55 处，分布在 31 个文件。
