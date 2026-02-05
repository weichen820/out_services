.class public Lcom/android/server/SystemServerInitThreadPool;
.super Ljava/lang/Object;
.source "SystemServerInitThreadPool.java"


# static fields
.field private static final IS_DEBUGGABLE:Z

.field private static final SHUTDOWN_TIMEOUT_MILLIS:I = 0x4e20

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/SystemServerInitThreadPool;


# instance fields
.field private mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/android/server/SystemServerInitThreadPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    .line 43
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, "system-server-init-thread"

    .line 47
    const/4 v1, 0x4

    .line 48
    const/4 v2, -0x2

    .line 47
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 40
    return-void
.end method

.method public static declared-synchronized get()Lcom/android/server/SystemServerInitThreadPool;
    .registers 4

    .prologue
    const-class v1, Lcom/android/server/SystemServerInitThreadPool;

    monitor-enter v1

    .line 51
    :try_start_3
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    if-nez v0, :cond_e

    .line 52
    new-instance v0, Lcom/android/server/SystemServerInitThreadPool;

    invoke-direct {v0}, Lcom/android/server/SystemServerInitThreadPool;-><init>()V

    sput-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 54
    :cond_e
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v0, v0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    const-string/jumbo v3, " - it has been shut down"

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 56
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3b

    monitor-exit v1

    return-object v0

    .line 54
    :cond_39
    const/4 v0, 0x0

    goto :goto_15

    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic lambda$-com_android_server_SystemServerInitThreadPool_2249(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .prologue
    .line 62
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Started executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_36

    .line 69
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :catch_36
    move-exception v0

    .line 66
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    throw v0
.end method

.method static declared-synchronized shutdown()V
    .registers 5

    .prologue
    const-class v1, Lcom/android/server/SystemServerInitThreadPool;

    monitor-enter v1

    .line 76
    :try_start_3
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    if-eqz v0, :cond_78

    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v0, v0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_78

    .line 77
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v0, v0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_44

    .line 80
    :try_start_14
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v0, v0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x4e20

    .line 81
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 80
    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1f} :catch_47
    .catchall {:try_start_14 .. :try_end_1f} :catchall_44

    move-result v0

    .line 86
    :try_start_20
    sget-object v2, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v2, v2, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v2

    .line 87
    if-nez v0, :cond_6b

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot shutdown. Unstarted tasks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0

    .line 82
    :catch_47
    move-exception v0

    .line 83
    :try_start_48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " init interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_6b
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 92
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Shutdown successful"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_48 .. :try_end_78} :catchall_44

    :cond_78
    monitor-exit v1

    .line 94
    return-void
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2, p1}, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 72
    :cond_11
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
