.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$1;,
        Lcom/android/server/GestureLauncherService$2;,
        Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;
    }
.end annotation


# static fields
.field static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field private static final DBG:Z = false

.field private static final DBG_CAMERA_LIFT:Z = false

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchRegistered:Z

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mCameraLiftRegistered:Z

.field private final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field private mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mLastPowerDown:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPowerButtonConsecutiveTaps:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/GestureLauncherService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/GestureLauncherService;)Landroid/view/WindowManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/GestureLauncherService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/GestureLauncherService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/GestureLauncherService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/GestureLauncherService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/GestureLauncherService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/GestureLauncherService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/GestureLauncherService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/GestureLauncherService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/GestureLauncherService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 133
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 80
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;)V

    .line 79
    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 97
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 100
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 107
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 117
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 423
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 139
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 141
    return-void
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    .prologue
    .line 340
    const v0, 0x112002b

    .line 339
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 318
    const-string/jumbo v2, "camera_double_tap_power_gesture_disabled"

    .line 317
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x1

    .line 316
    :cond_19
    return v0
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 333
    const v1, 0x10e001f

    .line 332
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 333
    const/4 v2, -0x1

    .line 332
    if-eq v1, v2, :cond_18

    const/4 v1, 0x1

    .line 334
    :goto_c
    if-eqz v1, :cond_17

    .line 335
    const-string/jumbo v1, "gesture.disable_camera_launch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 334
    :cond_17
    return v0

    :cond_18
    move v1, v0

    .line 332
    goto :goto_c
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 312
    const-string/jumbo v2, "camera_gesture_disabled"

    .line 311
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x1

    .line 310
    :cond_19
    return v0
.end method

.method public static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .registers 3

    .prologue
    .line 345
    const v0, 0x10e0020

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 345
    const/4 v1, -0x1

    .line 344
    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    .line 346
    :goto_b
    return v0

    .line 344
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 324
    const-string/jumbo v3, "camera_lift_trigger_enabled"

    .line 323
    invoke-static {v2, v3, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1a

    .line 322
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    .line 323
    goto :goto_19

    :cond_1c
    move v0, v1

    .line 322
    goto :goto_19
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    .prologue
    .line 353
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 354
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    .line 353
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_7

    .line 224
    return-void

    .line 226
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 227
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 228
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 229
    const-string/jumbo v1, "sensor"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 231
    const v1, 0x10e001f

    .line 230
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 232
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4f

    .line 233
    iput-boolean v3, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 235
    const v2, 0x1040110

    .line 234
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 243
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_4f

    .line 244
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 245
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 246
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 245
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 258
    :cond_4f
    return-void

    .line 248
    :cond_50
    const-string/jumbo v0, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 250
    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 248
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_7

    .line 275
    return-void

    .line 277
    :cond_7
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 278
    const-string/jumbo v1, "sensor"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 280
    const v1, 0x10e0020

    .line 279
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 281
    const/4 v2, -0x1

    if-eq v1, v2, :cond_45

    .line 282
    iput-boolean v3, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 284
    const v2, 0x1040111

    .line 283
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 292
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_45

    .line 293
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 294
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 295
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 307
    :cond_45
    return-void

    .line 297
    :cond_46
    const-string/jumbo v0, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 299
    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 297
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerContentObservers()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    const-string/jumbo v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 170
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 173
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 176
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "camera_lift_trigger_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 176
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 205
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_23

    .line 206
    iput-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 207
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 208
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 209
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 210
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 211
    iput v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 213
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 214
    const-string/jumbo v1, "sensor"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 215
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 217
    :cond_23
    return-void
.end method

.method private unregisterCameraLiftTrigger()V
    .registers 4

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_19

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 264
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 265
    const-string/jumbo v1, "sensor"

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 266
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 268
    :cond_19
    return-void
.end method

.method private updateCameraRegistered()V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 184
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    .line 189
    :goto_13
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 190
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    .line 194
    :goto_20
    return-void

    .line 186
    :cond_21
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    goto :goto_13

    .line 192
    :cond_25
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    goto :goto_20
.end method


# virtual methods
.method handleCameraGesture(ZI)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    const-string/jumbo v3, "user_setup_complete"

    const/4 v4, -0x2

    .line 401
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    .line 403
    :goto_13
    if-nez v0, :cond_18

    .line 407
    return v2

    :cond_16
    move v0, v2

    .line 401
    goto :goto_13

    .line 413
    :cond_18
    if-eqz p1, :cond_21

    .line 415
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 418
    :cond_21
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 417
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 419
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 420
    return v1
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 362
    monitor-enter p0

    .line 363
    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long/2addr v4, v6

    .line 364
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    if-eqz v0, :cond_6b

    .line 365
    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-gez v0, :cond_6b

    .line 368
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    move v0, v2

    .line 374
    :goto_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_80

    monitor-exit p0

    .line 380
    if-eqz v0, :cond_53

    .line 381
    const-string/jumbo v0, "GestureLauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 382
    const-string/jumbo v6, "ms"

    .line 381
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0, v1, v2}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    .line 385
    if-eqz v0, :cond_53

    .line 386
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 387
    long-to-int v3, v4

    .line 386
    const/16 v6, 0xff

    invoke-virtual {v2, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 390
    :cond_53
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v3, "power_consecutive_short_tap_count"

    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 391
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v3, "power_double_tap_interval"

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 392
    iput-boolean v0, p3, Landroid/util/MutableBoolean;->value:Z

    .line 393
    if-eqz p2, :cond_83

    :goto_6a
    return v0

    .line 369
    :cond_6b
    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-gez v0, :cond_7a

    .line 370
    :try_start_71
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    move p2, v1

    move v0, v1

    goto :goto_1b

    .line 372
    :cond_7a
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_80

    move p2, v1

    move v0, v1

    goto :goto_1b

    .line 362
    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_83
    move v0, v1

    .line 393
    goto :goto_6a
.end method

.method public onBootPhase(I)V
    .registers 6

    .prologue
    .line 148
    const/16 v0, 0x258

    if-ne p1, v0, :cond_52

    .line 149
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 152
    return-void

    .line 155
    :cond_11
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 156
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 157
    const-string/jumbo v1, "power"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 158
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 159
    const-string/jumbo v1, "GestureLauncherService"

    .line 158
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 163
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 164
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 167
    :cond_52
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 144
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method updateCameraDoubleTapPowerEnabled()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 199
    monitor-enter p0

    .line 200
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 202
    return-void

    .line 199
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
