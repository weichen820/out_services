.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$1;,
        Lcom/android/server/DeviceIdleController$2;,
        Lcom/android/server/DeviceIdleController$3;,
        Lcom/android/server/DeviceIdleController$4;,
        Lcom/android/server/DeviceIdleController$5;,
        Lcom/android/server/DeviceIdleController$6;,
        Lcom/android/server/DeviceIdleController$7;,
        Lcom/android/server/DeviceIdleController$8;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$MotionListener;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$Shell;
    }
.end annotation


# static fields
.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z = false

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field private static final LIGHT_STATE_ACTIVE:I = 0x0

.field private static final LIGHT_STATE_IDLE:I = 0x4

.field private static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final LIGHT_STATE_INACTIVE:I = 0x1

.field private static final LIGHT_STATE_OVERRIDE:I = 0x7

.field private static final LIGHT_STATE_PRE_IDLE:I = 0x3

.field private static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field private static final MSG_FINISH_IDLE_OP:I = 0x8

.field private static final MSG_REPORT_ACTIVE:I = 0x5

.field private static final MSG_REPORT_IDLE_OFF:I = 0x4

.field private static final MSG_REPORT_IDLE_ON:I = 0x2

.field private static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field private static final MSG_REPORT_MAINTENANCE_ACTIVITY:I = 0x7

.field private static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field private static final MSG_WRITE_CONFIG:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"


# instance fields
.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurIdleBudget:J

.field private final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mDeepEnabled:Z

.field private final mEventCmds:[I

.field private final mEventTimes:[J

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private mLightState:I

.field private mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field private mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private final mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/IMaintenanceActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceStartTime:J

.field private final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mNetworkConnected:Z

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportedMaintenanceActivity:Z

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/DeviceIdleController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/DeviceIdleController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 1316
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 224
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 223
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    .line 230
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 236
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 242
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 247
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 253
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 252
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 258
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 264
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 271
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 276
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 282
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 287
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 293
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 300
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 299
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 310
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 319
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 320
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 331
    new-instance v0, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 357
    new-instance v0, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 356
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 367
    new-instance v0, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 366
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 379
    new-instance v0, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 378
    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 388
    new-instance v0, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 403
    new-instance v0, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    new-instance v0, Lcom/android/server/DeviceIdleController$MotionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$MotionListener;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 464
    new-instance v0, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 485
    new-instance v0, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 1317
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    .line 1318
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 1319
    return-void
.end method

.method private addEvent(I)V
    .registers 7

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v0, v0, v4

    if-eq v0, p1, :cond_24

    .line 324
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 325
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 326
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v4

    .line 327
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 329
    :cond_24
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2373
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2374
    if-eqz p0, :cond_1f

    move v1, v2

    .line 2375
    :goto_8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 2376
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2375
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 2379
    :cond_1f
    if-eqz p1, :cond_39

    move v1, v2

    .line 2380
    :goto_22
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 2381
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2380
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 2384
    :cond_39
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2385
    new-array v1, v0, [I

    .line 2386
    :goto_3f
    if-ge v2, v0, :cond_4a

    .line 2387
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 2386
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 2389
    :cond_4a
    return-object v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    .prologue
    .line 2583
    const-string/jumbo v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2584
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    const-string/jumbo v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    const-string/jumbo v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2588
    const-string/jumbo v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    const-string/jumbo v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    const-string/jumbo v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2591
    const-string/jumbo v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2592
    const-string/jumbo v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2593
    const-string/jumbo v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2594
    const-string/jumbo v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2595
    const-string/jumbo v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    const-string/jumbo v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2597
    const-string/jumbo v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2598
    const-string/jumbo v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    const-string/jumbo v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    const-string/jumbo v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    const-string/jumbo v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    const-string/jumbo v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2603
    const-string/jumbo v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    const-string/jumbo v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    const-string/jumbo v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    const-string/jumbo v0, "  except-idle-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    const-string/jumbo v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    const-string/jumbo v0, "    [reset] will reset the whitelist to it\'s original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    const-string/jumbo v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    const-string/jumbo v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    const-string/jumbo v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    const-string/jumbo v0, "  tempwhitelist [-u USER] [-d DURATION] [package ..]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2615
    const-string/jumbo v0, "    Temporarily place packages in whitelist for DURATION milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    const-string/jumbo v0, "    If no DURATION is specified, 10 seconds is used"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2617
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 1334
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static lightStateToString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    packed-switch p0, :pswitch_data_24

    .line 195
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :pswitch_8
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    .line 189
    :pswitch_c
    const-string/jumbo v0, "INACTIVE"

    return-object v0

    .line 190
    :pswitch_10
    const-string/jumbo v0, "PRE_IDLE"

    return-object v0

    .line 191
    :pswitch_14
    const-string/jumbo v0, "IDLE"

    return-object v0

    .line 192
    :pswitch_18
    const-string/jumbo v0, "WAITING_FOR_NETWORK"

    return-object v0

    .line 193
    :pswitch_1c
    const-string/jumbo v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 194
    :pswitch_20
    const-string/jumbo v0, "OVERRIDE"

    return-object v0

    .line 187
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_3
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .registers 8

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1762
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 2482
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2486
    :cond_b
    :try_start_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_13

    .line 2487
    if-ne v1, v5, :cond_b

    .line 2491
    :cond_13
    if-eq v1, v2, :cond_3a

    .line 2492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no start tag found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_1e} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_1e} :catch_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1e} :catch_118
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1e} :catch_fb
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_1e} :catch_c1

    .line 2521
    :catch_1e
    move-exception v0

    .line 2522
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed parsing config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    :cond_39
    :goto_39
    return-void

    .line 2495
    :cond_3a
    :try_start_3a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2496
    :cond_3e
    :goto_3e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v5, :cond_39

    .line 2497
    if-ne v2, v6, :cond_4c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_39

    .line 2498
    :cond_4c
    if-eq v2, v6, :cond_3e

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3e

    .line 2502
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2503
    const-string/jumbo v3, "wl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2504
    const-string/jumbo v2, "n"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_65} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_65} :catch_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_65} :catch_118
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_65} :catch_fb
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_65} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_65} :catch_c1

    move-result-object v2

    .line 2505
    if-eqz v2, :cond_3e

    .line 2508
    const/high16 v3, 0x400000

    .line 2507
    :try_start_6a
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2509
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 2510
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2509
    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_7f} :catch_80
    .catch Ljava/lang/IllegalStateException; {:try_start_6a .. :try_end_7f} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_6a .. :try_end_7f} :catch_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_7f} :catch_118
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_7f} :catch_fb
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_7f} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6a .. :try_end_7f} :catch_c1

    goto :goto_3e

    .line 2511
    :catch_80
    move-exception v2

    goto :goto_3e

    .line 2515
    :cond_82
    :try_start_82
    const-string/jumbo v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <config>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2516
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2515
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a3
    .catch Ljava/lang/IllegalStateException; {:try_start_82 .. :try_end_a3} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_82 .. :try_end_a3} :catch_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_a3} :catch_118
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_82 .. :try_end_a3} :catch_fb
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_a3} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_82 .. :try_end_a3} :catch_c1

    goto :goto_3e

    .line 2523
    :catch_a4
    move-exception v0

    .line 2524
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed parsing config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2531
    :catch_c1
    move-exception v0

    .line 2532
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed parsing config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2529
    :catch_de
    move-exception v0

    .line 2530
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed parsing config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2527
    :catch_fb
    move-exception v0

    .line 2528
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed parsing config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 2525
    :catch_118
    move-exception v0

    .line 2526
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed parsing config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .registers 4

    .prologue
    .line 2448
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2449
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2450
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2451
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .registers 4

    .prologue
    .line 2454
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2455
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2456
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2457
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    packed-switch p0, :pswitch_data_24

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :pswitch_8
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    .line 161
    :pswitch_c
    const-string/jumbo v0, "INACTIVE"

    return-object v0

    .line 162
    :pswitch_10
    const-string/jumbo v0, "IDLE_PENDING"

    return-object v0

    .line 163
    :pswitch_14
    const-string/jumbo v0, "SENSING"

    return-object v0

    .line 164
    :pswitch_18
    const-string/jumbo v0, "LOCATING"

    return-object v0

    .line 165
    :pswitch_1c
    const-string/jumbo v0, "IDLE"

    return-object v0

    .line 166
    :pswitch_20
    const-string/jumbo v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 159
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked(IZ)V
    .registers 7

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2424
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v0, v0

    if-eq v0, v1, :cond_f

    .line 2425
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 2427
    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_1f

    .line 2428
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 2427
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2430
    :cond_1f
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_2a

    .line 2435
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempWhitelist([IIZ)V

    .line 2438
    :cond_2a
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_35

    .line 2443
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 2445
    :cond_35
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2393
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 2394
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 2393
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2395
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 2396
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 2395
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 2398
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 2397
    invoke-static {v3, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 2399
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_2e

    .line 2404
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2406
    :cond_2e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_39

    .line 2411
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2413
    :cond_39
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    if-eqz v0, :cond_44

    .line 2418
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$LocalService;->setDeviceIdleUserWhitelist([I)V

    .line 2420
    :cond_44
    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1665
    const-string/jumbo v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    .line 1666
    const-string/jumbo v2, "No permission to change device idle whitelist"

    .line 1664
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1668
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1669
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1674
    const-string/jumbo v6, "addPowerSaveTempWhitelistApp"

    .line 1672
    const/4 v4, 0x0

    .line 1673
    const/4 v5, 0x0

    .line 1674
    const/4 v7, 0x0

    move/from16 v3, p4

    .line 1668
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1675
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1678
    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v8, p5

    .line 1677
    :try_start_2f
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_36

    .line 1680
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    return-void

    .line 1679
    :catchall_36
    move-exception v0

    .line 1680
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1679
    throw v0
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .registers 20

    .prologue
    .line 1704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1705
    const/4 v3, 0x0

    .line 1706
    monitor-enter p0

    .line 1707
    :try_start_6
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1708
    const/16 v4, 0x2710

    if-lt v2, v4, :cond_3e

    .line 1709
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1710
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calling app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1711
    const-string/jumbo v4, " is not on whitelist"

    .line 1710
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_3b

    .line 1706
    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1714
    :cond_3e
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1715
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1716
    if-nez v2, :cond_9a

    const/4 v4, 0x1

    .line 1718
    :goto_53
    if-eqz v4, :cond_68

    .line 1719
    new-instance v2, Landroid/util/Pair;

    new-instance v5, Landroid/util/MutableLong;

    const-wide/16 v10, 0x0

    invoke-direct {v5, v10, v11}, Landroid/util/MutableLong;-><init>(J)V

    move-object/from16 v0, p6

    invoke-direct {v2, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1720
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1722
    :cond_68
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableLong;

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/util/MutableLong;->value:J
    :try_end_6f
    .catchall {:try_start_3e .. :try_end_6f} :catchall_3b

    .line 1726
    if-eqz v4, :cond_a4

    .line 1729
    :try_start_71
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v4, 0x8011

    move-object/from16 v0, p6

    invoke-interface {v2, v4, v0, p2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_7b} :catch_a0
    .catchall {:try_start_71 .. :try_end_7b} :catchall_3b

    .line 1733
    :goto_7b
    :try_start_7b
    invoke-direct {p0, p2, v8, v9}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 1734
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 1735
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_a2

    .line 1736
    if-nez p5, :cond_9c

    .line 1737
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v3

    .line 1742
    :goto_90
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V
    :try_end_93
    .catchall {:try_start_7b .. :try_end_93} :catchall_3b

    :goto_93
    monitor-exit p0

    .line 1745
    if-eqz v2, :cond_99

    .line 1746
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1748
    :cond_99
    return-void

    .line 1716
    :cond_9a
    const/4 v4, 0x0

    goto :goto_53

    .line 1739
    :cond_9c
    :try_start_9c
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_9e
    .catchall {:try_start_9c .. :try_end_9e} :catchall_3b

    move-object v2, v3

    goto :goto_90

    .line 1731
    :catch_a0
    move-exception v2

    goto :goto_7b

    :cond_a2
    move-object v2, v3

    goto :goto_90

    :cond_a4
    move-object v2, v3

    goto :goto_93
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 17

    .prologue
    .line 1691
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1692
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object/from16 v7, p7

    .line 1693
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1696
    :goto_19
    return-void

    .line 1694
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1484
    monitor-enter p0

    .line 1486
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1487
    const/high16 v1, 0x400000

    .line 1486
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1488
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 1489
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1490
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2d
    .catchall {:try_start_1 .. :try_end_2a} :catchall_31

    .line 1493
    :cond_2a
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1494
    :catch_2d
    move-exception v0

    .line 1495
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1484
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 1519
    monitor-enter p0

    .line 1521
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1522
    const/high16 v1, 0x400000

    .line 1521
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1523
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35

    .line 1525
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1526
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1528
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1529
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 1527
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_35} :catch_38
    .catchall {:try_start_1 .. :try_end_35} :catchall_3c

    .line 1531
    :cond_35
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1532
    :catch_38
    move-exception v0

    .line 1533
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1519
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1884
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_2c

    .line 1885
    :cond_b
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1886
    invoke-static {v1, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 1887
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 1888
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1889
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1890
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 1891
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 1892
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1893
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 1894
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 1895
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 1897
    :cond_2c
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1901
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_10

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_46

    .line 1904
    :cond_10
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v0, :cond_2a

    .line 1905
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1907
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 1908
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 1909
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 1911
    :cond_2a
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_46

    .line 1912
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1914
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 1915
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 1916
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 1919
    :cond_46
    return-void
.end method

.method cancelAlarmLocked()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2310
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2311
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 2312
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2314
    :cond_11
    return-void
.end method

.method cancelLightAlarmLocked()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2317
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2318
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 2319
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2321
    :cond_11
    return-void
.end method

.method cancelLocatingLocked()V
    .registers 3

    .prologue
    .line 2324
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_15

    .line 2325
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2326
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 2327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 2329
    :cond_15
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 2332
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 2333
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2334
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2336
    :cond_11
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .registers 8

    .prologue
    .line 1765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1769
    monitor-enter p0

    .line 1770
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_4a

    .line 1771
    if-nez v0, :cond_11

    monitor-exit p0

    .line 1773
    return-void

    .line 1775
    :cond_11
    :try_start_11
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v4, v1, Landroid/util/MutableLong;->value:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3f

    .line 1776
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1780
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 1781
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2f

    .line 1782
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1784
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_4a

    .line 1786
    :try_start_32
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1787
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1786
    const/16 v2, 0x4011

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_4d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_4a

    :goto_3d
    monitor-exit p0

    .line 1798
    return-void

    .line 1795
    :cond_3f
    :try_start_3f
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    iget-wide v0, v0, Landroid/util/MutableLong;->value:J

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4a

    goto :goto_3d

    .line 1769
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1788
    :catch_4d
    move-exception v0

    goto :goto_3d
.end method

.method decActiveIdleOps()V
    .registers 2

    .prologue
    .line 2150
    monitor-enter p0

    .line 2151
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2152
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_13

    .line 2153
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 2154
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    .line 2157
    return-void

    .line 2150
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2973
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "DeviceIdleController"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 2975
    :cond_12
    if-eqz p3, :cond_93

    move v1, v3

    move v4, v3

    .line 2977
    :goto_16
    array-length v0, p3

    if-ge v1, v0, :cond_93

    .line 2978
    aget-object v0, p3, v1

    .line 2979
    const-string/jumbo v5, "-h"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2980
    invoke-static {p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2981
    return-void

    .line 2982
    :cond_28
    const-string/jumbo v5, "-u"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 2983
    add-int/lit8 v1, v1, 0x1

    .line 2984
    array-length v0, p3

    if-ge v1, v0, :cond_4c

    .line 2985
    aget-object v0, p3, v1

    .line 2986
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v1

    move v1, v4

    .line 2977
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    move v4, v1

    move v1, v0

    goto :goto_16

    .line 2988
    :cond_43
    const-string/jumbo v5, "-a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    :cond_4c
    move v0, v1

    move v1, v4

    goto :goto_3e

    .line 2990
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_75

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_75

    .line 2991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    return-void

    .line 2994
    :cond_75
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 2995
    iput v4, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 2996
    array-length v4, p3

    sub-int/2addr v4, v1

    new-array v5, v4, [Ljava/lang/String;

    .line 2997
    array-length v4, p3

    sub-int/2addr v4, v1

    invoke-static {p3, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2998
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 2999
    new-instance v7, Landroid/os/ResultReceiver;

    invoke-direct {v7, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v3, p1

    move-object v4, v2

    move-object v6, v2

    .line 2998
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3000
    return-void

    .line 3005
    :cond_93
    monitor-enter p0

    .line 3006
    :try_start_94
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v0, p2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 3008
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_f4

    .line 3009
    const-string/jumbo v0, "  Idling history:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3011
    const/16 v0, 0x63

    move v1, v0

    :goto_ad
    if-ltz v1, :cond_f4

    .line 3012
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v0, v0, v1

    .line 3013
    if-nez v0, :cond_b9

    .line 3011
    :goto_b5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_ad

    .line 3017
    :cond_b9
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a4

    .line 3023
    const-string/jumbo v0, "         ??"

    .line 3025
    :goto_c3
    const-string/jumbo v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3027
    const-string/jumbo v0, ": "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3028
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v6, v0, v1

    invoke-static {v6, v7, v4, v5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3029
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_dc
    .catchall {:try_start_94 .. :try_end_dc} :catchall_dd

    goto :goto_b5

    .line 3005
    :catchall_dd
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3018
    :pswitch_e0
    :try_start_e0
    const-string/jumbo v0, "     normal"

    goto :goto_c3

    .line 3019
    :pswitch_e4
    const-string/jumbo v0, " light-idle"

    goto :goto_c3

    .line 3020
    :pswitch_e8
    const-string/jumbo v0, "light-maint"

    goto :goto_c3

    .line 3021
    :pswitch_ec
    const-string/jumbo v0, "  deep-idle"

    goto :goto_c3

    .line 3022
    :pswitch_f0
    const-string/jumbo v0, " deep-maint"

    goto :goto_c3

    .line 3033
    :cond_f4
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3034
    if-lez v2, :cond_11a

    .line 3035
    const-string/jumbo v0, "  Whitelist (except idle) system apps:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    .line 3036
    :goto_103
    if-ge v1, v2, :cond_11a

    .line 3037
    const-string/jumbo v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3038
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_103

    .line 3041
    :cond_11a
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3042
    if-lez v2, :cond_140

    .line 3043
    const-string/jumbo v0, "  Whitelist system apps:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    .line 3044
    :goto_129
    if-ge v1, v2, :cond_140

    .line 3045
    const-string/jumbo v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3046
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_129

    .line 3049
    :cond_140
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3050
    if-lez v2, :cond_166

    .line 3051
    const-string/jumbo v0, "  Whitelist user apps:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    .line 3052
    :goto_14f
    if-ge v1, v2, :cond_166

    .line 3053
    const-string/jumbo v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3054
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14f

    .line 3057
    :cond_166
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 3058
    if-lez v1, :cond_18c

    .line 3059
    const-string/jumbo v0, "  Whitelist (except idle) all app ids:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v3

    .line 3060
    :goto_175
    if-ge v0, v1, :cond_18c

    .line 3061
    const-string/jumbo v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3062
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3063
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3060
    add-int/lit8 v0, v0, 0x1

    goto :goto_175

    .line 3066
    :cond_18c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 3067
    if-lez v1, :cond_1b2

    .line 3068
    const-string/jumbo v0, "  Whitelist user app ids:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v3

    .line 3069
    :goto_19b
    if-ge v0, v1, :cond_1b2

    .line 3070
    const-string/jumbo v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3071
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3072
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3069
    add-int/lit8 v0, v0, 0x1

    goto :goto_19b

    .line 3075
    :cond_1b2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 3076
    if-lez v1, :cond_1d8

    .line 3077
    const-string/jumbo v0, "  Whitelist all app ids:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v3

    .line 3078
    :goto_1c1
    if-ge v0, v1, :cond_1d8

    .line 3079
    const-string/jumbo v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3080
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3081
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3078
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c1

    .line 3084
    :cond_1d8
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 3086
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v0, :cond_200

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v0, v0

    .line 3087
    :goto_1e3
    if-lez v0, :cond_202

    .line 3088
    const-string/jumbo v1, "  Temp whitelist app ids:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    :goto_1eb
    if-ge v3, v0, :cond_202

    .line 3090
    const-string/jumbo v1, "    "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3091
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v1, v1, v3

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3092
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3089
    add-int/lit8 v3, v3, 0x1

    goto :goto_1eb

    :cond_200
    move v0, v3

    .line 3086
    goto :goto_1e3

    .line 3096
    :cond_202
    const-string/jumbo v0, "  mLightEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3097
    const-string/jumbo v0, "  mDeepEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3098
    const-string/jumbo v0, "  mForceIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3099
    const-string/jumbo v0, "  mMotionSensor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3100
    const-string/jumbo v0, "  mScreenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3101
    const-string/jumbo v0, "  mNetworkConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3102
    const-string/jumbo v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3103
    const-string/jumbo v0, "  mMotionActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3104
    const-string/jumbo v0, "  mNotMoving="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3105
    const-string/jumbo v0, "  mLocating="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasGps="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3106
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasNetwork="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3107
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mLocated="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3108
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v0, :cond_2a2

    .line 3109
    const-string/jumbo v0, "  mLastGenericLocation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3111
    :cond_2a2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_2b1

    .line 3112
    const-string/jumbo v0, "  mLastGpsLocation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3114
    :cond_2b1
    const-string/jumbo v0, "  mState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3115
    const-string/jumbo v0, " mLightState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3116
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    const-string/jumbo v0, "  mInactiveTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3118
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3119
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz v0, :cond_2ec

    .line 3120
    const-string/jumbo v0, "  mActiveIdleOpCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3122
    :cond_2ec
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_304

    .line 3123
    const-string/jumbo v0, "  mNextAlarmTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3124
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3125
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3127
    :cond_304
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_318

    .line 3128
    const-string/jumbo v0, "  mNextIdlePendingDelay="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3129
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3130
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3132
    :cond_318
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_32c

    .line 3133
    const-string/jumbo v0, "  mNextIdleDelay="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3134
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3135
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3137
    :cond_32c
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_340

    .line 3138
    const-string/jumbo v0, "  mNextIdleDelay="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3140
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3142
    :cond_340
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_358

    .line 3143
    const-string/jumbo v0, "  mNextLightAlarmTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3144
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3145
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3147
    :cond_358
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_36c

    .line 3148
    const-string/jumbo v0, "  mCurIdleBudget="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3149
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3150
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3152
    :cond_36c
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_384

    .line 3153
    const-string/jumbo v0, "  mMaintenanceStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3154
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3155
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3157
    :cond_384
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v0, :cond_393

    .line 3158
    const-string/jumbo v0, "  mJobsActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3160
    :cond_393
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz v0, :cond_3a2

    .line 3161
    const-string/jumbo v0, "  mAlarmsActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_3a2
    .catchall {:try_start_e0 .. :try_end_3a2} :catchall_dd

    :cond_3a2
    monitor-exit p0

    .line 3164
    return-void

    .line 3017
    :pswitch_data_3a4
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_e4
        :pswitch_e8
        :pswitch_ec
        :pswitch_f0
    .end packed-switch
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 3167
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 3168
    if-lez v4, :cond_59

    .line 3169
    const-string/jumbo v0, ""

    .line 3170
    if-eqz p2, :cond_5a

    .line 3171
    const-string/jumbo v0, "  Temp whitelist schedule:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    const-string/jumbo v0, "    "

    move-object v2, v0

    .line 3174
    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move v3, v1

    .line 3175
    :goto_1d
    if-ge v3, v4, :cond_59

    .line 3176
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3177
    const-string/jumbo v0, "UID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3178
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3179
    const-string/jumbo v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3180
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3181
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/MutableLong;

    iget-wide v8, v1, Landroid/util/MutableLong;->value:J

    invoke-static {v8, v9, v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3182
    const-string/jumbo v1, " - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3183
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    .line 3186
    :cond_59
    return-void

    :cond_5a
    move-object v2, v0

    goto :goto_18
.end method

.method exitForceIdleLocked()V
    .registers 3

    .prologue
    .line 1937
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_19

    .line 1938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 1939
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_19

    .line 1940
    :cond_f
    const-string/jumbo v0, "exit-force"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 1943
    :cond_19
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1801
    monitor-enter p0

    .line 1802
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    .line 1804
    return-void

    .line 1801
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x6

    .line 2207
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_1e

    .line 2209
    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2219
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v1, :cond_23

    .line 2220
    const-string/jumbo v0, "s:early"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2228
    :cond_1d
    :goto_1d
    return-void

    .line 2208
    :cond_1e
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_1d

    goto :goto_a

    .line 2221
    :cond_23
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_2e

    .line 2222
    const-string/jumbo v0, "s:predone"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_1d

    .line 2224
    :cond_2e
    const-string/jumbo v0, "s:early"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .prologue
    .line 1657
    monitor-enter p0

    .line 1658
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1657
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .registers 2

    .prologue
    .line 1651
    monitor-enter p0

    .line 1652
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1651
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .prologue
    .line 1639
    monitor-enter p0

    .line 1640
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1639
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .prologue
    .line 1645
    monitor-enter p0

    .line 1646
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1645
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1591
    monitor-enter p0

    .line 1592
    :try_start_2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 1593
    new-array v4, v0, [Ljava/lang/String;

    move v3, v1

    move v2, v1

    .line 1595
    :goto_13
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b

    .line 1596
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    .line 1597
    add-int/lit8 v2, v2, 0x1

    .line 1595
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    .line 1599
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    .line 1600
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_45

    .line 1601
    add-int/lit8 v2, v2, 0x1

    .line 1599
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    :cond_43
    monitor-exit p0

    .line 1603
    return-object v4

    .line 1591
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1608
    monitor-enter p0

    .line 1609
    :try_start_2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 1610
    new-array v4, v0, [Ljava/lang/String;

    move v3, v1

    move v2, v1

    .line 1612
    :goto_13
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v3, v0, :cond_2b

    .line 1613
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    .line 1614
    add-int/lit8 v2, v2, 0x1

    .line 1612
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13

    .line 1616
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_43

    .line 1617
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_45

    .line 1618
    add-int/lit8 v2, v2, 0x1

    .line 1616
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    :cond_43
    monitor-exit p0

    .line 1620
    return-object v4

    .line 1608
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1513
    monitor-enter p0

    .line 1514
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    .line 1513
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1552
    monitor-enter p0

    .line 1553
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    .line 1552
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .prologue
    .line 1328
    monitor-enter p0

    .line 1329
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 1328
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1558
    monitor-enter p0

    .line 1559
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1560
    new-array v3, v2, [Ljava/lang/String;

    .line 1561
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_1b

    .line 1562
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1d

    .line 1561
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_1b
    monitor-exit p0

    .line 1564
    return-object v3

    .line 1558
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1569
    monitor-enter p0

    .line 1570
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1571
    new-array v3, v2, [Ljava/lang/String;

    .line 1572
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_1b

    .line 1573
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1d

    .line 1572
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_1b
    monitor-exit p0

    .line 1575
    return-object v3

    .line 1569
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1580
    monitor-enter p0

    .line 1581
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1582
    new-array v2, v0, [Ljava/lang/String;

    .line 1583
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 1584
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_23

    .line 1583
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_21
    monitor-exit p0

    .line 1586
    return-object v2

    .line 1580
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2241
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v0, :cond_34

    .line 2242
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 2243
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2244
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2245
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2246
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2247
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2248
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    move v0, v1

    .line 2251
    :goto_20
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_32

    .line 2254
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2255
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2258
    :goto_2c
    if-eqz v1, :cond_31

    .line 2259
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2261
    :cond_31
    return-void

    :cond_32
    move v1, v0

    goto :goto_2c

    :cond_34
    move v0, v2

    goto :goto_20
.end method

.method handleWriteConfigFile()V
    .registers 6

    .prologue
    .line 2542
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2545
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_38

    .line 2546
    :try_start_6
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2547
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2548
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_35

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_18} :catch_38

    .line 2553
    :goto_18
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v3

    .line 2554
    const/4 v1, 0x0

    .line 2556
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2557
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 2558
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 2559
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2560
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2561
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_33} :catch_3a
    .catchall {:try_start_1c .. :try_end_33} :catchall_4a

    :goto_33
    monitor-exit v3

    .line 2567
    return-void

    .line 2545
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit p0

    throw v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_38} :catch_38

    .line 2550
    :catch_38
    move-exception v0

    goto :goto_18

    .line 2562
    :catch_3a
    move-exception v0

    .line 2563
    :try_start_3b
    const-string/jumbo v2, "DeviceIdleController"

    const-string/jumbo v4, "Error writing config file"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2564
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_4a

    goto :goto_33

    .line 2553
    :catchall_4a
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method incActiveIdleOps()V
    .registers 2

    .prologue
    .line 2144
    monitor-enter p0

    .line 2145
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 2147
    return-void

    .line 2144
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isAppOnWhitelistInternal(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1322
    monitor-enter p0

    .line 1323
    :try_start_2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_d

    move-result v1

    if-ltz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    monitor-exit p0

    return v0

    .line 1322
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 2203
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_f
    return v0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1632
    monitor-enter p0

    .line 1633
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1634
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    move-result v0

    :goto_f
    monitor-exit p0

    .line 1633
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_f

    .line 1632
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1625
    monitor-enter p0

    .line 1626
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1627
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    move-result v0

    :goto_f
    monitor-exit p0

    .line 1626
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_f

    .line 1625
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method motionLocked()V
    .registers 4

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 2234
    return-void
.end method

.method public onAnyMotionResult(I)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 971
    if-eq p1, v1, :cond_9

    .line 972
    monitor-enter p0

    .line 973
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1a

    monitor-exit p0

    .line 976
    :cond_9
    if-eq p1, v0, :cond_d

    .line 977
    if-ne p1, v1, :cond_20

    .line 978
    :cond_d
    monitor-enter p0

    .line 979
    :try_start_e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "non_stationary"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    :cond_18
    :goto_18
    monitor-exit p0

    .line 999
    :cond_19
    return-void

    .line 972
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 978
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 981
    :cond_20
    if-nez p1, :cond_19

    .line 982
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 984
    monitor-enter p0

    .line 985
    const/4 v0, 0x1

    :try_start_29
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 986
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_32

    goto :goto_18

    .line 984
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    .line 988
    :cond_35
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 991
    monitor-enter p0

    .line 992
    const/4 v0, 0x1

    :try_start_3c
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 993
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_18

    .line 994
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    goto :goto_18

    .line 991
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 1396
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1e0

    .line 1397
    monitor-enter p0

    .line 1398
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1399
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1400
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 1401
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 1402
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 1403
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 1404
    const-string/jumbo v1, "deviceidle_maint"

    .line 1403
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1405
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1406
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 1407
    const-string/jumbo v1, "deviceidle_going_idle"

    .line 1406
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1408
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1410
    const-string/jumbo v0, "connectivity"

    .line 1409
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 1411
    const-class v0, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$LocalService;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    .line 1413
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1412
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 1414
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1416
    const v1, 0x10e000f

    .line 1415
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1417
    if-lez v0, :cond_ac

    .line 1418
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1420
    :cond_ac
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_cc

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1421
    const v1, 0x112001c

    .line 1420
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1422
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1423
    const/16 v1, 0x1a

    const/4 v2, 0x1

    .line 1422
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1425
    :cond_cc
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_db

    .line 1427
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1428
    const/16 v1, 0x11

    const/4 v2, 0x1

    .line 1427
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 1431
    :cond_db
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1432
    const v1, 0x112001d

    .line 1431
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1433
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1434
    const-string/jumbo v1, "location"

    .line 1433
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    .line 1435
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    .line 1436
    const/16 v1, 0x64

    .line 1435
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1437
    const-wide/16 v2, 0x0

    .line 1435
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1438
    const-wide/16 v2, 0x0

    .line 1435
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1439
    const/4 v1, 0x1

    .line 1435
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 1442
    :cond_119
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1443
    const v1, 0x10e0010

    .line 1442
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 1443
    const/high16 v1, 0x42c80000    # 100.0f

    .line 1442
    div-float v5, v0, v1

    .line 1444
    new-instance v0, Lcom/android/server/AnyMotionDetector;

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1446
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object v4, p0

    .line 1444
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 1448
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 1449
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1451
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 1452
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1456
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1459
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1460
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1464
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1465
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1468
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1469
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1470
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1473
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 1474
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$LocalService;->setDeviceIdleUserWhitelist([I)V

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V
    :try_end_1dc
    .catchall {:try_start_6 .. :try_end_1dc} :catchall_1e1

    monitor-exit p0

    .line 1479
    invoke-virtual {p0, v6}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 1481
    :cond_1e0
    return-void

    .line 1397
    :catchall_1e1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .registers 14

    .prologue
    const/16 v10, 0x2b

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2635
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 2636
    const-string/jumbo v0, "step"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2637
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    monitor-enter p0

    .line 2640
    :try_start_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2641
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_6f

    move-result-object v0

    .line 2643
    if-eqz v0, :cond_31

    :try_start_28
    const-string/jumbo v1, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2644
    :cond_31
    const-string/jumbo v0, "s:shell"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2645
    const-string/jumbo v0, "Stepped to deep: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2646
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_6a

    .line 2654
    :goto_46
    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_6f

    :cond_49
    :goto_49
    monitor-exit p0

    .line 2969
    :goto_4a
    return v6

    .line 2647
    :cond_4b
    :try_start_4b
    const-string/jumbo v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2648
    const-string/jumbo v0, "s:shell"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2649
    const-string/jumbo v0, "Stepped to light: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_4b .. :try_end_69} :catchall_6a

    goto :goto_46

    .line 2653
    :catchall_6a
    move-exception v0

    .line 2654
    :try_start_6b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2653
    throw v0
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_6f

    .line 2639
    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2651
    :cond_72
    :try_start_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown idle mode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_72 .. :try_end_89} :catchall_6a

    goto :goto_46

    .line 2657
    :cond_8a
    const-string/jumbo v0, "force-idle"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 2658
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    monitor-enter p0

    .line 2661
    :try_start_9e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2662
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_fa

    move-result-object v0

    .line 2664
    if-eqz v0, :cond_b1

    :try_start_a8
    const-string/jumbo v1, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 2665
    :cond_b1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_c0

    .line 2666
    const-string/jumbo v0, "Unable to go deep idle; not enabled"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_a8 .. :try_end_bb} :catchall_13c

    .line 2702
    :try_start_bb
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_fa

    monitor-exit p0

    .line 2667
    return v9

    .line 2669
    :cond_c0
    const/4 v0, 0x1

    :try_start_c1
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2670
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2671
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2672
    :goto_c8
    const/4 v1, 0x5

    if-eq v0, v1, :cond_ef

    .line 2673
    const-string/jumbo v1, "s:shell"

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2674
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v1, :cond_ec

    .line 2675
    const-string/jumbo v0, "Unable to go deep idle; stopped at "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2676
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2677
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_e7
    .catchall {:try_start_c1 .. :try_end_e7} :catchall_13c

    .line 2702
    :try_start_e7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_fa

    monitor-exit p0

    .line 2678
    return v9

    .line 2680
    :cond_ec
    :try_start_ec
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    goto :goto_c8

    .line 2682
    :cond_ef
    const-string/jumbo v0, "Now forced in to deep idle mode"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_ec .. :try_end_f5} :catchall_13c

    .line 2702
    :goto_f5
    :try_start_f5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_fa

    goto/16 :goto_49

    .line 2660
    :catchall_fa
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2683
    :cond_fd
    :try_start_fd
    const-string/jumbo v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 2684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2685
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2686
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2687
    :goto_10e
    const/4 v1, 0x4

    if-eq v0, v1, :cond_135

    .line 2688
    const-string/jumbo v1, "s:shell"

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2689
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_132

    .line 2690
    const-string/jumbo v0, "Unable to go light idle; stopped at "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2691
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2692
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_12d
    .catchall {:try_start_fd .. :try_end_12d} :catchall_13c

    .line 2702
    :try_start_12d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_fa

    monitor-exit p0

    .line 2693
    return v9

    .line 2695
    :cond_132
    :try_start_132
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    goto :goto_10e

    .line 2697
    :cond_135
    const-string/jumbo v0, "Now forced in to light idle mode"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_132 .. :try_end_13b} :catchall_13c

    goto :goto_f5

    .line 2701
    :catchall_13c
    move-exception v0

    .line 2702
    :try_start_13d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2701
    throw v0
    :try_end_141
    .catchall {:try_start_13d .. :try_end_141} :catchall_fa

    .line 2699
    :cond_141
    :try_start_141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown idle mode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_158
    .catchall {:try_start_141 .. :try_end_158} :catchall_13c

    goto :goto_f5

    .line 2705
    :cond_159
    const-string/jumbo v0, "force-inactive"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 2706
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    monitor-enter p0

    .line 2709
    :try_start_16d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_19a

    move-result-wide v2

    .line 2711
    const/4 v0, 0x1

    :try_start_172
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 2712
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2713
    const-string/jumbo v0, "Light state: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2714
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    const-string/jumbo v0, ", deep state: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2716
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_195
    .catchall {:try_start_172 .. :try_end_195} :catchall_19d

    .line 2718
    :try_start_195
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_19a

    goto/16 :goto_49

    .line 2708
    :catchall_19a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2717
    :catchall_19d
    move-exception v0

    .line 2718
    :try_start_19e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2717
    throw v0
    :try_end_1a2
    .catchall {:try_start_19e .. :try_end_1a2} :catchall_19a

    .line 2721
    :cond_1a2
    const-string/jumbo v0, "unforce"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 2722
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    monitor-enter p0

    .line 2725
    :try_start_1b6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b9
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_1e0

    move-result-wide v2

    .line 2727
    :try_start_1ba
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 2728
    const-string/jumbo v0, "Light state: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2729
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2730
    const-string/jumbo v0, ", deep state: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2731
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1db
    .catchall {:try_start_1ba .. :try_end_1db} :catchall_1e3

    .line 2733
    :try_start_1db
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1de
    .catchall {:try_start_1db .. :try_end_1de} :catchall_1e0

    goto/16 :goto_49

    .line 2724
    :catchall_1e0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2732
    :catchall_1e3
    move-exception v0

    .line 2733
    :try_start_1e4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2732
    throw v0
    :try_end_1e8
    .catchall {:try_start_1e4 .. :try_end_1e8} :catchall_1e0

    .line 2736
    :cond_1e8
    const-string/jumbo v0, "get"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_294

    .line 2737
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    monitor-enter p0

    .line 2740
    :try_start_1fc
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2741
    if-eqz v0, :cond_28c

    .line 2742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_205
    .catchall {:try_start_1fc .. :try_end_205} :catchall_21d

    move-result-wide v2

    .line 2744
    :try_start_206
    const-string/jumbo v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_220

    .line 2745
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_218
    .catchall {:try_start_206 .. :try_end_218} :catchall_233

    .line 2754
    :goto_218
    :try_start_218
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_21b
    .catchall {:try_start_218 .. :try_end_21b} :catchall_21d

    goto/16 :goto_49

    .line 2739
    :catchall_21d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2744
    :cond_220
    :try_start_220
    const-string/jumbo v1, "deep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_238

    .line 2746
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_232
    .catchall {:try_start_220 .. :try_end_232} :catchall_233

    goto :goto_218

    .line 2753
    :catchall_233
    move-exception v0

    .line 2754
    :try_start_234
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2753
    throw v0
    :try_end_238
    .catchall {:try_start_234 .. :try_end_238} :catchall_21d

    .line 2744
    :cond_238
    :try_start_238
    const-string/jumbo v1, "force"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_247

    .line 2747
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_218

    .line 2744
    :cond_247
    const-string/jumbo v1, "screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_256

    .line 2748
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_218

    .line 2744
    :cond_256
    const-string/jumbo v1, "charging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_265

    .line 2749
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_218

    .line 2744
    :cond_265
    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_274

    .line 2750
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_218

    .line 2751
    :cond_274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown get option: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_28b
    .catchall {:try_start_238 .. :try_end_28b} :catchall_233

    goto :goto_218

    .line 2757
    :cond_28c
    :try_start_28c
    const-string/jumbo v0, "Argument required"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_292
    .catchall {:try_start_28c .. :try_end_292} :catchall_21d

    goto/16 :goto_49

    .line 2760
    :cond_294
    const-string/jumbo v0, "disable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33f

    .line 2761
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    monitor-enter p0

    .line 2764
    :try_start_2a8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2765
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;
    :try_end_2af
    .catchall {:try_start_2a8 .. :try_end_2af} :catchall_335

    move-result-object v2

    .line 2769
    if-eqz v2, :cond_2c4

    :try_start_2b2
    const-string/jumbo v0, "deep"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c4

    const-string/jumbo v0, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_725

    .line 2771
    :cond_2c4
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v0, :cond_721

    .line 2772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 2774
    const-string/jumbo v0, "Deep idle mode disabled"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    move v3, v1

    .line 2777
    :goto_2d3
    if-eqz v2, :cond_2e7

    const-string/jumbo v8, "light"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e7

    const-string/jumbo v8, "all"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71d

    .line 2779
    :cond_2e7
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_71a

    .line 2780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2782
    const-string/jumbo v0, "Light idle mode disabled"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 2785
    :goto_2f5
    if-eqz v0, :cond_317

    .line 2786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_338

    const-string/jumbo v0, "all"

    :goto_301
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-disabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2787
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 2786
    invoke-virtual {p0, v0, v3}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2789
    :cond_317
    if-nez v1, :cond_330

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown idle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_330
    .catchall {:try_start_2b2 .. :try_end_330} :catchall_33a

    .line 2793
    :cond_330
    :try_start_330
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_333
    .catchall {:try_start_330 .. :try_end_333} :catchall_335

    goto/16 :goto_49

    .line 2763
    :catchall_335
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_338
    move-object v0, v2

    .line 2786
    goto :goto_301

    .line 2792
    :catchall_33a
    move-exception v0

    .line 2793
    :try_start_33b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2792
    throw v0
    :try_end_33f
    .catchall {:try_start_33b .. :try_end_33f} :catchall_335

    .line 2796
    :cond_33f
    const-string/jumbo v0, "enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cb

    .line 2797
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    monitor-enter p0

    .line 2800
    :try_start_353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2801
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;
    :try_end_35a
    .catchall {:try_start_353 .. :try_end_35a} :catchall_3c3

    move-result-object v3

    .line 2805
    if-eqz v3, :cond_36f

    :try_start_35d
    const-string/jumbo v0, "deep"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36f

    const-string/jumbo v0, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_716

    .line 2807
    :cond_36f
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_712

    .line 2808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 2810
    const-string/jumbo v0, "Deep idle mode enabled"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    .line 2813
    :goto_37e
    if-eqz v3, :cond_392

    const-string/jumbo v8, "light"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_392

    const-string/jumbo v8, "all"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70f

    .line 2815
    :cond_392
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v0, :cond_70b

    .line 2816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 2818
    const-string/jumbo v0, "Light idle mode enable"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 2821
    :goto_3a0
    if-eqz v1, :cond_3a5

    .line 2822
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2824
    :cond_3a5
    if-nez v0, :cond_3be

    .line 2825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown idle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3be
    .catchall {:try_start_35d .. :try_end_3be} :catchall_3c6

    .line 2828
    :cond_3be
    :try_start_3be
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c1
    .catchall {:try_start_3be .. :try_end_3c1} :catchall_3c3

    goto/16 :goto_49

    .line 2799
    :catchall_3c3
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2827
    :catchall_3c6
    move-exception v0

    .line 2828
    :try_start_3c7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2827
    throw v0
    :try_end_3cb
    .catchall {:try_start_3c7 .. :try_end_3cb} :catchall_3c3

    .line 2831
    :cond_3cb
    const-string/jumbo v0, "enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44c

    .line 2832
    monitor-enter p0

    .line 2833
    :try_start_3d5
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2834
    if-eqz v0, :cond_3e4

    const-string/jumbo v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3fd

    .line 2835
    :cond_3e4
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v0, :cond_3f7

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_3f7

    const-string/jumbo v0, "1"

    :goto_3ef
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_3f2
    .catchall {:try_start_3d5 .. :try_end_3f2} :catchall_3f4

    goto/16 :goto_49

    .line 2832
    :catchall_3f4
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2835
    :cond_3f7
    const/4 v0, 0x0

    :try_start_3f8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3ef

    .line 2836
    :cond_3fd
    const-string/jumbo v1, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_418

    .line 2837
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v0, :cond_412

    const-string/jumbo v0, "1"

    :goto_40d
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_49

    :cond_412
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_40d

    .line 2838
    :cond_418
    const-string/jumbo v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_433

    .line 2839
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_42d

    const-string/jumbo v0, "1"

    :goto_428
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_49

    :cond_42d
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_428

    .line 2841
    :cond_433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown idle mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_44a
    .catchall {:try_start_3f8 .. :try_end_44a} :catchall_3f4

    goto/16 :goto_49

    .line 2844
    :cond_44c
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a9

    .line 2845
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2846
    if-eqz v0, :cond_51e

    .line 2847
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2848
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    .line 2847
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2852
    :cond_469
    :try_start_469
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_488

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_4a3

    .line 2853
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_4a3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_4a3

    .line 2854
    :cond_488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_49f
    .catchall {:try_start_469 .. :try_end_49f} :catchall_4ef

    .line 2874
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2855
    return v9

    .line 2857
    :cond_4a3
    const/4 v4, 0x0

    :try_start_4a4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2858
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2859
    if-ne v4, v10, :cond_4f4

    .line 2860
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d7

    .line 2861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    :cond_4cc
    :goto_4cc
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;
    :try_end_4cf
    .catchall {:try_start_4a4 .. :try_end_4cf} :catchall_4ef

    move-result-object v0

    if-nez v0, :cond_469

    .line 2874
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4a

    .line 2863
    :cond_4d7
    :try_start_4d7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4ee
    .catchall {:try_start_4d7 .. :try_end_4ee} :catchall_4ef

    goto :goto_4cc

    .line 2873
    :catchall_4ef
    move-exception v0

    .line 2874
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2873
    throw v0

    .line 2865
    :cond_4f4
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_516

    .line 2866
    :try_start_4f8
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4cc

    .line 2867
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4cc

    .line 2870
    :cond_516
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_51d
    .catchall {:try_start_4f8 .. :try_end_51d} :catchall_4ef

    goto :goto_4cc

    .line 2877
    :cond_51e
    monitor-enter p0

    move v1, v6

    .line 2878
    :goto_520
    :try_start_520
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_54c

    .line 2879
    const-string/jumbo v0, "system-excidle,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2880
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2881
    const-string/jumbo v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2882
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2878
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_520

    :cond_54c
    move v1, v6

    .line 2884
    :goto_54d
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_579

    .line 2885
    const-string/jumbo v0, "system,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2886
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2887
    const-string/jumbo v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2888
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2884
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_54d

    :cond_579
    move v1, v6

    .line 2890
    :goto_57a
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 2891
    const-string/jumbo v0, "user,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2892
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2893
    const-string/jumbo v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2894
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_5a2
    .catchall {:try_start_520 .. :try_end_5a2} :catchall_5a6

    .line 2890
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57a

    .line 2877
    :catchall_5a6
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2898
    :cond_5a9
    const-string/jumbo v0, "tempwhitelist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_621

    .line 2899
    const-wide/16 v2, 0x2710

    .line 2901
    :cond_5b4
    :goto_5b4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f2

    .line 2902
    const-string/jumbo v1, "-u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d7

    .line 2903
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2904
    if-nez v0, :cond_5d0

    .line 2905
    const-string/jumbo v0, "-u requires a user number"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    return v9

    .line 2908
    :cond_5d0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_5b4

    .line 2909
    :cond_5d7
    const-string/jumbo v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b4

    .line 2910
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2911
    if-nez v0, :cond_5ed

    .line 2912
    const-string/jumbo v0, "-d requires a duration"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    return v9

    .line 2915
    :cond_5ed
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_5b4

    .line 2918
    :cond_5f2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2919
    if-eqz v1, :cond_61c

    .line 2921
    :try_start_5f8
    iget v4, p1, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const-string/jumbo v5, "shell"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_601
    .catch Ljava/lang/Exception; {:try_start_5f8 .. :try_end_601} :catch_603

    goto/16 :goto_4a

    .line 2922
    :catch_603
    move-exception v0

    .line 2923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2924
    return v9

    .line 2927
    :cond_61c
    invoke-virtual {p0, v7, v6}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    goto/16 :goto_4a

    .line 2929
    :cond_621
    const-string/jumbo v0, "except-idle-whitelist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_706

    .line 2930
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2931
    const-string/jumbo v2, "android.permission.DEVICE_POWER"

    .line 2930
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2934
    :try_start_638
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2935
    if-nez v0, :cond_648

    .line 2936
    const-string/jumbo v0, "No arguments given"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_644
    .catchall {:try_start_638 .. :try_end_644} :catchall_6da

    .line 2964
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    return v9

    .line 2938
    :cond_648
    :try_start_648
    const-string/jumbo v4, "reset"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_688

    .line 2939
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V
    :try_end_654
    .catchall {:try_start_648 .. :try_end_654} :catchall_6da

    .line 2964
    :cond_654
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4a

    .line 2947
    :cond_659
    const/4 v4, 0x0

    :try_start_65a
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2948
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2949
    if-ne v4, v10, :cond_6df

    .line 2950
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c2

    .line 2951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Added: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    :goto_682
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_654

    .line 2942
    :cond_688
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_6a7

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_659

    .line 2943
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_659

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_659

    .line 2944
    :cond_6a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6be
    .catchall {:try_start_65a .. :try_end_6be} :catchall_6da

    .line 2964
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2945
    return v9

    .line 2953
    :cond_6c2
    :try_start_6c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6d9
    .catchall {:try_start_6c2 .. :try_end_6d9} :catchall_6da

    goto :goto_682

    .line 2963
    :catchall_6da
    move-exception v0

    .line 2964
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2963
    throw v0

    .line 2955
    :cond_6df
    const/16 v8, 0x3d

    if-ne v4, v8, :cond_6eb

    .line 2956
    :try_start_6e3
    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_682

    .line 2958
    :cond_6eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown argument: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_702
    .catchall {:try_start_6e3 .. :try_end_702} :catchall_6da

    .line 2964
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2959
    return v9

    .line 2967
    :cond_706
    invoke-virtual {p1, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_70b
    move v0, v1

    move v1, v2

    goto/16 :goto_3a0

    :cond_70f
    move v1, v2

    goto/16 :goto_3a0

    :cond_712
    move v0, v1

    move v2, v6

    goto/16 :goto_37e

    :cond_716
    move v0, v6

    move v2, v6

    goto/16 :goto_37e

    :cond_71a
    move v0, v3

    goto/16 :goto_2f5

    :cond_71d
    move v1, v0

    move v0, v3

    goto/16 :goto_2f5

    :cond_721
    move v0, v1

    move v3, v6

    goto/16 :goto_2d3

    :cond_725
    move v0, v6

    move v3, v6

    goto/16 :goto_2d3
.end method

.method public onStart()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 1339
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1341
    monitor-enter p0

    .line 1342
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1343
    const v2, 0x1120053

    .line 1342
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1344
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v4

    .line 1345
    invoke-virtual {v4}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v5

    move v2, v1

    .line 1346
    :goto_26
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v2, v0, :cond_53

    .line 1347
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_dd

    .line 1350
    const/high16 v6, 0x100000

    .line 1349
    :try_start_34
    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1351
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 1352
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_4f} :catch_e2
    .catchall {:try_start_34 .. :try_end_4f} :catchall_dd

    .line 1346
    :goto_4f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    .line 1357
    :cond_53
    :try_start_53
    invoke-virtual {v4}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v2

    .line 1358
    :goto_57
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_95

    .line 1359
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_dd

    .line 1362
    const/high16 v4, 0x100000

    .line 1361
    :try_start_65
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1363
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 1366
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1368
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_91} :catch_e0
    .catchall {:try_start_65 .. :try_end_91} :catchall_dd

    .line 1358
    :goto_91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    .line 1374
    :cond_95
    :try_start_95
    new-instance v0, Lcom/android/server/DeviceIdleController$Constants;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 1377
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 1380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1384
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 1385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1386
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J
    :try_end_c1
    .catchall {:try_start_95 .. :try_end_c1} :catchall_dd

    monitor-exit p0

    .line 1389
    new-instance v0, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 1390
    const-string/jumbo v0, "deviceidle"

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1391
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v1, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1392
    return-void

    .line 1341
    :catchall_dd
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1370
    :catch_e0
    move-exception v0

    goto :goto_91

    .line 1354
    :catch_e2
    move-exception v0

    goto/16 :goto_4f
.end method

.method readConfigFileLocked()V
    .registers 4

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2464
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_1f

    move-result-object v1

    .line 2469
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 2470
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2471
    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1b} :catch_23
    .catchall {:try_start_b .. :try_end_1b} :catchall_2a

    .line 2475
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_21

    .line 2479
    :goto_1e
    return-void

    .line 2465
    :catch_1f
    move-exception v0

    .line 2466
    return-void

    .line 2476
    :catch_21
    move-exception v0

    goto :goto_1e

    .line 2472
    :catch_23
    move-exception v0

    .line 2475
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_1e

    .line 2476
    :catch_28
    move-exception v0

    goto :goto_1e

    .line 2473
    :catchall_2a
    move-exception v0

    .line 2475
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 2473
    :goto_2e
    throw v0

    .line 2476
    :catch_2f
    move-exception v1

    goto :goto_2e
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 4

    .prologue
    .line 2264
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2266
    return-void

    .line 2269
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 2270
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz v0, :cond_21

    .line 2271
    return-void

    .line 2273
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2274
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2e

    .line 2275
    const-string/jumbo v0, "s:location"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2277
    :cond_2e
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 4

    .prologue
    .line 2280
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 2281
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2282
    return-void

    .line 2285
    :cond_9
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 2286
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 2287
    return-void

    .line 2289
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2290
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_2a

    .line 2291
    const-string/jumbo v0, "s:gps"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 2293
    :cond_2a
    return-void
.end method

.method registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .registers 3

    .prologue
    .line 2179
    monitor-enter p0

    .line 2180
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2181
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    .line 2179
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1501
    monitor-enter p0

    .line 1502
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1503
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1504
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 1505
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 1506
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_15
    monitor-exit p0

    .line 1509
    const/4 v0, 0x0

    return v0

    .line 1501
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method reportMaintenanceActivityIfNeededLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2192
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 2193
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-ne v0, v2, :cond_8

    .line 2194
    return-void

    .line 2196
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    .line 2197
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2198
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 2197
    :goto_11
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2199
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2200
    return-void

    :cond_1c
    move v0, v1

    .line 2198
    goto :goto_11
.end method

.method resetIdleManagementLocked()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 1922
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 1923
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 1924
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 1928
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringMotionLocked()V

    .line 1929
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 1930
    return-void
.end method

.method resetLightIdleManagementLocked()V
    .registers 1

    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 1934
    return-void
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .registers 4

    .prologue
    .line 1539
    monitor-enter p0

    .line 1540
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 1541
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 1540
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1542
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 1544
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 1545
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 1543
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 1546
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    .line 1549
    return-void

    .line 1539
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method scheduleAlarmLocked(JZ)V
    .registers 11

    .prologue
    const/4 v1, 0x2

    .line 2340
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_6

    .line 2345
    return-void

    .line 2347
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 2348
    if-eqz p3, :cond_1e

    .line 2349
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2350
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string/jumbo v4, "DeviceIdleController.deep"

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2349
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2355
    :goto_1d
    return-void

    .line 2352
    :cond_1e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2353
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string/jumbo v4, "DeviceIdleController.deep"

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2352
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_1d
.end method

.method scheduleLightAlarmLocked(J)V
    .registers 10

    .prologue
    .line 2359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 2360
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2361
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-string/jumbo v4, "DeviceIdleController.light"

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2360
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2362
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1879
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1880
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .registers 10

    .prologue
    .line 2366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2367
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 2368
    const-string/jumbo v4, "DeviceIdleController.sensing"

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 2367
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 2369
    return-void
.end method

.method setAlarmsActive(Z)V
    .registers 3

    .prologue
    .line 2170
    monitor-enter p0

    .line 2171
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 2172
    if-nez p1, :cond_8

    .line 2173
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    .line 2176
    return-void

    .line 2170
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setJobsActive(Z)V
    .registers 3

    .prologue
    .line 2160
    monitor-enter p0

    .line 2161
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 2162
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportMaintenanceActivityIfNeededLocked()V

    .line 2163
    if-nez p1, :cond_b

    .line 2164
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    .line 2167
    return-void

    .line 2160
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1751
    monitor-enter p0

    .line 1752
    :try_start_1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyTempWhitelistCallback:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 1754
    return-void

    .line 1751
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startMonitoringMotionLocked()V
    .registers 2

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 2298
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    .line 2300
    :cond_11
    return-void
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2030
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 2032
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2033
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    .line 2035
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v0, :cond_2c

    .line 2036
    const-string/jumbo v0, "alarm"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2037
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2039
    :cond_2c
    return-void

    .line 2042
    :cond_2d
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    packed-switch v0, :pswitch_data_176

    .line 2141
    :cond_32
    :goto_32
    return-void

    .line 2046
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 2047
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2049
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2050
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2051
    iput v9, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2053
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    goto :goto_32

    .line 2056
    :pswitch_51
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2058
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2059
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 2060
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2061
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 2062
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 2063
    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 2064
    iput-object v5, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 2065
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    goto :goto_32

    .line 2068
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 2069
    iput v8, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2071
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2072
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2073
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_126

    .line 2074
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_126

    .line 2075
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 2076
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 2075
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2077
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 2081
    :goto_a2
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_12a

    .line 2082
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_12a

    .line 2083
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 2084
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x40a00000    # 5.0f

    .line 2085
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 2084
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2086
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 2092
    :goto_c9
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-nez v0, :cond_32

    .line 2098
    :pswitch_cd
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 2100
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 2103
    :pswitch_d8
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {p0, v0, v1, v7}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2106
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2108
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2109
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_104

    .line 2110
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 2112
    :cond_104
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2113
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_112

    .line 2114
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 2117
    :cond_112
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2118
    invoke-direct {p0, v8}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 2119
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2120
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_32

    .line 2079
    :cond_126
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    goto/16 :goto_a2

    .line 2088
    :cond_12a
    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    goto :goto_c9

    .line 2124
    :pswitch_12d
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2125
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2126
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 2129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2130
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 2131
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 2130
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2132
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_162

    .line 2133
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 2135
    :cond_162
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2136
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 2137
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 2138
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_32

    .line 2042
    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_33
        :pswitch_51
        :pswitch_71
        :pswitch_cd
        :pswitch_12d
        :pswitch_d8
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v2, 0x5

    const/4 v7, 0x4

    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    .line 1946
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    .line 1949
    return-void

    .line 1953
    :cond_b
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 1955
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    packed-switch v0, :pswitch_data_100

    .line 2026
    :goto_13
    :pswitch_13
    return-void

    .line 1957
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 1959
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1960
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1961
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1964
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1965
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 1966
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    goto :goto_13

    .line 1972
    :cond_37
    :pswitch_37
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_57

    .line 1973
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long/2addr v0, v2

    .line 1974
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_98

    .line 1976
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 1982
    :cond_57
    :goto_57
    iput-wide v8, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 1983
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 1984
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1985
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v3, v3, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 1984
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1986
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_81

    .line 1987
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 1990
    :cond_81
    iput v7, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 1991
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 1992
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 1993
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1994
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    .line 1979
    :cond_98
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v0, v4

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_57

    .line 1998
    :pswitch_a4
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v0, :cond_ac

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_f2

    .line 2000
    :cond_ac
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 2001
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 2003
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_e1

    .line 2004
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 2008
    :cond_ca
    :goto_ca
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2011
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2012
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 2013
    invoke-direct {p0, v6}, Lcom/android/server/DeviceIdleController;->addEvent(I)V

    .line 2014
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    .line 2005
    :cond_e1
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_ca

    .line 2006
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_ca

    .line 2019
    :cond_f2
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 2021
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2022
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 1955
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_37
        :pswitch_a4
        :pswitch_a4
        :pswitch_37
    .end packed-switch
.end method

.method stopMonitoringMotionLocked()V
    .registers 2

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_f

    .line 2305
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 2307
    :cond_f
    return-void
.end method

.method unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .registers 3

    .prologue
    .line 2186
    monitor-enter p0

    .line 2187
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 2189
    return-void

    .line 2186
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateChargingLocked(Z)V
    .registers 4

    .prologue
    .line 1864
    if-nez p1, :cond_11

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_11

    .line 1865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1866
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_10

    .line 1867
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1875
    :cond_10
    :goto_10
    return-void

    .line 1869
    :cond_11
    if-eqz p1, :cond_10

    .line 1870
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 1871
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_10

    .line 1872
    const-string/jumbo v0, "charging"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    goto :goto_10
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1808
    monitor-enter p0

    .line 1809
    :try_start_2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_8

    monitor-exit p0

    .line 1811
    if-nez v1, :cond_b

    .line 1812
    return-void

    .line 1808
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1815
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1816
    monitor-enter p0

    .line 1818
    if-nez v1, :cond_27

    .line 1834
    :goto_12
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v0, v1, :cond_25

    .line 1835
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 1836
    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 1837
    const-string/jumbo v0, "network"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_49

    :cond_25
    monitor-exit p0

    .line 1841
    return-void

    .line 1821
    :cond_27
    if-nez p1, :cond_2e

    .line 1822
    :try_start_29
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_12

    .line 1825
    :cond_2e
    const-string/jumbo v0, "networkType"

    .line 1826
    const/4 v2, -0x1

    .line 1825
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1827
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_49

    move-result v1

    if-eq v1, v0, :cond_3e

    monitor-exit p0

    .line 1828
    return-void

    .line 1830
    :cond_3e
    :try_start_3e
    const-string/jumbo v0, "noConnectivity"

    .line 1831
    const/4 v1, 0x0

    .line 1830
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_49

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1816
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateInteractivityLocked()V
    .registers 3

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 1849
    if-nez v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v1, :cond_17

    .line 1850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1851
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_16

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1860
    :cond_16
    :goto_16
    return-void

    .line 1854
    :cond_17
    if-eqz v0, :cond_16

    .line 1855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 1856
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_16

    .line 1857
    const-string/jumbo v0, "screen"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    goto :goto_16
.end method

.method writeConfigFileLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2537
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2538
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2539
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2570
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2571
    const-string/jumbo v0, "config"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2572
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    .line 2573
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2574
    const-string/jumbo v2, "wl"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2575
    const-string/jumbo v2, "n"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2576
    const-string/jumbo v0, "wl"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2572
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 2578
    :cond_37
    const-string/jumbo v0, "config"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2579
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2580
    return-void
.end method
