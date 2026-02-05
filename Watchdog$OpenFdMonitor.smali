.class public final Lcom/android/server/Watchdog$OpenFdMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenFdMonitor"
.end annotation


# static fields
.field private static final FD_HIGH_WATER_MARK:I = 0xc


# instance fields
.field private final mDumpDir:Ljava/io/File;

.field private final mFdHighWaterMark:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p1, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    .line 798
    iput-object p2, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    .line 799
    return-void
.end method

.method public static create()Lcom/android/server/Watchdog$OpenFdMonitor;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 765
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_6

    .line 766
    return-object v3

    .line 772
    :cond_6
    const-string/jumbo v0, "dalvik.vm.stack-trace-dir"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 774
    return-object v3

    .line 779
    :cond_17
    :try_start_17
    sget v1, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v1}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_1c} :catch_46

    move-result-object v1

    .line 792
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/proc/self/fd/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/system/StructRlimit;->rlim_cur:J

    const-wide/16 v6, 0xc

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 793
    new-instance v1, Lcom/android/server/Watchdog$OpenFdMonitor;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lcom/android/server/Watchdog$OpenFdMonitor;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 780
    :catch_46
    move-exception v0

    .line 781
    const-string/jumbo v1, "Watchdog"

    const-string/jumbo v2, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    return-object v3
.end method

.method private dumpOpenDescriptors()V
    .registers 6

    .prologue
    .line 803
    :try_start_0
    const-string/jumbo v0, "anr_fd_"

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 804
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 805
    const-string/jumbo v3, "/system/bin/lsof"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "-p"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 804
    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 806
    const/4 v2, 0x1

    .line 804
    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 810
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 811
    if-eqz v1, :cond_62

    .line 812
    const-string/jumbo v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to dump open descriptors, lsof return code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_62} :catch_63
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_62} :catch_63

    .line 819
    :cond_62
    :goto_62
    return-void

    .line 816
    :catch_63
    move-exception v0

    .line 817
    const-string/jumbo v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to dump open descriptors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method


# virtual methods
.method public monitor()Z
    .registers 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 827
    invoke-direct {p0}, Lcom/android/server/Watchdog$OpenFdMonitor;->dumpOpenDescriptors()V

    .line 828
    const/4 v0, 0x1

    return v0

    .line 831
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
