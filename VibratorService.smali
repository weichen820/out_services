.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$1;,
        Lcom/android/server/VibratorService$2;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$VibratorShellCommand;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:[Landroid/os/VibrationEffect;

.field private final mH:Landroid/os/Handler;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportsAmplitudeControl:Z

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/VibratorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/VibratorService;JIII)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/VibratorService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/VibratorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    .line 191
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 78
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 98
    iput v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 461
    new-instance v0, Lcom/android/server/VibratorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 919
    new-instance v0, Lcom/android/server/VibratorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 195
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 197
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 199
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 200
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 201
    const-string/jumbo v1, "*vibrator*"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 205
    const-string/jumbo v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 204
    iput-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 207
    const-string/jumbo v0, "batterystats"

    .line 206
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 209
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    const v1, 0x10e0075

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 212
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    const v1, 0x10e0033

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 215
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 216
    const v1, 0x112000b

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 218
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    const v1, 0x1070049

    .line 224
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffect([J)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 228
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_ea

    .line 227
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 230
    const v3, 0x1070019

    .line 229
    invoke-static {v2, v3}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v2

    .line 231
    invoke-static {v2}, Lcom/android/server/VibratorService;->createEffect([J)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 233
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/os/VibrationEffect;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    const/4 v0, 0x2

    aput-object v2, v3, v0

    iput-object v3, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    .line 234
    return-void

    .line 228
    :array_ea
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 10

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_f

    .line 434
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 436
    :cond_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/VibratorService$VibrationInfo;

    .line 437
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v7

    .line 436
    invoke-direct/range {v1 .. v7}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method private static createEffect([J)Landroid/os/VibrationEffect;
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 237
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_9

    .line 238
    :cond_8
    return-object v1

    .line 239
    :cond_9
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 240
    aget-wide v0, p0, v3

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 242
    :cond_14
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_13

    .line 471
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 472
    iput-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 474
    :cond_13
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 475
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 476
    return-void
.end method

.method private doVibratorExists()Z
    .registers 2

    .prologue
    .line 692
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 728
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2

    .line 732
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 733
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 734
    if-eqz v3, :cond_21

    move v1, v0

    .line 735
    :goto_10
    if-ge v1, v3, :cond_24

    .line 736
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 735
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 739
    :cond_21
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit v2

    .line 742
    return-void

    .line 728
    :catchall_26
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private doVibratorOn(JIII)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 696
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2

    .line 697
    const/4 v1, -0x1

    if-ne p3, v1, :cond_9

    .line 698
    :try_start_7
    iget p3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 701
    :cond_9
    const-string/jumbo v1, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Turning vibrator on for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 702
    const-string/jumbo v4, " with amplitude "

    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 702
    const-string/jumbo v4, "."

    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 705
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 706
    if-eqz v3, :cond_66

    .line 708
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    move v1, v0

    .line 709
    :goto_55
    if-ge v1, v3, :cond_6c

    .line 710
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 709
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    .line 715
    :cond_66
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 716
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_6e

    :cond_6c
    monitor-exit v2

    .line 719
    return-void

    .line 696
    :catchall_6e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .registers 14

    .prologue
    const-wide/16 v10, 0x0

    .line 745
    iget-object v8, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v8

    .line 746
    :try_start_5
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 748
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 749
    if-nez v1, :cond_2b

    .line 750
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v2

    .line 751
    cmp-long v1, v2, v10

    if-lez v1, :cond_2b

    .line 752
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_6f

    monitor-exit v8

    .line 753
    return-wide v2

    .line 756
    :cond_2b
    :try_start_2b
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_6f

    move-result v1

    if-nez v1, :cond_33

    monitor-exit v8

    .line 757
    return-wide v10

    .line 759
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v0

    .line 760
    if-ltz v0, :cond_3e

    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    array-length v1, v1

    if-lt v0, v1, :cond_49

    .line 761
    :cond_3e
    const-string/jumbo v0, "VibratorService"

    const-string/jumbo v1, "Failed to play prebaked effect, no fallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_6f

    monitor-exit v8

    .line 762
    return-wide v10

    .line 760
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3e

    .line 764
    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    aget-object v3, v1, v0

    .line 766
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    .line 767
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6d
    .catchall {:try_start_49 .. :try_end_6d} :catchall_6f

    monitor-exit v8

    .line 769
    return-wide v10

    .line 745
    :catchall_6f
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .registers 3

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_7

    .line 723
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 725
    :cond_7
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .registers 7

    .prologue
    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 576
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    .line 575
    const/4 v4, 0x3

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 577
    if-nez v0, :cond_2a

    .line 578
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    .line 579
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 578
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2b

    move-result v0

    .line 585
    :cond_2a
    :goto_2a
    return v0

    .line 581
    :catch_2b
    move-exception v0

    .line 582
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Failed to get appop mode for vibration!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    const/4 v0, 0x1

    goto :goto_2a
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 339
    if-nez v1, :cond_8

    .line 340
    return-object v0

    .line 342
    :cond_8
    array-length v0, v1

    new-array v2, v0, [J

    .line 343
    const/4 v0, 0x0

    :goto_c
    array-length v3, v1

    if-ge v0, v3, :cond_17

    .line 344
    aget v3, v1, v0

    int-to-long v4, v3

    aput-wide v4, v2, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 346
    :cond_17
    return-object v2
.end method

.method private isAllowedToVibrate(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 541
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-nez v0, :cond_7

    .line 542
    return v2

    .line 544
    :cond_7
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    .line 545
    return v2

    .line 547
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    if-nez v0, :cond_14

    .line 548
    return v3

    .line 550
    :cond_14
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    .line 551
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_24

    .line 554
    :cond_23
    return v2

    .line 552
    :cond_24
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_23

    .line 557
    return v3
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 423
    instance-of v0, p0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_f

    .line 424
    nop

    nop

    .line 425
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v0

    if-ltz v0, :cond_f

    .line 426
    const/4 v0, 0x1

    return v0

    .line 429
    :cond_f
    return v1
.end method

.method private noteVibratorOffLocked()V
    .registers 3

    .prologue
    .line 781
    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v0, :cond_e

    .line 783
    :try_start_4
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_f

    .line 785
    :goto_b
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 787
    :cond_e
    return-void

    .line 784
    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private noteVibratorOnLocked(IJ)V
    .registers 6

    .prologue
    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 775
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 778
    :goto_7
    return-void

    .line 776
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private reportFinishVibrationLocked()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1f

    .line 591
    :try_start_5
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    .line 592
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 593
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    .line 592
    const/4 v4, 0x3

    .line 591
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_20

    .line 595
    :goto_1d
    iput-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 597
    :cond_1f
    return-void

    .line 594
    :catch_20
    move-exception v0

    goto :goto_1d
.end method

.method private shouldVibrateForRingtone()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 562
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 565
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrate_when_ringing"

    .line 564
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_26

    .line 566
    if-eqz v0, :cond_24

    move v0, v1

    :goto_23
    return v0

    :cond_24
    move v0, v2

    goto :goto_23

    .line 568
    :cond_26
    if-ne v0, v1, :cond_29

    :goto_28
    return v1

    :cond_29
    move v1, v2

    goto :goto_28
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 9

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 520
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_30

    .line 521
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 522
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    .line 523
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    :cond_2f
    :goto_2f
    return-void

    .line 524
    :cond_30
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_53

    .line 527
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    .line 528
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 529
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_2f

    .line 530
    :cond_53
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_6d

    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v0

    .line 532
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2f

    .line 533
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    .line 536
    :cond_6d
    const-string/jumbo v0, "VibratorService"

    const-string/jumbo v1, "Unknown vibration type, ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 5

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrate(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 495
    return-void

    .line 498
    :cond_7
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 499
    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 498
    if-eqz v0, :cond_17

    .line 503
    return-void

    .line 506
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    .line 507
    if-eqz v0, :cond_3f

    .line 508
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 511
    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Would be an error: vibrate from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_3e
    return-void

    .line 515
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 516
    return-void
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4

    .prologue
    .line 600
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_10

    .line 601
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 603
    :cond_10
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 622
    :try_start_2
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    const-string/jumbo v3, "vibrate_input_devices"

    const/4 v4, -0x2

    .line 621
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_f} :catch_59

    move-result v0

    if-lez v0, :cond_57

    move v0, v1

    .line 626
    :goto_13
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v0, v3, :cond_6a

    .line 628
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    move v0, v1

    .line 631
    :goto_1a
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v3, :cond_5c

    .line 632
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v3, :cond_2b

    .line 633
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 634
    iget-object v3, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v3, p0, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 643
    :cond_2b
    :goto_2b
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v3, :cond_69

    .line 645
    iget-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 646
    :goto_3a
    array-length v3, v0

    if-ge v2, v3, :cond_68

    .line 647
    iget-object v3, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 648
    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 650
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_57
    move v0, v2

    .line 621
    goto :goto_13

    .line 624
    :catch_59
    move-exception v0

    move v0, v2

    goto :goto_13

    .line 637
    :cond_5c
    iget-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v3, :cond_2b

    .line 638
    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 639
    iget-object v3, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v3, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_2b

    .line 653
    :cond_68
    return v1

    .line 655
    :cond_69
    return v0

    :cond_6a
    move v0, v2

    goto :goto_1a
.end method

.method private updateLowPowerModeLocked()Z
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 660
    const/4 v1, 0x2

    .line 659
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 661
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_11

    .line 662
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 663
    const/4 v0, 0x1

    return v0

    .line 665
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private updateVibrators()V
    .registers 4

    .prologue
    .line 606
    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v0

    .line 608
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    .line 610
    if-nez v0, :cond_f

    if-eqz v2, :cond_12

    .line 612
    :cond_f
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v1

    .line 615
    return-void

    .line 606
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .registers 7

    .prologue
    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 305
    return-void

    .line 307
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 308
    return-void

    .line 310
    :cond_12
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 311
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 310
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 312
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 323
    if-nez p0, :cond_d

    .line 325
    const-string/jumbo v0, "VibratorService"

    const-string/jumbo v1, "effect must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v3

    .line 329
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    .line 334
    const/4 v0, 0x1

    return v0

    .line 330
    :catch_12
    move-exception v0

    .line 331
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    return v3
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 443
    const-string/jumbo v1, "android.permission.VIBRATE"

    .line 444
    const-string/jumbo v2, "cancelVibrate"

    .line 442
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_e
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_24

    .line 451
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_2b

    move-result-wide v2

    .line 453
    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 455
    :try_start_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2b

    :cond_24
    monitor-exit v1

    .line 459
    return-void

    .line 454
    :catchall_26
    move-exception v0

    .line 455
    :try_start_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    throw v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    .line 446
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 942
    :cond_c
    const-string/jumbo v0, "Previous vibrations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_15
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    .line 945
    const-string/jumbo v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_35

    goto :goto_1b

    .line 943
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_38
    monitor-exit v1

    .line 949
    return-void
.end method

.method public hasAmplitudeControl()Z
    .registers 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1

    .line 299
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 296
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasVibrator()Z
    .registers 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 671
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 676
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 681
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 955
    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$VibratorShellCommand;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 956
    return-void
.end method

.method public onVibrationFinished()V
    .registers 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 488
    return-void

    .line 483
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 248
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 250
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 251
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 252
    new-instance v1, Lcom/android/server/VibratorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 264
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 268
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$4;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    .line 273
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 268
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 275
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 276
    return-void
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    .line 352
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 354
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_15
    const-string/jumbo v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", repeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", usageHint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-nez p5, :cond_60

    .line 360
    const-string/jumbo v0, "VibratorService"

    const-string/jumbo v1, "token must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 363
    :cond_60
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 364
    invoke-static {p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 365
    return-void

    .line 370
    :cond_6a
    instance-of v0, p3, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_9e

    .line 371
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_9e

    .line 372
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    .line 370
    if-eqz v0, :cond_9e

    move-object v0, p3

    .line 373
    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 375
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect$OneShot;

    .line 376
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 377
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v1

    if-ne v0, v1, :cond_9e

    .line 381
    return-void

    .line 389
    :cond_9e
    invoke-static {p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 390
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v0}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    .line 389
    if-eqz v0, :cond_b5

    .line 394
    return-void

    .line 397
    :cond_b5
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move v4, p4

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    .line 401
    instance-of v1, p3, Landroid/os/VibrationEffect$Waveform;

    if-eqz v1, :cond_c8

    .line 403
    const/4 v1, 0x0

    :try_start_c5
    invoke-interface {p5, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_c8} :catch_dd

    .line 410
    :cond_c8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 412
    :try_start_cc
    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_e2

    .line 413
    :try_start_cf
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 414
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 415
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_df

    :try_start_d8
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_e2

    .line 418
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    return-void

    .line 404
    :catch_dd
    move-exception v0

    .line 405
    return-void

    .line 412
    :catchall_df
    move-exception v0

    :try_start_e0
    monitor-exit v1

    throw v0
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_e2

    .line 417
    :catchall_e2
    move-exception v0

    .line 418
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    throw v0
.end method
