.class public final Lcom/android/server/UiThread;
.super Lcom/android/server/ServiceThread;
.source "UiThread.java"


# static fields
.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/UiThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 35
    const-string/jumbo v0, "android.ui"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 36
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 4

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    if-nez v0, :cond_2d

    .line 47
    new-instance v0, Lcom/android/server/UiThread;

    invoke-direct {v0}, Lcom/android/server/UiThread;-><init>()V

    sput-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 48
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 50
    const-wide/16 v2, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    .line 51
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setSlowDispatchThresholdMs(J)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    .line 54
    :cond_2d
    return-void
.end method

.method public static get()Lcom/android/server/UiThread;
    .registers 2

    .prologue
    .line 57
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 58
    :try_start_3
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 59
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 64
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 65
    :try_start_3
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 66
    sget-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroup(II)V

    .line 42
    invoke-super {p0}, Lcom/android/server/ServiceThread;->run()V

    .line 43
    return-void
.end method
