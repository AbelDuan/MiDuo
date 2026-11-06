.class final Ldev/duo/hookprobe/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x1000000

.field static final b:I = 0x1000

.field static final c:Ljava/lang/String; = "MIDUO_CAPTURE_ROOT_READY"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 2

    .line 16
    const-string v0, "MY=$$\nsnap() {\n  echo \"=== \u72b6\u6001\u5feb\u7167\uff1a$1\uff08$(date \'+%F %T\')\uff09===\"\n  echo \"--- \u8fdb\u7a0b\u4e0e MiDuo \u52a0\u8f7d\u6838\u5bf9\uff08\u8f7d\u5165\u5305\u5e94\u7b49\u4e8e pm path\uff09\"\n  echo \"pm path: $(pm path dev.duo.hookprobe | head -1)\"\n  for p in com.miui.home com.android.systemui system_server com.miui.personalassistant com.android.quicksearchbox dev.duo.hookprobe MiDuoFoldEngine; do\n    pid=$(pidof $p | cut -d\' \' -f1)\n    if [ -z \"$pid\" ]; then echo \"$p: \u672a\u8fd0\u884c\"; continue; fi\n    up=$(ps -A -o PID,ETIME | while read a b; do [ \"$a\" = \"$pid\" ] && echo $b; done)\n    apk=$(grep -m1 -o \'/data/app/[^ ]*dev.duo.hookprobe[^ ]*base.apk\' /proc/$pid/maps 2>/dev/null)\n    echo \"$p: pid=$pid \u5df2\u8fd0\u884c=$up \u8f7d\u5165\u5305=${apk:-\u65e0\u6620\u5c04}\"\n  done\n  echo \"--- \u7a97\u53e3\u4e0e\u6298\u53e0\u72b6\u6001\"\n  timeout 4 dumpsys window displays | head -c 60000\n  timeout 3 dumpsys device_state | head -c 6000\n  echo \"--- \u663e\u793a\u53c2\u6570\"\n  timeout 3 dumpsys display | grep -E \"DisplayDeviceInfo|mBaseDisplayInfo\" | cut -c1-220 | head -6\n  echo \"--- \u4efb\u52a1\u4e0e\u7a97\u53e3\u6a21\u5f0f\uff08\u5de5\u4f5c\u53f0/\u5206\u5c4f\u6210\u5458\uff09\"\n  timeout 5 dumpsys activity activities | grep -E \"topResumedActivity|mResumedActivity|Task\\{\" | cut -c1-220 | head -80\n  echo \"--- \u56fe\u5c42\uff08MiDuo / \u6b8b\u7559\u56fe\u5c42\uff09\"\n  timeout 4 dumpsys SurfaceFlinger --list | grep -E \"Duo|MiDuo|FloatingIcon|transition-leash|Task=|Bubbles\" | cut -c1-200 | head -80\n  echo \"\u56fe\u5c42\u603b\u6570=$(timeout 4 dumpsys SurfaceFlinger --list | wc -l)\"\n  echo \"--- \u5c0f\u7ec4\u4ef6\uff08MiDuo / \u76f8\u518c\u63d0\u4f9b\u65b9\uff09\"\n  timeout 5 dumpsys appwidget | grep -E -i \"hookprobe|com.miui.gallery|Provider\\{|appWidgetId\" | cut -c1-200 | head -60\n  echo \"--- \u6743\u9650\u4e0e\u7cfb\u7edf\u72b6\u6001\"\n  appops get dev.duo.hookprobe 10017 2>&1 | head -2\n  appops get dev.duo.hookprobe 10020 2>&1 | head -2\n  getprop | grep -E \"debug\\.duo|persist\\.duo|ro\\.build\\.version\\.incremental|ro\\.miui\\.ui\\.version\" | head -20\n  echo \"uptime=$(uptime)\"\n  echo \"boot_id=$(cat /proc/sys/kernel/random/boot_id)\"\n  dumpsys battery | grep -E \"level|temperature|status\" | head -4\n  echo \"--- \u5185\u5b58\uff08PSS\uff0c\u770b\u6cc4\u6f0f\uff09\"\n  for p in com.miui.home com.android.systemui dev.duo.hookprobe; do\n    echo \"[$p]\"\n    timeout 4 dumpsys meminfo $p 2>/dev/null | grep -E \"TOTAL PSS|TOTAL:|Java Heap|Native Heap\" | head -3\n  done\n  echo \"--- \u5d29\u6e83/ANR/\u5893\u7891\u8bb0\u5f55\uff08dropbox \u6761\u76ee\uff1a\u65f6\u95f4 \u7c7b\u578b\uff09\"\n  timeout 5 dumpsys dropbox 2>/dev/null | grep -E \"crash|anr|tombstone|wtf\" | grep -v \"Low priority\" | tail -30 | cut -c1-120\n  echo \"--- \u6700\u8fd1\u5d29\u6e83/ANR \u7684\u8fdb\u7a0b\u4e0e\u4e3b\u9898\uff08dropbox \u5185\u5bb9\uff09\"\n  timeout 6 dumpsys dropbox --print 2>/dev/null | grep -E \"^(Process|Subject):\" | tail -20 | cut -c1-160\n}\necho \"=== \u62a5\u544a\u76ee\u5f55\uff1a\u5f00\u5934\u72b6\u6001\u5feb\u7167 / \u5e38\u9a7b\u8bb0\u5f55\uff08\u6700\u8fd1\uff09 / \u590d\u73b0\u671f\u95f4\u65e5\u5fd7 / \u7ed3\u5c3e\u72b6\u6001\u5feb\u7167 ===\"\nsnap \u5f00\u5934\necho \"=== \u5e38\u9a7b\u8bb0\u5f55\uff08\u6700\u8fd1\uff0c\u53ef\u80fd\u4e3a\u7a7a\uff09 ===\"\nls -tr /data/local/tmp/miduo-ring/ring.* 2>/dev/null | head -4 | while read f; do cat \"$f\"; done | tail -c 4194304\necho \"=== \u590d\u73b0\u671f\u95f4\u65e5\u5fd7\uff08\u6240\u6709 Duo*/MiDuo*/TaskCore* \u6807\u7b7e + \u6240\u6709\u8b66\u544a\u9519\u8bef + \u7cfb\u7edf\u5173\u952e I \u7ea7\uff09 ===\"\nlogcat -b main -b system -b crash -b events -v threadtime -T 1 | grep --line-buffered -E \"^[0-9-]+ +[0-9:.]+ +[0-9]+ +[0-9]+ ([VDIWEF] (Duo|MiDuo|TaskCore)[A-Za-z0-9_]* *:|[WEF] |I (ActivityTaskManager|ActivityManager|WindowManager|AppWidgetServiceImpl|PackageManager|DEBUG|am_anr|am_crash|am_proc_start|am_kill|wm_activity_launch_time) *:)\" &\ncapture_pid=$!\nexec 3<&0\n(read -r capture_stop <&3; pkill -P $MY logcat 2>/dev/null) &\nstop_pid=$!\ntrap \'kill \"$stop_pid\" 2>/dev/null; pkill -P $MY logcat 2>/dev/null; wait 2>/dev/null\' EXIT\nwait \"$capture_pid\"\necho \"=== \u590d\u73b0\u7ed3\u675f ===\"\nsnap \u7ed3\u5c3e\n"

    const/16 v1, 0xbe

    invoke-static {v0, v1}, Ldev/duo/hookprobe/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ \"$(id -u)\" = 0 ] || { echo \'\u9700\u8981 Root \u6388\u6743\'; exit 1; }; echo MIDUO_CAPTURE_ROOT_READY; exec timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " sh -c \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 18
    const-string v0, "\'\\\'\'"

    const-string v1, "\'"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/16 v3, 0x400

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Root \u54cd\u5e94\u8fc7\u957f"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 9
    const-string v0, "MIDUO_CAPTURE_ROOT_READY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root \u672a\u5c31\u7eea\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    const/16 v0, 0x2000

    new-array v1, v0, [B

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    int-to-long v2, v0

    .line 13
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return v3

    .line 15
    :cond_0
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    sub-long/2addr p2, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "[ \"$(id -u)\" = 0 ] || { echo NOT_ROOT; exit 1; }\nD=/data/local/tmp/miduo-ring\nmkdir -p \"$D\" && chmod 700 \"$D\"\nif pgrep -f \'miduo-ring/ring[.]sh\' >/dev/null; then echo RING_ALREADY; exit 0; fi\ncat > \"$D/ring.sh\" <<\'EOS\'\nD=/data/local/tmp/miduo-ring\nlogcat -b main -b system -b crash -b events -v threadtime -T 1 | grep --line-buffered -E \"^[0-9-]+ +[0-9:.]+ +[0-9]+ +[0-9]+ ([VDIWEF] (Duo|MiDuo|TaskCore)[A-Za-z0-9_]* *:|[EF] (AndroidRuntime|DEBUG|libc|ActivityManager|ActivityTaskManager|WindowManager|AppWidgetServiceImpl) *:|I (ActivityTaskManager|ActivityManager|WindowManager|AppWidgetServiceImpl|PackageManager|DEBUG|am_anr|am_crash|am_proc_start|am_kill|wm_activity_launch_time) *:)\" | {\n  i=0\n  while :; do\n    f=\"$D/ring.$((i % 4))\"\n    head -c 2097152 > \"$f\"\n    [ -s \"$f\" ] || break\n    i=$((i + 1))\n  done\n}\nEOS\nsetsid sh \"$D/ring.sh\" </dev/null >/dev/null 2>&1 &\nsleep 1\nif pgrep -f \'miduo-ring/ring[.]sh\' >/dev/null; then echo RING_STARTED; else echo RING_FAILED; fi\n"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ldev/duo/hookprobe/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "[ \"$(id -u)\" = 0 ] || { echo NOT_ROOT; exit 1; }\n# fix412 F2: find the recorder only by its own script name (the [.] keeps this script\'s command line from matching) and end\n# its whole process group (logcat, grep, writer). Matching the logcat command line used to hit the sh -c running this very\n# script, so the folder was never deleted, and it also killed a bug report capture in progress.\nfor p in $(pgrep -f \'miduo-ring/ring[.]sh\'); do\n  g=$(cut -d\' \' -f5 \"/proc/$p/stat\" 2>/dev/null)\n  if [ \"$g\" = \"$p\" ]; then kill -TERM -\"$p\" 2>/dev/null; else kill -TERM \"$p\" 2>/dev/null; fi\ndone\ni=0\nwhile pgrep -f \'miduo-ring/ring[.]sh\' >/dev/null && [ \"$i\" -lt 30 ]; do sleep 0.1; i=$((i + 1)); done\nif pgrep -f \'miduo-ring/ring[.]sh\' >/dev/null; then echo RING_STOP_FAILED; exit 1; fi\nrm -rf /data/local/tmp/miduo-ring\n[ -e /data/local/tmp/miduo-ring ] && { echo RING_STOP_FAILED; exit 1; }\necho RING_STOPPED\n"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ldev/duo/hookprobe/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
