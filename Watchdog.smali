.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/android/server/Watchdog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/Watchdog;->-assertionsDisabled:Z

    .line 86
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "/system/bin/audioserver"

    aput-object v1, v0, v3

    .line 88
    const-string/jumbo v1, "/system/bin/cameraserver"

    aput-object v1, v0, v4

    .line 89
    const-string/jumbo v1, "/system/bin/drmserver"

    aput-object v1, v0, v5

    .line 90
    const-string/jumbo v1, "/system/bin/mediadrmserver"

    aput-object v1, v0, v6

    .line 91
    const-string/jumbo v1, "/system/bin/mediaserver"

    aput-object v1, v0, v7

    .line 92
    const-string/jumbo v1, "/system/bin/sdcard"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "/system/bin/surfaceflinger"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "media.extractor"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "media.codec"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 96
    const-string/jumbo v1, "com.android.bluetooth"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 86
    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "android.hardware.audio@2.0::IDevicesFactory"

    aput-object v1, v0, v3

    .line 101
    const-string/jumbo v1, "android.hardware.bluetooth@1.0::IBluetoothHci"

    aput-object v1, v0, v4

    .line 102
    const-string/jumbo v1, "android.hardware.camera.provider@2.4::ICameraProvider"

    aput-object v1, v0, v5

    .line 103
    const-string/jumbo v1, "android.hardware.graphics.composer@2.1::IComposer"

    aput-object v1, v0, v6

    .line 104
    const-string/jumbo v1, "android.hardware.media.omx@1.0::IOmx"

    aput-object v1, v0, v7

    .line 105
    const-string/jumbo v1, "android.hardware.sensors@1.0::ISensors"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "android.hardware.vr@1.0::IVr"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 99
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    const-wide/32 v4, 0xea60

    .line 256
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 264
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 265
    const-string/jumbo v3, "foreground thread"

    move-object v1, p0

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 266
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 270
    const-string/jumbo v3, "main thread"

    move-object v1, p0

    .line 269
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 273
    const-string/jumbo v3, "ui thread"

    move-object v1, p0

    .line 272
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 276
    const-string/jumbo v3, "i/o thread"

    move-object v1, p0

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 279
    const-string/jumbo v3, "display thread"

    move-object v1, p0

    .line 278
    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 284
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 287
    sget-boolean v0, Lcom/android/server/Watchdog;->-assertionsDisabled:Z

    .line 289
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    .prologue
    .line 707
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 708
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 712
    :goto_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 713
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 714
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_10

    .line 718
    :catch_1f
    move-exception v0

    .line 719
    const-string/jumbo v1, "Watchdog"

    const-string/jumbo v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 722
    :goto_2c
    return-void

    .line 716
    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 717
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_1f

    goto :goto_2c
.end method

.method private binderStateRead()V
    .registers 5

    .prologue
    .line 726
    :try_start_0
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "Collect Binder Transaction Status Information"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v1, "/sys/kernel/debug/binder/state"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 728
    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v2, "/data/anr/BinderTraces.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 730
    :goto_19
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2f

    .line 731
    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_19

    .line 735
    :catch_24
    move-exception v0

    .line 736
    const-string/jumbo v1, "Watchdog"

    const-string/jumbo v2, "Failed to collect state file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    :goto_2e
    return-void

    .line 733
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 734
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_35} :catch_24

    goto :goto_2e
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    .line 377
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 379
    const-string/jumbo v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_1b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 383
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doSysRq(C)V
    .registers 5

    .prologue
    .line 697
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string/jumbo v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 699
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 703
    :goto_e
    return-void

    .line 700
    :catch_f
    move-exception v0

    .line 701
    const-string/jumbo v1, "Watchdog"

    const-string/jumbo v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 741
    const-string/jumbo v0, "dalvik.vm.stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 743
    :cond_10
    return-object v2

    .line 746
    :cond_11
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 747
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    .line 357
    :goto_3
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 358
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 359
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 357
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 361
    :cond_1f
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 367
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 368
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 369
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 372
    :cond_24
    return-object v2
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 249
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 252
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private getInterestingHalPids()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 392
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 393
    iget v3, v0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11

    .line 397
    sget-object v3, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v4, v0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 401
    iget v0, v0, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_11

    .line 404
    :catch_36
    move-exception v0

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 403
    :cond_3d
    :try_start_3d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_36

    return-object v0
.end method

.method private getInterestingNativePids()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v1

    .line 412
    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    .line 413
    if-eqz v2, :cond_25

    .line 414
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v3, v2

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 415
    const/4 v0, 0x0

    array-length v3, v2

    :goto_17
    if-ge v0, v3, :cond_25

    aget v4, v2, v0

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 420
    :cond_25
    return-object v1
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4

    .prologue
    .line 321
    monitor-enter p0

    .line 322
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 323
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 321
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 325
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    monitor-exit p0

    .line 327
    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 330
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 331
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12

    .prologue
    .line 334
    monitor-enter p0

    .line 335
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 336
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    .line 334
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 338
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 339
    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_10

    monitor-exit p0

    .line 341
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 293
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 295
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    .line 296
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    .line 295
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 298
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 303
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    .line 306
    return-void

    .line 301
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 347
    const-string/jumbo v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rebooting system because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 350
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_25
    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    .line 353
    :goto_28
    return-void

    .line 351
    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public run()V
    .registers 15

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 426
    const/4 v0, 0x0

    move-object v6, v0

    .line 431
    :goto_3
    const/4 v7, 0x0

    .line 432
    monitor-enter p0

    .line 433
    const-wide/16 v2, 0x7530

    .line 436
    const/4 v0, 0x0

    move v4, v0

    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_20

    .line 437
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    .line 438
    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 436
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    .line 449
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 450
    :goto_24
    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_51

    .line 451
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_4e

    move-result v0

    if-eqz v0, :cond_385

    .line 452
    const/4 v0, 0x2

    .line 455
    :goto_31
    :try_start_31
    invoke-virtual {p0, v2, v3}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_46
    .catchall {:try_start_31 .. :try_end_34} :catchall_4e

    .line 459
    :goto_34
    :try_start_34
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 460
    const/4 v0, 0x2

    .line 462
    :cond_3b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-wide/16 v8, 0x7530

    sub-long v2, v8, v2

    move v7, v0

    goto :goto_24

    .line 456
    :catch_46
    move-exception v2

    .line 457
    const-string/jumbo v3, "Watchdog"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_4e

    goto :goto_34

    .line 432
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 465
    :cond_51
    const/4 v0, 0x0

    .line 466
    :try_start_52
    iget-object v2, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    if-eqz v2, :cond_5c

    .line 467
    iget-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v0

    .line 470
    :cond_5c
    if-nez v0, :cond_1bf

    .line 471
    invoke-direct {p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_4e

    move-result v0

    .line 472
    if-nez v0, :cond_68

    .line 474
    const/4 v0, 0x0

    monitor-exit p0

    move v1, v0

    .line 475
    goto :goto_3

    .line 476
    :cond_68
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6d

    monitor-exit p0

    goto :goto_3

    .line 479
    :cond_6d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_92

    .line 480
    if-nez v1, :cond_382

    .line 483
    :try_start_72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v1

    .line 485
    const/4 v2, 0x1

    .line 486
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 485
    invoke-static {v2, v0, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;
    :try_end_8c
    .catchall {:try_start_72 .. :try_end_8c} :catchall_4e

    move-result-object v0

    .line 487
    const/4 v1, 0x1

    :goto_8e
    monitor-exit p0

    move-object v6, v0

    .line 489
    goto/16 :goto_3

    .line 493
    :cond_92
    :try_start_92
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    invoke-direct {p0, v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 499
    :goto_9a
    iget-boolean v8, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_4e

    monitor-exit p0

    .line 505
    const/16 v0, 0xaf2

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget v2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v2, :cond_bf

    iget v2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_bf
    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 512
    invoke-static {v1, v0, v5, v9, v2}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v5

    .line 515
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 516
    invoke-direct {p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 521
    :cond_de
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 525
    invoke-direct {p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 528
    const-string/jumbo v0, "dalvik.vm.stack-trace-dir"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e6

    .line 531
    const-string/jumbo v0, "dalvik.vm.stack-trace-file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_SystemServer_WDT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    if-eqz v0, :cond_1db

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1db

    .line 536
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 539
    const/4 v9, -0x1

    if-eq v9, v5, :cond_1c8

    .line 540
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 546
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    :goto_15f
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v2, "watchdogWriteToDropbox"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/io/File;)V

    .line 622
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 624
    const-wide/16 v10, 0x7d0

    :try_start_16d
    invoke-virtual {v0, v10, v11}, Ljava/lang/Thread;->join(J)V
    :try_end_170
    .catch Ljava/lang/InterruptedException; {:try_start_16d .. :try_end_170} :catch_2b7

    .line 632
    :goto_170
    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    const/4 v1, 0x0

    .line 631
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 633
    if-eqz v0, :cond_197

    .line 636
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "Triggering SysRq for system_server watchdog"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v0, 0x77

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 638
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 641
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 644
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 648
    :cond_197
    monitor-enter p0

    .line 649
    :try_start_198
    iget-object v0, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_19a
    .catchall {:try_start_198 .. :try_end_19a} :catchall_2ba

    monitor-exit p0

    .line 651
    if-eqz v0, :cond_2be

    .line 652
    const-string/jumbo v1, "Watchdog"

    const-string/jumbo v2, "Reporting stuck state to activity controller"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :try_start_1a6
    const-string/jumbo v1, "Service dumps disabled due to hung system process."

    invoke-static {v1}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 656
    invoke-interface {v0, v4}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 657
    if-ltz v0, :cond_2be

    .line 658
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "Activity controller requested to coninue to wait"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catch Landroid/os/RemoteException; {:try_start_1a6 .. :try_end_1bb} :catch_2bd

    .line 659
    const/4 v0, 0x0

    move v1, v0

    .line 660
    goto/16 :goto_3

    .line 496
    :cond_1bf
    :try_start_1bf
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 497
    const-string/jumbo v4, "Open FD high water mark reached"
    :try_end_1c6
    .catchall {:try_start_1bf .. :try_end_1c6} :catchall_4e

    goto/16 :goto_9a

    .line 543
    :cond_1c8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_152

    .line 548
    :cond_1db
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "dump WDT Traces: no trace path configured"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15f

    .line 552
    :cond_1e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traces_SystemServer_WDT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    iget-object v2, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    const-string/jumbo v2, "_pid"

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 559
    :try_start_222
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2ac

    .line 560
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 561
    const/16 v2, 0x180

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 560
    invoke-static {v1, v2, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 566
    if-eqz v6, :cond_297

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 571
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 570
    sub-long/2addr v10, v12

    .line 573
    const-wide/32 v12, 0xea60

    cmp-long v1, v10, v12

    if-gez v1, :cond_266

    .line 574
    const-string/jumbo v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "First set of traces taken from "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 574
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0, v0, v6}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    .line 582
    :cond_266
    :goto_266
    if-eqz v5, :cond_2a1

    .line 583
    const-string/jumbo v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Second set of traces taken from "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 584
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 583
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0, v0, v5}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_289
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_289} :catch_28b

    goto/16 :goto_15f

    .line 592
    :catch_28b
    move-exception v0

    .line 593
    const-string/jumbo v1, "Watchdog"

    const-string/jumbo v2, "Exception creating Watchdog dump file:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15f

    .line 579
    :cond_297
    :try_start_297
    const-string/jumbo v1, "Watchdog"

    const-string/jumbo v2, "First set of traces are empty!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_266

    .line 587
    :cond_2a1
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "Second set of traces are empty!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15f

    .line 590
    :cond_2ac
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_297 .. :try_end_2b5} :catch_28b

    goto/16 :goto_15f

    .line 625
    :catch_2b7
    move-exception v0

    goto/16 :goto_170

    .line 648
    :catchall_2ba
    move-exception v0

    monitor-exit p0

    throw v0

    .line 662
    :catch_2bd
    move-exception v0

    .line 667
    :cond_2be
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_37f

    .line 668
    const/4 v0, 0x2

    .line 670
    :goto_2c5
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d5

    .line 671
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_2d1
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_3

    .line 672
    :cond_2d5
    if-lez v0, :cond_2e1

    .line 673
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d1

    .line 674
    :cond_2e1
    if-nez v8, :cond_2ed

    .line 675
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d1

    .line 677
    :cond_2ed
    const-string/jumbo v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v0, 0x0

    move v1, v0

    :goto_309
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_368

    .line 679
    const-string/jumbo v2, "Watchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " stack trace:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 682
    const/4 v0, 0x0

    array-length v4, v2

    :goto_343
    if-ge v0, v4, :cond_364

    aget-object v5, v2, v0

    .line 683
    const-string/jumbo v7, "Watchdog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "    at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_343

    .line 678
    :cond_364
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_309

    .line 686
    :cond_368
    const-string/jumbo v0, "Watchdog"

    const-string/jumbo v1, "*** GOODBYE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 688
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2d1

    :cond_37f
    move v0, v7

    goto/16 :goto_2c5

    :cond_382
    move-object v0, v6

    goto/16 :goto_8e

    :cond_385
    move v0, v7

    goto/16 :goto_31
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3

    .prologue
    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 312
    return-void

    .line 309
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3

    .prologue
    .line 315
    monitor-enter p0

    .line 316
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 318
    return-void

    .line 315
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
