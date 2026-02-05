.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303ae

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_SystemServer-mthref-0()V
    .registers 0

    .prologue
    .line 533
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 162
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 161
    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 298
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 299
    return-void
.end method

.method private createSystemContext()V
    .registers 3

    .prologue
    .line 514
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 516
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v1, 0x10303ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 520
    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method static synthetic lambda$-com_android_server_SystemServer_31598()V
    .registers 4

    .prologue
    .line 676
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 677
    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    .line 676
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 678
    const-string/jumbo v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 679
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 680
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_SystemServer_37407()V
    .registers 4

    .prologue
    .line 782
    :try_start_0
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "SecondaryZygotePreload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 784
    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    .line 783
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 785
    const-string/jumbo v1, "SecondaryZygotePreload"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 786
    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 787
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "Unable to preload default resources"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_30
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-void

    .line 790
    :catch_34
    move-exception v0

    .line 791
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method static synthetic lambda$-com_android_server_SystemServer_42237()V
    .registers 4

    .prologue
    .line 891
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 892
    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    .line 891
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 893
    const-string/jumbo v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 894
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 895
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 291
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 292
    return-void
.end method

.method private performPendingShutdown()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 461
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 460
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    if-eqz v3, :cond_9b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9b

    .line 463
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1e

    move v0, v1

    .line 466
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_77

    .line 467
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 477
    :goto_2c
    if-eqz v3, :cond_84

    const-string/jumbo v4, "recovery-update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string/jumbo v4, "ota-update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 478
    :cond_40
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 482
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_50
    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_79

    move-result-object v2

    .line 487
    :goto_54
    if-eqz v2, :cond_84

    const-string/jumbo v4, "/data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 488
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/cache/recovery/block.map"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_84

    .line 489
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    :cond_77
    move-object v3, v2

    .line 469
    goto :goto_2c

    .line 483
    :catch_79
    move-exception v4

    .line 484
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "Error reading uncrypt package file"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 496
    :cond_84
    new-instance v2, Lcom/android/server/SystemServer$1;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 507
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 508
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    :cond_9b
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 455
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return-void
.end method

.method private run()V
    .registers 9

    .prologue
    const-wide/32 v6, 0x5265c00

    const v4, 0xea60

    const/4 v3, 0x0

    .line 303
    :try_start_7
    const-string/jumbo v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_24

    .line 309
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 316
    :cond_24
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 318
    :cond_33
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Timezone not set; setting to GMT."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string/jumbo v0, "persist.sys.timezone"

    const-string/jumbo v1, "GMT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_45
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 331
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string/jumbo v1, "persist.sys.locale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_7b
    const-string/jumbo v0, "persist.sys.bt.rejectcall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 339
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "bbklhj  set persist.sys.bt.rejectcall false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string/jumbo v0, "persist.sys.bt.rejectcall"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_97
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 344
    const-string/jumbo v1, "log.tag.ss_pid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 349
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    .line 351
    const/16 v1, 0xbc2

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 352
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v1, :cond_c7

    .line 353
    const-string/jumbo v1, "boot_system_server_init"

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 363
    :cond_c7
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 370
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 378
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 382
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 385
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 388
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 392
    const/4 v0, -0x2

    .line 391
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 393
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 394
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 397
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 404
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 407
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 408
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    .line 409
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 411
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_128
    .catchall {:try_start_7 .. :try_end_128} :catchall_18e

    .line 413
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 418
    :try_start_12b
    const-string/jumbo v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 420
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 421
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 422
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_12b .. :try_end_13d} :catch_193
    .catchall {:try_start_12b .. :try_end_13d} :catchall_1a7

    .line 428
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 432
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 433
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_14f
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_182

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_182

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    .line 437
    const-string/jumbo v1, "boot_system_server_ready"

    invoke-static {v3, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 439
    if-le v0, v4, :cond_182

    .line 440
    const-string/jumbo v1, "SystemServerTiming"

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_182
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 447
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :catchall_18e
    move-exception v0

    .line 413
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 412
    throw v0

    .line 423
    :catch_193
    move-exception v0

    .line 424
    :try_start_194
    const-string/jumbo v1, "System"

    const-string/jumbo v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string/jumbo v1, "System"

    const-string/jumbo v2, "************ Failure starting system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    throw v0
    :try_end_1a7
    .catchall {:try_start_194 .. :try_end_1a7} :catchall_1a7

    .line 427
    :catchall_1a7
    move-exception v0

    .line 428
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 427
    throw v0
.end method

.method private startBootstrapServices()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 530
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string/jumbo v0, "ReadingSystemConfig"

    .line 532
    const-string/jumbo v0, "ReadingSystemConfig"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$0:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    const-string/jumbo v4, "ReadingSystemConfig"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 534
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 539
    const-string/jumbo v0, "StartInstaller"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Installer;

    .line 541
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 545
    const-string/jumbo v1, "DeviceIdentifiersPolicyService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v1, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 547
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 550
    const-string/jumbo v1, "StartActivityManager"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 552
    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 551
    invoke-virtual {v1, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 553
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 554
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 555
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 561
    const-string/jumbo v1, "StartPowerManager"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 563
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 567
    const-string/jumbo v1, "InitPowerManagement"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 569
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 572
    const-string/jumbo v1, "config.disable_noncore"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 573
    const-string/jumbo v1, "StartRecoverySystemService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v1, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 575
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 581
    :cond_a8
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 584
    const-string/jumbo v1, "StartLightsService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/lights/LightsService;

    invoke-virtual {v1, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 586
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 590
    const-string/jumbo v1, "StartDisplayManager"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 592
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 595
    const-string/jumbo v1, "WaitForDisplay"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 597
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 600
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 602
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 609
    :cond_fd
    :goto_fd
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 610
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v4, "Regionalization Service"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v1, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v1}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 612
    const-string/jumbo v4, "regionalization"

    invoke-static {v4, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 616
    :cond_117
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v1, :cond_126

    .line 617
    const-string/jumbo v1, "boot_package_manager_init_start"

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-int v4, v4

    .line 617
    invoke-static {v6, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 620
    :cond_126
    const-string/jumbo v1, "StartPackageManagerService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 621
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 622
    iget v1, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v1, :cond_1d9

    move v1, v2

    :goto_133
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 621
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 623
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 624
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 625
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 626
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_165

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_165

    .line 627
    const-string/jumbo v0, "boot_package_manager_init_ready"

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-int v1, v4

    .line 627
    invoke-static {v6, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 633
    :cond_165
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_182

    .line 634
    const-string/jumbo v0, "config.disable_otadexopt"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 636
    if-nez v0, :cond_182

    .line 637
    const-string/jumbo v0, "StartOtaDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 639
    :try_start_178
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_178 .. :try_end_17f} :catch_1dc
    .catchall {:try_start_178 .. :try_end_17f} :catchall_1e7

    .line 643
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 648
    :cond_182
    :goto_182
    const-string/jumbo v0, "StartUserManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 650
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 653
    const-string/jumbo v0, "InitAttributerCache"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 655
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 658
    const-string/jumbo v0, "SetSystemProcess"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 660
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 664
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 675
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$1:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    .line 681
    const-string/jumbo v2, "StartSensorService"

    .line 675
    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 682
    return-void

    .line 604
    :cond_1c3
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 605
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v4, "Device encrypted - only parsing core apps"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_fd

    :cond_1d9
    move v1, v3

    .line 622
    goto/16 :goto_133

    .line 640
    :catch_1dc
    move-exception v0

    .line 641
    :try_start_1dd
    const-string/jumbo v1, "starting OtaDexOptService"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e3
    .catchall {:try_start_1dd .. :try_end_1e3} :catchall_1e7

    .line 643
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_182

    .line 642
    :catchall_1e7
    move-exception v0

    .line 643
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 642
    throw v0
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 689
    const-string/jumbo v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 691
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 693
    const-string/jumbo v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 696
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 699
    const-string/jumbo v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 701
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 702
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 701
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 703
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 706
    const-string/jumbo v0, "config.disable_webview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 707
    const-string/jumbo v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 709
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 711
    :cond_5c
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .registers 47

    .prologue
    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 719
    const/4 v6, 0x0

    .line 720
    const/4 v11, 0x0

    .line 721
    const/4 v12, 0x0

    .line 722
    const/4 v14, 0x0

    .line 723
    const/4 v15, 0x0

    .line 724
    const/16 v20, 0x0

    .line 725
    const/4 v13, 0x0

    .line 727
    const/4 v9, 0x0

    .line 729
    const/16 v23, 0x0

    .line 730
    const/16 v24, 0x0

    .line 731
    const/4 v5, 0x0

    .line 732
    const/4 v4, 0x0

    .line 736
    const/16 v19, 0x0

    .line 737
    const/16 v16, 0x0

    .line 739
    const/16 v25, 0x0

    .line 740
    const-string/jumbo v3, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 741
    const-string/jumbo v3, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 742
    const-string/jumbo v3, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 743
    const-string/jumbo v3, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 744
    const-string/jumbo v3, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 745
    const-string/jumbo v3, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 746
    const-string/jumbo v3, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 747
    const-string/jumbo v3, "config.disable_rtt"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    .line 748
    const-string/jumbo v3, "config.disable_mediaproj"

    .line 749
    const/4 v7, 0x0

    .line 748
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 750
    const-string/jumbo v3, "config.disable_mediarouter"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 751
    const-string/jumbo v3, "config.disable_webview"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 752
    const-string/jumbo v3, "config.disable_clockwork"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 753
    const-string/jumbo v3, "config.disable_serial"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 754
    const-string/jumbo v3, "config.disable_searchmanager"

    .line 755
    const/4 v7, 0x1

    .line 754
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 756
    const-string/jumbo v3, "config.disable_trustmanager"

    .line 757
    const/4 v7, 0x0

    .line 756
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 758
    const-string/jumbo v3, "config.disable_textservices"

    .line 759
    const/4 v7, 0x0

    .line 758
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 760
    const-string/jumbo v3, "config.disable_consumerir"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 761
    const-string/jumbo v7, "config.disable_vrmanager"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 762
    const-string/jumbo v7, "config.disable_cameraservice"

    .line 763
    const/4 v8, 0x0

    .line 762
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 764
    const-string/jumbo v7, "config.enable_lefty"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 766
    const-string/jumbo v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 767
    const-string/jumbo v7, "persist.vendor.wigig.enable"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 770
    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v7, :cond_e3

    const-string/jumbo v7, "debug.crash_system"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 771
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 775
    :cond_e3
    :try_start_e3
    const-string/jumbo v7, "SecondaryZygotePreload"

    .line 780
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v7

    sget-object v8, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$2:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    .line 793
    const-string/jumbo v10, "SecondaryZygotePreload"

    .line 780
    invoke-virtual {v7, v8, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 795
    const-string/jumbo v7, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 796
    const-string/jumbo v7, "sec_key_att_app_id_provider"

    .line 797
    new-instance v8, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v8, v2}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    .line 796
    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 798
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 804
    const-string/jumbo v7, "StartSchedulingPolicyService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 805
    const-string/jumbo v7, "scheduling_policy"

    new-instance v8, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v8}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 806
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 809
    const-string/jumbo v7, "StartXtcBehaviorService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/xtcbehavior/XtcBehaviorService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 811
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 822
    const-string/jumbo v7, "StartTelecomLoaderService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 824
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 826
    const-string/jumbo v7, "StartTelephonyRegistry"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 827
    new-instance v8, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v8, v2}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_14e
    .catch Ljava/lang/RuntimeException; {:try_start_e3 .. :try_end_14e} :catch_e3b

    .line 828
    :try_start_14e
    const-string/jumbo v4, "telephony.registry"

    invoke-static {v4, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 829
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 835
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 842
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 844
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 846
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 848
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 850
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 851
    new-instance v10, Lcom/android/server/VibratorService;

    invoke-direct {v10, v2}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_18d
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_18d} :catch_e40

    .line 852
    :try_start_18d
    const-string/jumbo v4, "vibrator"

    invoke-static {v4, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 853
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 856
    if-nez v3, :cond_1ac

    .line 857
    const-string/jumbo v3, "StartConsumerIrService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 858
    new-instance v3, Lcom/android/server/ConsumerIrService;

    invoke-direct {v3, v2}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    .line 859
    const-string/jumbo v4, "consumer_ir"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 860
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 863
    :cond_1ac
    const-string/jumbo v3, "StartAlarmManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 865
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 867
    const-string/jumbo v3, "InitWatchdog"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 870
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 872
    const-string/jumbo v3, "StartInputManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 873
    new-instance v3, Lcom/android/server/input/InputManagerService;

    invoke-direct {v3, v2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1dd
    .catch Ljava/lang/RuntimeException; {:try_start_18d .. :try_end_1dd} :catch_e46

    .line 874
    :try_start_1dd
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 876
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v5, "StartSensorService"

    invoke-static {v4, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 879
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 881
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_ba7

    const/4 v4, 0x1

    .line 882
    :goto_1fd
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    xor-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v7, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v7}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 880
    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;
    :try_end_20f
    .catch Ljava/lang/RuntimeException; {:try_start_1dd .. :try_end_20f} :catch_e4c

    move-result-object v5

    .line 883
    :try_start_210
    const-string/jumbo v4, "window"

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 884
    const-string/jumbo v4, "input"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 885
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 890
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v4

    sget-object v6, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;->$INST$3:Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    .line 896
    const-string/jumbo v7, "StartHidlServices"

    .line 890
    invoke-virtual {v4, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 898
    if-nez v18, :cond_23f

    .line 899
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 901
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 904
    :cond_23f
    const-string/jumbo v4, "SetWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 906
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 908
    const-string/jumbo v4, "StartInputManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 910
    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService;->start()V

    .line 911
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 914
    const-string/jumbo v4, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 916
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 921
    if-eqz v21, :cond_baa

    .line 922
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v6, "No Bluetooth Service (emulator)"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_27d
    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 938
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 943
    sget-boolean v4, Lcom/xtc/performance/PerformanceManager;->isSurportPMS:Z

    if-eqz v4, :cond_2a5

    .line 944
    const-string/jumbo v4, "PerformanceManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/performance/PerformanceManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 946
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_2a5
    .catch Ljava/lang/RuntimeException; {:try_start_210 .. :try_end_2a5} :catch_bbc

    :cond_2a5
    move-object/from16 v18, v8

    move-object/from16 v17, v3

    move-object v7, v5

    move-object v6, v10

    .line 956
    :goto_2ab
    const/16 v21, 0x0

    .line 957
    const/16 v22, 0x0

    .line 958
    const/4 v5, 0x0

    .line 959
    const/16 v26, 0x0

    .line 962
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2df

    .line 963
    const-string/jumbo v3, "StartInputMethodManagerLifecycle"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 965
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 967
    const-string/jumbo v3, "StartAccessibilityManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 969
    :try_start_2d1
    const-string/jumbo v3, "accessibility"

    .line 970
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 969
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2dc
    .catch Ljava/lang/Throwable; {:try_start_2d1 .. :try_end_2dc} :catch_c18

    .line 974
    :goto_2dc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 977
    :cond_2df
    const-string/jumbo v3, "MakeDisplayReady"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 979
    :try_start_2e5
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2e8
    .catch Ljava/lang/Throwable; {:try_start_2e5 .. :try_end_2e8} :catch_c23

    .line 983
    :goto_2e8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 985
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_338

    .line 986
    if-nez v27, :cond_338

    .line 987
    const-string/jumbo v3, "0"

    const-string/jumbo v4, "system_init.startmountservice"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 986
    if-eqz v3, :cond_338

    .line 988
    const-string/jumbo v3, "StartStorageManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 994
    :try_start_30c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 996
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 995
    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_320
    .catch Ljava/lang/Throwable; {:try_start_30c .. :try_end_320} :catch_c2e

    move-result-object v3

    .line 1000
    :goto_321
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1002
    const-string/jumbo v4, "StartStorageStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1004
    :try_start_32a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v8, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_334
    .catch Ljava/lang/Throwable; {:try_start_32a .. :try_end_334} :catch_c3a

    .line 1008
    :goto_334
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object v11, v3

    .line 1014
    :cond_338
    const-string/jumbo v3, "StartUiModeManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1016
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1018
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v3, :cond_360

    .line 1019
    const-string/jumbo v3, "UpdatePackagesIfNeeded"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1021
    :try_start_356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_35d
    .catch Ljava/lang/Throwable; {:try_start_356 .. :try_end_35d} :catch_c45

    .line 1025
    :goto_35d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1028
    :cond_360
    const-string/jumbo v3, "PerformFstrimIfNeeded"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1030
    :try_start_366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_36d
    .catch Ljava/lang/Throwable; {:try_start_366 .. :try_end_36d} :catch_c50

    .line 1034
    :goto_36d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1036
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_e7b

    .line 1037
    if-nez v30, :cond_e77

    .line 1038
    const-string/jumbo v3, "StartLockSettingsService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1040
    :try_start_37f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1042
    const-string/jumbo v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1041
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_393
    .catch Ljava/lang/Throwable; {:try_start_37f .. :try_end_393} :catch_c5b

    move-result-object v3

    .line 1046
    :goto_394
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1062
    const-string/jumbo v4, "StartDeviceIdleController"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1064
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1068
    const-string/jumbo v4, "StartDevicePolicyManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1070
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v27, v3

    .line 1073
    :goto_3bd
    if-nez v28, :cond_3d3

    .line 1074
    const-string/jumbo v3, "StartStatusBarManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1076
    :try_start_3c5
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v3, v2, v7}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 1077
    const-string/jumbo v4, "statusbar"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d0
    .catch Ljava/lang/Throwable; {:try_start_3c5 .. :try_end_3d0} :catch_c67

    .line 1081
    :goto_3d0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1090
    :cond_3d3
    if-nez v31, :cond_e73

    .line 1091
    const-string/jumbo v3, "StartNetworkManagementService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1093
    :try_start_3db
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    :try_end_3de
    .catch Ljava/lang/Throwable; {:try_start_3db .. :try_end_3de} :catch_c72

    move-result-object v4

    .line 1094
    :try_start_3df
    const-string/jumbo v3, "network_management"

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e5
    .catch Ljava/lang/Throwable; {:try_start_3df .. :try_end_3e5} :catch_e38

    .line 1098
    :goto_3e5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v28, v4

    .line 1101
    :goto_3ea
    if-nez v30, :cond_402

    xor-int/lit8 v3, v41, 0x1

    if-eqz v3, :cond_402

    .line 1102
    const-string/jumbo v3, "StartTextServicesManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1104
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1107
    :cond_402
    if-nez v31, :cond_e6c

    .line 1108
    const-string/jumbo v3, "StartNetworkScoreService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1110
    :try_start_40a
    new-instance v4, Lcom/android/server/NetworkScoreService;

    invoke-direct {v4, v2}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_40f
    .catch Ljava/lang/Throwable; {:try_start_40a .. :try_end_40f} :catch_c7e

    .line 1111
    :try_start_40f
    const-string/jumbo v3, "network_score"

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_415
    .catch Ljava/lang/Throwable; {:try_start_40f .. :try_end_415} :catch_e35

    move-object v8, v4

    .line 1115
    :goto_416
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1117
    const-string/jumbo v3, "StartNetworkStatsService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1119
    :try_start_41f
    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;
    :try_end_424
    .catch Ljava/lang/Throwable; {:try_start_41f .. :try_end_424} :catch_c8b

    move-result-object v4

    .line 1120
    :try_start_425
    const-string/jumbo v3, "netstats"

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42b
    .catch Ljava/lang/Throwable; {:try_start_425 .. :try_end_42b} :catch_e32

    move-object v9, v4

    .line 1124
    :goto_42c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1126
    const-string/jumbo v3, "StartNetworkPolicyManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1128
    :try_start_435
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1128
    move-object/from16 v0, v28

    invoke-direct {v4, v2, v3, v9, v0}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_440
    .catch Ljava/lang/Throwable; {:try_start_435 .. :try_end_440} :catch_c98

    .line 1130
    :try_start_440
    const-string/jumbo v3, "netpolicy"

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_446
    .catch Ljava/lang/Throwable; {:try_start_440 .. :try_end_446} :catch_e2f

    move-object v10, v4

    .line 1134
    :goto_447
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1137
    const-string/jumbo v3, "StartWifi"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.wifi.WifiService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1139
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1140
    const-string/jumbo v3, "StartWifiScanning"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1142
    const-string/jumbo v4, "com.android.server.wifi.scanner.WifiScanningService"

    .line 1141
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1143
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1145
    if-nez v33, :cond_485

    .line 1146
    const-string/jumbo v3, "StartWifiRtt"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.wifi.RttService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1148
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1151
    :cond_485
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1152
    const-string/jumbo v4, "android.hardware.wifi.aware"

    .line 1151
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ca5

    .line 1153
    const-string/jumbo v3, "StartWifiAware"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1155
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1160
    :goto_4a5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1161
    const-string/jumbo v4, "android.hardware.wifi.direct"

    .line 1160
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c5

    .line 1162
    const-string/jumbo v3, "StartWifiP2P"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1164
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1167
    :cond_4c5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1168
    const-string/jumbo v4, "android.hardware.lowpan"

    .line 1167
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e5

    .line 1169
    const-string/jumbo v3, "StartLowpan"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1171
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1174
    :cond_4e5
    if-eqz v44, :cond_e66

    .line 1176
    :try_start_4e7
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Wigig Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string/jumbo v3, "/system/framework/wigig-service.jar"

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1178
    invoke-direct {v5, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1181
    const-string/jumbo v3, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 1180
    invoke-virtual {v5, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1182
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v12, v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1183
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51c
    .catch Ljava/lang/Throwable; {:try_start_4e7 .. :try_end_51c} :catch_cb0

    move-result-object v4

    .line 1184
    :try_start_51d
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v12, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const-string/jumbo v12, "wigigp2p"

    move-object v0, v4

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v12, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1188
    const-string/jumbo v3, "com.qualcomm.qti.server.wigig.WigigService"

    .line 1187
    invoke-virtual {v5, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1189
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v12, v5, v13

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1190
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54c
    .catch Ljava/lang/Throwable; {:try_start_51d .. :try_end_54c} :catch_e27

    move-result-object v5

    .line 1191
    :try_start_54d
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v12, "Successfully loaded WigigService class"

    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string/jumbo v12, "wigig"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v3, v0

    invoke-static {v12, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_560
    .catch Ljava/lang/Throwable; {:try_start_54d .. :try_end_560} :catch_e2c

    .line 1205
    :goto_560
    const-string/jumbo v3, "StartConnectivityService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1207
    :try_start_566
    new-instance v12, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v28

    invoke-direct {v12, v2, v0, v9, v10}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_56d
    .catch Ljava/lang/Throwable; {:try_start_566 .. :try_end_56d} :catch_cbf

    .line 1209
    :try_start_56d
    const-string/jumbo v3, "connectivity"

    invoke-static {v3, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1210
    invoke-virtual {v9, v12}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1211
    invoke-virtual {v10, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_579
    .catch Ljava/lang/Throwable; {:try_start_56d .. :try_end_579} :catch_e24

    .line 1215
    :goto_579
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1217
    const-string/jumbo v3, "StartNsdService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1219
    :try_start_582
    invoke-static {v2}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v3

    .line 1221
    const-string/jumbo v13, "servicediscovery"

    .line 1220
    invoke-static {v13, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58c
    .catch Ljava/lang/Throwable; {:try_start_582 .. :try_end_58c} :catch_ccc

    .line 1225
    :goto_58c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v16, v5

    move-object/from16 v19, v4

    move-object v15, v9

    move-object v9, v8

    .line 1244
    :goto_595
    if-eqz v11, :cond_5ab

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5ab

    .line 1245
    const-string/jumbo v3, "WaitForAsecScan"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1247
    :try_start_5a5
    invoke-interface {v11}, Landroid/os/storage/IStorageManager;->waitForAsecScan()V
    :try_end_5a8
    .catch Landroid/os/RemoteException; {:try_start_5a5 .. :try_end_5a8} :catch_cd7

    .line 1250
    :goto_5a8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1253
    :cond_5ab
    const-string/jumbo v3, "StartNotificationManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1255
    invoke-static {v2}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1257
    const-string/jumbo v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1256
    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1258
    invoke-virtual {v10, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1259
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1261
    const-string/jumbo v3, "StartDeviceMonitor"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1263
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1265
    if-nez v29, :cond_e60

    .line 1266
    const-string/jumbo v3, "StartLocationManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1268
    :try_start_5e8
    new-instance v4, Lcom/android/server/LocationManagerService;

    invoke-direct {v4, v2}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5ed
    .catch Ljava/lang/Throwable; {:try_start_5e8 .. :try_end_5ed} :catch_cda

    .line 1269
    :try_start_5ed
    const-string/jumbo v3, "location"

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f3
    .catch Ljava/lang/Throwable; {:try_start_5ed .. :try_end_5f3} :catch_e21

    .line 1273
    :goto_5f3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1275
    const-string/jumbo v3, "StartCountryDetectorService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1277
    :try_start_5fc
    new-instance v5, Lcom/android/server/CountryDetectorService;

    invoke-direct {v5, v2}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_601
    .catch Ljava/lang/Throwable; {:try_start_5fc .. :try_end_601} :catch_ce7

    .line 1278
    :try_start_601
    const-string/jumbo v3, "country_detector"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_607
    .catch Ljava/lang/Throwable; {:try_start_601 .. :try_end_607} :catch_e1e

    .line 1282
    :goto_607
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object v14, v5

    move-object v13, v4

    .line 1285
    :goto_60c
    if-nez v30, :cond_625

    xor-int/lit8 v3, v39, 0x1

    if-eqz v3, :cond_625

    .line 1286
    const-string/jumbo v3, "StartSearchManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1288
    :try_start_618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_622
    .catch Ljava/lang/Throwable; {:try_start_618 .. :try_end_622} :catch_cf4

    .line 1292
    :goto_622
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1295
    :cond_625
    if-nez v30, :cond_647

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1296
    const v4, 0x1120065

    .line 1295
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_647

    .line 1297
    const-string/jumbo v3, "StartWallpaperManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1299
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1302
    :cond_647
    const-string/jumbo v3, "StartAudioService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1304
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1324
    const-string/jumbo v3, "StartWiredAccessoryManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1328
    :try_start_65f
    new-instance v3, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v17

    invoke-direct {v3, v2, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1327
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_66b
    .catch Ljava/lang/Throwable; {:try_start_65f .. :try_end_66b} :catch_cff

    .line 1332
    :goto_66b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1334
    if-nez v30, :cond_6c7

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.usb.host"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_68a

    .line 1343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1344
    const-string/jumbo v4, "android.hardware.usb.accessory"

    .line 1343
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 1342
    if-eqz v3, :cond_69d

    .line 1346
    :cond_68a
    const-string/jumbo v3, "StartUsbService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1348
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1351
    :cond_69d
    if-nez v38, :cond_6b3

    .line 1352
    const-string/jumbo v3, "StartSerialService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1355
    :try_start_6a5
    new-instance v3, Lcom/android/server/SerialService;

    invoke-direct {v3, v2}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V

    .line 1356
    const-string/jumbo v4, "serial"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b0
    .catch Ljava/lang/Throwable; {:try_start_6a5 .. :try_end_6b0} :catch_d0a

    .line 1360
    :goto_6b0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1363
    :cond_6b3
    const-string/jumbo v3, "StartHardwarePropertiesManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1365
    :try_start_6b9
    new-instance v3, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v3, v2}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    .line 1366
    const-string/jumbo v4, "hardware_properties"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c4
    .catch Ljava/lang/Throwable; {:try_start_6b9 .. :try_end_6c4} :catch_d16

    .line 1371
    :goto_6c4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1384
    :cond_6c7
    const-string/jumbo v3, "StartJobScheduler"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1386
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1392
    if-nez v30, :cond_74e

    .line 1393
    if-nez v40, :cond_6ef

    .line 1394
    const-string/jumbo v3, "StartTrustManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1396
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1399
    :cond_6ef
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.backup"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70f

    .line 1400
    const-string/jumbo v3, "StartBackupManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1402
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1405
    :cond_70f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.app_widgets"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_729

    .line 1406
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1405
    if-eqz v3, :cond_73c

    .line 1407
    :cond_729
    const-string/jumbo v3, "StartAppWidgerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1409
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1425
    :cond_73c
    const-string/jumbo v3, "StartSensorNotification"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1427
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1434
    :cond_74e
    const-string/jumbo v3, "StartDiskStatsService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1436
    :try_start_754
    const-string/jumbo v3, "diskstats"

    new-instance v4, Lcom/android/server/DiskStatsService;

    invoke-direct {v4, v2}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75f
    .catch Ljava/lang/Throwable; {:try_start_754 .. :try_end_75f} :catch_d22

    .line 1440
    :goto_75f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1447
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v3, :cond_d2d

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1448
    const v4, 0x1120064

    .line 1447
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1449
    :goto_773
    if-eqz v3, :cond_788

    .line 1450
    const-string/jumbo v3, "StartTimeZoneRulesManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1452
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1455
    :cond_788
    if-nez v31, :cond_7a4

    xor-int/lit8 v3, v32, 0x1

    if-eqz v3, :cond_7a4

    .line 1456
    const-string/jumbo v3, "StartNetworkTimeUpdateService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1458
    :try_start_794
    new-instance v4, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v4, v2}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_799
    .catch Ljava/lang/Throwable; {:try_start_794 .. :try_end_799} :catch_d30

    .line 1459
    :try_start_799
    const-string/jumbo v3, "network_time_update_service"

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79f
    .catch Ljava/lang/Throwable; {:try_start_799 .. :try_end_79f} :catch_e1b

    .line 1463
    :goto_79f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v23, v4

    .line 1466
    :cond_7a4
    const-string/jumbo v3, "StartCommonTimeManagementService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1468
    :try_start_7aa
    new-instance v4, Lcom/android/server/CommonTimeManagementService;

    invoke-direct {v4, v2}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_7af
    .catch Ljava/lang/Throwable; {:try_start_7aa .. :try_end_7af} :catch_d3d

    .line 1469
    :try_start_7af
    const-string/jumbo v3, "commontime_management"

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b5
    .catch Ljava/lang/Throwable; {:try_start_7af .. :try_end_7b5} :catch_e18

    .line 1473
    :goto_7b5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1475
    if-nez v31, :cond_7c8

    .line 1476
    const-string/jumbo v3, "CertBlacklister"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1478
    :try_start_7c0
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v2}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_7c5
    .catch Ljava/lang/Throwable; {:try_start_7c0 .. :try_end_7c5} :catch_d4a

    .line 1482
    :goto_7c5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1485
    :cond_7c8
    if-nez v31, :cond_7e0

    xor-int/lit8 v3, v30, 0x1

    if-eqz v3, :cond_7e0

    .line 1487
    const-string/jumbo v3, "StartEmergencyAffordanceService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1489
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1492
    :cond_7e0
    if-nez v30, :cond_7f4

    .line 1494
    const-string/jumbo v3, "StartDreamManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1496
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1499
    :cond_7f4
    if-nez v30, :cond_80a

    .line 1500
    const-string/jumbo v3, "AddGraphicsStatsService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1501
    const-string/jumbo v3, "graphicsstats"

    .line 1502
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v2}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 1501
    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1503
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1506
    :cond_80a
    if-nez v30, :cond_824

    sget-boolean v3, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v3, :cond_824

    .line 1507
    const-string/jumbo v3, "AddCoverageService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1508
    const-string/jumbo v3, "coverage"

    new-instance v5, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v5}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1509
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1512
    :cond_824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_844

    .line 1513
    const-string/jumbo v3, "StartPrintManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1515
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1518
    :cond_844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.companion_device_setup"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_864

    .line 1519
    const-string/jumbo v3, "StartCompanionDeviceManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1521
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1526
    :cond_864
    :try_start_864
    const-string/jumbo v3, "StartXtcDiagService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1528
    invoke-static {}, Lcom/xtc/xtcdiag/XtcDiagMgr;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_e5c

    .line 1529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/xtcdiag/XtcDiagService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/xtcdiag/XtcDiagService;
    :try_end_87c
    .catch Ljava/lang/Throwable; {:try_start_864 .. :try_end_87c} :catch_d55

    move-object v5, v3

    .line 1531
    :goto_87d
    :try_start_87d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_880
    .catch Ljava/lang/Throwable; {:try_start_87d .. :try_end_880} :catch_e15

    .line 1537
    :goto_880
    const-string/jumbo v3, "StartRestrictionManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1539
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1541
    const-string/jumbo v3, "StartMediaSessionService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1543
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v8, "android.software.picture_in_picture"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c3

    .line 1559
    const-string/jumbo v3, "StartMediaResourceMonitor"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v3, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1561
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1570
    :cond_8c3
    if-nez v30, :cond_e58

    .line 1571
    if-nez v35, :cond_e54

    .line 1572
    const-string/jumbo v3, "StartMediaRouterService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1574
    :try_start_8cd
    new-instance v8, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v8, v2}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_8d2
    .catch Ljava/lang/Throwable; {:try_start_8cd .. :try_end_8d2} :catch_d62

    .line 1575
    :try_start_8d2
    const-string/jumbo v3, "media_router"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8d8
    .catch Ljava/lang/Throwable; {:try_start_8d2 .. :try_end_8d8} :catch_e12

    .line 1579
    :goto_8d8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1588
    :goto_8db
    const-string/jumbo v3, "StartBackgroundDexOptService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1590
    :try_start_8e1
    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_8e4
    .catch Ljava/lang/Throwable; {:try_start_8e1 .. :try_end_8e4} :catch_d6f

    .line 1594
    :goto_8e4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1596
    const-string/jumbo v3, "StartPruneInstantAppsJobService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1598
    :try_start_8ed
    invoke-static {v2}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_8f0
    .catch Ljava/lang/Throwable; {:try_start_8ed .. :try_end_8f0} :catch_d7a

    .line 1602
    :goto_8f0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1609
    :goto_8f3
    const-string/jumbo v3, "StartLauncherAppsService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v3, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1611
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v25, v5

    move-object/from16 v3, v16

    move-object v11, v15

    move-object/from16 v5, v27

    move-object/from16 v16, v4

    move-object/from16 v15, v23

    move-object/from16 v4, v19

    move-object/from16 v19, v8

    move-object v8, v9

    move-object/from16 v9, v28

    .line 1614
    :goto_917
    if-nez v30, :cond_931

    xor-int/lit8 v20, v34, 0x1

    if-eqz v20, :cond_931

    .line 1615
    const-string/jumbo v20, "StartMediaProjectionManager"

    invoke-static/range {v20 .. v20}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v20, v0

    const-class v21, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1617
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1620
    :cond_931
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string/jumbo v21, "android.hardware.type.watch"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_991

    .line 1621
    xor-int/lit8 v20, v37, 0x1

    .line 1620
    if-eqz v20, :cond_991

    .line 1622
    const-string/jumbo v20, "StartWearConnectivityService"

    invoke-static/range {v20 .. v20}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "com.google.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1624
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1626
    if-nez v30, :cond_991

    .line 1627
    const-string/jumbo v20, "StartWearTimeService"

    invoke-static/range {v20 .. v20}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1630
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1632
    if-eqz v43, :cond_991

    .line 1633
    const-string/jumbo v20, "StartWearLeftyService"

    invoke-static/range {v20 .. v20}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v20, v0

    const-string/jumbo v21, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1635
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1640
    :cond_991
    if-nez v42, :cond_9a7

    .line 1641
    const-string/jumbo v20, "StartCameraServiceProxy"

    invoke-static/range {v20 .. v20}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v20, v0

    const-class v21, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1643
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1648
    :cond_9a7
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v21

    .line 1649
    if-eqz v21, :cond_d85

    .line 1650
    const-string/jumbo v20, "EnterSafeModeAndDisableJitCompilation"

    invoke-static/range {v20 .. v20}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1653
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1654
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1663
    :goto_9c6
    const-string/jumbo v20, "StartMmsService"

    invoke-static/range {v20 .. v20}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v20, v0

    const-class v22, Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v20

    check-cast v20, Lcom/android/server/MmsServiceBroker;

    .line 1665
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "android.software.autofill"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a05

    .line 1668
    const-string/jumbo v22, "StartAutoFillService"

    invoke-static/range {v22 .. v22}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1670
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1673
    :cond_a05
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v22, v0

    const-class v23, Lcom/android/server/xtclog/XTCLogService;

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v22, v0

    const-class v23, Lcom/android/server/xtc/apm/AppPerformanceMonitorService;

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1678
    const-string/jumbo v22, "MakeVibratorServiceReady"

    invoke-static/range {v22 .. v22}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1680
    :try_start_a21
    invoke-virtual {v6}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_a24
    .catch Ljava/lang/Throwable; {:try_start_a21 .. :try_end_a24} :catch_d97

    .line 1684
    :goto_a24
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1686
    const-string/jumbo v6, "MakeLockSettingsServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1687
    if-eqz v5, :cond_a32

    .line 1689
    :try_start_a2f
    invoke-interface {v5}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_a32
    .catch Ljava/lang/Throwable; {:try_start_a2f .. :try_end_a32} :catch_da4

    .line 1694
    :cond_a32
    :goto_a32
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1697
    const-string/jumbo v5, "StartBootPhaseLockSettingsReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1699
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1701
    const-string/jumbo v5, "StartBootPhaseSystemServicesReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1703
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1705
    const-string/jumbo v5, "MakeWindowManagerServiceReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1709
    if-eqz v44, :cond_abd

    .line 1711
    :try_start_a61
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "calling onBootPhase for Wigig Services"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1713
    const-string/jumbo v6, "onBootPhase"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x0

    aput-object v23, v22, v24

    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1714
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v22, Ljava/lang/Integer;

    .line 1715
    const/16 v23, 0x1f4

    .line 1714
    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const/16 v23, 0x0

    aput-object v22, v6, v23

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1718
    const-string/jumbo v5, "onBootPhase"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x0

    aput-object v22, v6, v23

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1719
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    .line 1720
    const/16 v22, 0x1f4

    .line 1719
    move/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v22, 0x0

    aput-object v6, v5, v22

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_abd
    .catch Ljava/lang/Throwable; {:try_start_a61 .. :try_end_abd} :catch_daf

    .line 1727
    :cond_abd
    :goto_abd
    :try_start_abd
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_ac0
    .catch Ljava/lang/Throwable; {:try_start_abd .. :try_end_ac0} :catch_dba

    .line 1731
    :goto_ac0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1733
    if-eqz v21, :cond_acc

    .line 1734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1740
    :cond_acc
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 1741
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1742
    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1743
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1744
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1747
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1748
    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_afa

    .line 1749
    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1752
    :cond_afa
    const-string/jumbo v3, "MakePowerManagerServiceReady"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1755
    :try_start_b00
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_b0f
    .catch Ljava/lang/Throwable; {:try_start_b00 .. :try_end_b0f} :catch_dc5

    .line 1759
    :goto_b0f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1761
    const-string/jumbo v3, "MakePackageManagerServiceReady"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1763
    :try_start_b18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_b1f
    .catch Ljava/lang/Throwable; {:try_start_b18 .. :try_end_b1f} :catch_dd0

    .line 1767
    :goto_b1f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1770
    const-string/jumbo v3, "MakeXtcDiagServiceReady"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1772
    if-eqz v25, :cond_b2d

    .line 1773
    :try_start_b2a
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/xtcdiag/XtcDiagService;->systemReady()V
    :try_end_b2d
    .catch Ljava/lang/Throwable; {:try_start_b2a .. :try_end_b2d} :catch_ddb

    .line 1778
    :cond_b2d
    :goto_b2d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1780
    const-string/jumbo v3, "MakeDisplayManagerServiceReady"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1783
    :try_start_b36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v21

    invoke-virtual {v3, v0, v4}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_b43
    .catch Ljava/lang/Throwable; {:try_start_b36 .. :try_end_b43} :catch_de6

    .line 1787
    :goto_b43
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1791
    :try_start_b46
    new-instance v3, Lcom/android/server/addiction/AntiAddictionManagerService;

    invoke-direct {v3, v2}, Lcom/android/server/addiction/AntiAddictionManagerService;-><init>(Landroid/content/Context;)V

    .line 1792
    if-eqz v3, :cond_b53

    .line 1793
    const-string/jumbo v4, "anti_addiction"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b53
    .catch Ljava/lang/Throwable; {:try_start_b46 .. :try_end_b53} :catch_df1

    .line 1800
    :cond_b53
    :goto_b53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    new-instance v3, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$2;

    move/from16 v4, v36

    move-object/from16 v5, p0

    move-object v6, v2

    invoke-direct/range {v3 .. v20}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$2;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2006
    sget-object v4, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    .line 1823
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2008
    invoke-static {}, Lcom/xtc/auth/MobileManagerUtils;->isCtaVersion()Z

    move-result v3

    if-eqz v3, :cond_b96

    .line 2010
    :try_start_b79
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "MobileManagerService"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    new-instance v3, Lcom/android/server/xtcauth/MobileManagerService;

    invoke-direct {v3, v2}, Lcom/android/server/xtcauth/MobileManagerService;-><init>(Landroid/content/Context;)V

    .line 2012
    const-string/jumbo v4, "xtcauth"

    invoke-virtual {v3}, Lcom/android/server/xtcauth/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2013
    if-eqz v3, :cond_b96

    invoke-virtual {v3}, Lcom/android/server/xtcauth/MobileManagerService;->systemReady()V
    :try_end_b96
    .catch Ljava/lang/Throwable; {:try_start_b79 .. :try_end_b96} :catch_dfc

    .line 2021
    :cond_b96
    :goto_b96
    :try_start_b96
    new-instance v3, Lcom/android/server/xtchealth/XtcHealthService;

    invoke-direct {v3, v2}, Lcom/android/server/xtchealth/XtcHealthService;-><init>(Landroid/content/Context;)V

    .line 2022
    if-eqz v3, :cond_ba6

    .line 2023
    const-string/jumbo v2, "xtc_health"

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2024
    invoke-virtual {v3}, Lcom/android/server/xtchealth/XtcHealthService;->systemReady()V
    :try_end_ba6
    .catch Ljava/lang/Throwable; {:try_start_b96 .. :try_end_ba6} :catch_e07

    .line 2030
    :cond_ba6
    :goto_ba6
    return-void

    .line 881
    :cond_ba7
    const/4 v4, 0x0

    goto/16 :goto_1fd

    .line 923
    :cond_baa
    :try_start_baa
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_bdf

    .line 924
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v6, "No Bluetooth Service (factory test)"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bba
    .catch Ljava/lang/RuntimeException; {:try_start_baa .. :try_end_bba} :catch_bbc

    goto/16 :goto_27d

    .line 949
    :catch_bbc
    move-exception v4

    move-object v6, v5

    move-object v7, v10

    move-object v5, v3

    move-object v3, v4

    move-object v4, v8

    .line 950
    :goto_bc2
    const-string/jumbo v8, "System"

    const-string/jumbo v9, "******************************************"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string/jumbo v8, "System"

    const-string/jumbo v9, "************ Failure starting core service"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object/from16 v45, v6

    move-object v6, v7

    move-object/from16 v7, v45

    goto/16 :goto_2ab

    .line 925
    :cond_bdf
    :try_start_bdf
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 926
    const-string/jumbo v6, "android.hardware.bluetooth"

    .line 925
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bf7

    .line 927
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27d

    .line 928
    :cond_bf7
    if-eqz v17, :cond_c04

    .line 929
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v6, "Bluetooth Service disabled by config"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27d

    .line 931
    :cond_c04
    const-string/jumbo v4, "StartBluetoothService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 933
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_c16
    .catch Ljava/lang/RuntimeException; {:try_start_bdf .. :try_end_c16} :catch_bbc

    goto/16 :goto_27d

    .line 971
    :catch_c18
    move-exception v3

    .line 972
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2dc

    .line 980
    :catch_c23
    move-exception v3

    .line 981
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e8

    .line 997
    :catch_c2e
    move-exception v3

    .line 998
    const-string/jumbo v4, "starting StorageManagerService"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v11

    goto/16 :goto_321

    .line 1005
    :catch_c3a
    move-exception v4

    .line 1006
    const-string/jumbo v8, "starting StorageStatsService"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_334

    .line 1022
    :catch_c45
    move-exception v3

    .line 1023
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35d

    .line 1031
    :catch_c50
    move-exception v3

    .line 1032
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36d

    .line 1043
    :catch_c5b
    move-exception v3

    .line 1044
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v5

    goto/16 :goto_394

    .line 1078
    :catch_c67
    move-exception v3

    .line 1079
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d0

    .line 1095
    :catch_c72
    move-exception v3

    move-object v4, v12

    .line 1096
    :goto_c74
    const-string/jumbo v5, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e5

    .line 1112
    :catch_c7e
    move-exception v3

    move-object v4, v13

    .line 1113
    :goto_c80
    const-string/jumbo v5, "starting Network Score Service"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v4

    goto/16 :goto_416

    .line 1121
    :catch_c8b
    move-exception v3

    move-object v4, v14

    .line 1122
    :goto_c8d
    const-string/jumbo v5, "starting NetworkStats Service"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v4

    goto/16 :goto_42c

    .line 1131
    :catch_c98
    move-exception v3

    move-object v4, v15

    .line 1132
    :goto_c9a
    const-string/jumbo v5, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v4

    goto/16 :goto_447

    .line 1157
    :cond_ca5
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "No Wi-Fi Aware Service (Aware support Not Present)"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a5

    .line 1193
    :catch_cb0
    move-exception v3

    move-object/from16 v5, v16

    move-object/from16 v4, v19

    .line 1194
    :goto_cb5
    const-string/jumbo v12, "starting WigigService"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_560

    .line 1212
    :catch_cbf
    move-exception v3

    move-object/from16 v12, v20

    .line 1213
    :goto_cc2
    const-string/jumbo v13, "starting Connectivity Service"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_579

    .line 1222
    :catch_ccc
    move-exception v3

    .line 1223
    const-string/jumbo v13, "starting Service Discovery Service"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58c

    .line 1248
    :catch_cd7
    move-exception v3

    goto/16 :goto_5a8

    .line 1270
    :catch_cda
    move-exception v3

    move-object/from16 v4, v21

    .line 1271
    :goto_cdd
    const-string/jumbo v5, "starting Location Manager"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f3

    .line 1279
    :catch_ce7
    move-exception v3

    move-object/from16 v5, v22

    .line 1280
    :goto_cea
    const-string/jumbo v8, "starting Country Detector"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_607

    .line 1289
    :catch_cf4
    move-exception v3

    .line 1290
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_622

    .line 1329
    :catch_cff
    move-exception v3

    .line 1330
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66b

    .line 1357
    :catch_d0a
    move-exception v3

    .line 1358
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6b0

    .line 1368
    :catch_d16
    move-exception v3

    .line 1369
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6c4

    .line 1437
    :catch_d22
    move-exception v3

    .line 1438
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_75f

    .line 1447
    :cond_d2d
    const/4 v3, 0x0

    goto/16 :goto_773

    .line 1460
    :catch_d30
    move-exception v3

    move-object/from16 v4, v23

    .line 1461
    :goto_d33
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_79f

    .line 1470
    :catch_d3d
    move-exception v3

    move-object/from16 v4, v24

    .line 1471
    :goto_d40
    const-string/jumbo v5, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7b5

    .line 1479
    :catch_d4a
    move-exception v3

    .line 1480
    const-string/jumbo v5, "starting CertBlacklister"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7c5

    .line 1532
    :catch_d55
    move-exception v3

    move-object/from16 v5, v25

    .line 1533
    :goto_d58
    const-string/jumbo v8, "making xtcdiag Service ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_880

    .line 1576
    :catch_d62
    move-exception v3

    move-object/from16 v8, v26

    .line 1577
    :goto_d65
    const-string/jumbo v11, "starting MediaRouterService"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8d8

    .line 1591
    :catch_d6f
    move-exception v3

    .line 1592
    const-string/jumbo v11, "starting StartBackgroundDexOptService"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e4

    .line 1599
    :catch_d7a
    move-exception v3

    .line 1600
    const-string/jumbo v11, "StartPruneInstantAppsJobService"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8f0

    .line 1657
    :cond_d85
    const-string/jumbo v20, "StartJitCompilation"

    invoke-static/range {v20 .. v20}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1658
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1659
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_9c6

    .line 1681
    :catch_d97
    move-exception v6

    .line 1682
    const-string/jumbo v22, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a24

    .line 1690
    :catch_da4
    move-exception v5

    .line 1691
    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a32

    .line 1721
    :catch_daf
    move-exception v3

    .line 1722
    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_abd

    .line 1728
    :catch_dba
    move-exception v3

    .line 1729
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ac0

    .line 1756
    :catch_dc5
    move-exception v3

    .line 1757
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b0f

    .line 1764
    :catch_dd0
    move-exception v3

    .line 1765
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b1f

    .line 1775
    :catch_ddb
    move-exception v3

    .line 1776
    const-string/jumbo v4, "making Xtc diag Service ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b2d

    .line 1784
    :catch_de6
    move-exception v3

    .line 1785
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b43

    .line 1795
    :catch_df1
    move-exception v3

    .line 1796
    const-string/jumbo v4, "Notifying AntiAddictionManagerService running"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b53

    .line 2014
    :catch_dfc
    move-exception v3

    .line 2015
    const-string/jumbo v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b96

    .line 2026
    :catch_e07
    move-exception v2

    .line 2027
    const-string/jumbo v3, "Notifying XtcHealthService running"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ba6

    .line 1576
    :catch_e12
    move-exception v3

    goto/16 :goto_d65

    .line 1532
    :catch_e15
    move-exception v3

    goto/16 :goto_d58

    .line 1470
    :catch_e18
    move-exception v3

    goto/16 :goto_d40

    .line 1460
    :catch_e1b
    move-exception v3

    goto/16 :goto_d33

    .line 1279
    :catch_e1e
    move-exception v3

    goto/16 :goto_cea

    .line 1270
    :catch_e21
    move-exception v3

    goto/16 :goto_cdd

    .line 1212
    :catch_e24
    move-exception v3

    goto/16 :goto_cc2

    .line 1193
    :catch_e27
    move-exception v3

    move-object/from16 v5, v16

    goto/16 :goto_cb5

    :catch_e2c
    move-exception v3

    goto/16 :goto_cb5

    .line 1131
    :catch_e2f
    move-exception v3

    goto/16 :goto_c9a

    .line 1121
    :catch_e32
    move-exception v3

    goto/16 :goto_c8d

    .line 1112
    :catch_e35
    move-exception v3

    goto/16 :goto_c80

    .line 1095
    :catch_e38
    move-exception v3

    goto/16 :goto_c74

    .line 949
    :catch_e3b
    move-exception v3

    move-object v7, v6

    move-object v6, v9

    goto/16 :goto_bc2

    :catch_e40
    move-exception v3

    move-object v4, v8

    move-object v7, v6

    move-object v6, v9

    goto/16 :goto_bc2

    :catch_e46
    move-exception v3

    move-object v4, v8

    move-object v6, v9

    move-object v7, v10

    goto/16 :goto_bc2

    :catch_e4c
    move-exception v4

    move-object v5, v3

    move-object v6, v9

    move-object v7, v10

    move-object v3, v4

    move-object v4, v8

    goto/16 :goto_bc2

    :cond_e54
    move-object/from16 v8, v26

    goto/16 :goto_8db

    :cond_e58
    move-object/from16 v8, v26

    goto/16 :goto_8f3

    :cond_e5c
    move-object/from16 v5, v25

    goto/16 :goto_87d

    :cond_e60
    move-object/from16 v14, v22

    move-object/from16 v13, v21

    goto/16 :goto_60c

    :cond_e66
    move-object/from16 v5, v16

    move-object/from16 v4, v19

    goto/16 :goto_560

    :cond_e6c
    move-object v9, v13

    move-object/from16 v12, v20

    move-object v10, v15

    move-object v15, v14

    goto/16 :goto_595

    :cond_e73
    move-object/from16 v28, v12

    goto/16 :goto_3ea

    :cond_e77
    move-object/from16 v27, v5

    goto/16 :goto_3bd

    :cond_e7b
    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object v8, v13

    move-object v10, v15

    move-object v11, v14

    move-object v9, v12

    move-object/from16 v15, v23

    move-object/from16 v13, v21

    move-object/from16 v12, v20

    move-object/from16 v19, v26

    move-object/from16 v14, v22

    move-object/from16 v16, v24

    goto/16 :goto_917
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .prologue
    .line 2033
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2034
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.xtc.i3launcher"

    .line 2035
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 2034
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2036
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2038
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2039
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2040
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2043
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2045
    return-void
.end method

.method private static traceEnd()V
    .registers 1

    .prologue
    .line 2048
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2049
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_SystemServer_83601(ZLandroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 21

    .prologue
    .line 1824
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Making services ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-string/jumbo v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1827
    const/16 v1, 0x226

    .line 1826
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1828
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1829
    const-string/jumbo v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1831
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_24} :catch_163

    .line 1835
    :goto_24
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1839
    const-string/jumbo v0, "WebViewFactoryPreparation"

    .line 1840
    const/4 v0, 0x0

    .line 1841
    if-nez p1, :cond_43

    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_43

    .line 1842
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$1;

    invoke-direct {v1, p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$1;-><init>(Ljava/lang/Object;)V

    .line 1851
    const-string/jumbo v2, "WebViewFactoryPreparation"

    .line 1842
    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1854
    :cond_43
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1855
    const-string/jumbo v1, "StartCarServiceHelperService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1856
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/car/CarServiceHelperService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1857
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1860
    :cond_5e
    const-string/jumbo v1, "StartSystemUI"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1862
    :try_start_64
    invoke-static {p2, p3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_16c

    .line 1866
    :goto_67
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1867
    const-string/jumbo v1, "MakeNetworkScoreReady"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1869
    if-eqz p4, :cond_75

    :try_start_72
    invoke-virtual {p4}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_175

    .line 1873
    :cond_75
    :goto_75
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1874
    const-string/jumbo v1, "MakeNetworkManagementServiceReady"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1876
    if-eqz p5, :cond_83

    :try_start_80
    invoke-virtual {p5}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_17e

    .line 1880
    :cond_83
    :goto_83
    const/4 v1, 0x0

    .line 1881
    if-eqz p6, :cond_8a

    .line 1882
    invoke-virtual {p6}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 1885
    :cond_8a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1886
    const-string/jumbo v2, "MakeNetworkStatsServiceReady"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1888
    if-eqz p7, :cond_98

    :try_start_95
    invoke-virtual {p7}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_98} :catch_187

    .line 1892
    :cond_98
    :goto_98
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1893
    const-string/jumbo v2, "MakeConnectivityServiceReady"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1895
    if-eqz p8, :cond_a6

    :try_start_a3
    invoke-virtual {p8}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_190

    .line 1899
    :cond_a6
    :goto_a6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1900
    const-string/jumbo v2, "MakeNetworkPolicyServiceReady"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1902
    if-eqz p6, :cond_b4

    .line 1903
    :try_start_b1
    invoke-virtual {p6, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_199

    .line 1908
    :cond_b4
    :goto_b4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1910
    const-string/jumbo v1, "StartWatchdog"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1911
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1912
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1915
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 1919
    const-string/jumbo v1, "PhaseThirdPartyAppsCanStart"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1921
    if-eqz v0, :cond_da

    .line 1922
    const-string/jumbo v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1924
    :cond_da
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1925
    const/16 v1, 0x258

    .line 1924
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1926
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1928
    const-string/jumbo v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1930
    if-eqz p9, :cond_ef

    :try_start_ec
    invoke-virtual {p9}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_ef} :catch_1a2

    .line 1934
    :cond_ef
    :goto_ef
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1935
    const-string/jumbo v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1937
    if-eqz p10, :cond_fd

    :try_start_fa
    invoke-virtual {p10}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_fd} :catch_1ab

    .line 1941
    :cond_fd
    :goto_fd
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1942
    const-string/jumbo v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1944
    if-eqz p11, :cond_10b

    :try_start_108
    invoke-virtual {p11}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_10b} :catch_1b4

    .line 1948
    :cond_10b
    :goto_10b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1949
    const-string/jumbo v0, "MakeCommonTimeManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1951
    if-eqz p12, :cond_119

    .line 1952
    :try_start_116
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_119
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_119} :catch_1bd

    .line 1957
    :cond_119
    :goto_119
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1958
    const-string/jumbo v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1961
    if-eqz p13, :cond_127

    :try_start_124
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_124 .. :try_end_127} :catch_1c6

    .line 1965
    :cond_127
    :goto_127
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1966
    const-string/jumbo v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1968
    if-eqz p14, :cond_135

    :try_start_132
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_135} :catch_1cf

    .line 1972
    :cond_135
    :goto_135
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1973
    const-string/jumbo v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1975
    if-eqz p15, :cond_143

    :try_start_140
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_143} :catch_1d8

    .line 1979
    :cond_143
    :goto_143
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1980
    const-string/jumbo v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1982
    if-eqz p16, :cond_151

    :try_start_14e
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_151
    .catch Ljava/lang/Throwable; {:try_start_14e .. :try_end_151} :catch_1e1

    .line 1986
    :cond_151
    :goto_151
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1988
    const-string/jumbo v0, "MakeNetworkScoreServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1990
    if-eqz p4, :cond_15f

    :try_start_15c
    invoke-virtual {p4}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_15f} :catch_1ea

    .line 1994
    :cond_15f
    :goto_15f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void

    .line 1832
    :catch_163
    move-exception v0

    .line 1833
    const-string/jumbo v1, "observing native crashes"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1863
    :catch_16c
    move-exception v1

    .line 1864
    const-string/jumbo v2, "starting System UI"

    invoke-direct {p0, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    .line 1870
    :catch_175
    move-exception v1

    .line 1871
    const-string/jumbo v2, "making Network Score Service ready"

    invoke-direct {p0, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_75

    .line 1877
    :catch_17e
    move-exception v1

    .line 1878
    const-string/jumbo v2, "making Network Managment Service ready"

    invoke-direct {p0, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_83

    .line 1889
    :catch_187
    move-exception v2

    .line 1890
    const-string/jumbo v3, "making Network Stats Service ready"

    invoke-direct {p0, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_98

    .line 1896
    :catch_190
    move-exception v2

    .line 1897
    const-string/jumbo v3, "making Connectivity Service ready"

    invoke-direct {p0, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a6

    .line 1905
    :catch_199
    move-exception v1

    .line 1906
    const-string/jumbo v2, "making Network Policy Service ready"

    invoke-direct {p0, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b4

    .line 1931
    :catch_1a2
    move-exception v0

    .line 1932
    const-string/jumbo v1, "Notifying Location Service running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ef

    .line 1938
    :catch_1ab
    move-exception v0

    .line 1939
    const-string/jumbo v1, "Notifying CountryDetectorService running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_fd

    .line 1945
    :catch_1b4
    move-exception v0

    .line 1946
    const-string/jumbo v1, "Notifying NetworkTimeService running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10b

    .line 1954
    :catch_1bd
    move-exception v0

    .line 1955
    const-string/jumbo v1, "Notifying CommonTimeManagementService running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_119

    .line 1962
    :catch_1c6
    move-exception v0

    .line 1963
    const-string/jumbo v1, "Notifying InputManagerService running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_127

    .line 1969
    :catch_1cf
    move-exception v0

    .line 1970
    const-string/jumbo v1, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_135

    .line 1976
    :catch_1d8
    move-exception v0

    .line 1977
    const-string/jumbo v1, "Notifying MediaRouterService running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_143

    .line 1983
    :catch_1e1
    move-exception v0

    .line 1984
    const-string/jumbo v1, "Notifying MmsService running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_151

    .line 1991
    :catch_1ea
    move-exception v0

    .line 1992
    const-string/jumbo v1, "Notifying NetworkScoreService running"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15f
.end method

.method synthetic lambda$-com_android_server_SystemServer_84525()V
    .registers 5

    .prologue
    .line 1843
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    new-instance v0, Landroid/util/TimingsTraceLog;

    .line 1845
    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    .line 1844
    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1846
    const-string/jumbo v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1847
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string/jumbo v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1848
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1849
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 1850
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method
