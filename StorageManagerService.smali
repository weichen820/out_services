.class Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "StorageManagerService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StorageManagerService$1;,
        Lcom/android/server/StorageManagerService$AppFuseMountScope;,
        Lcom/android/server/StorageManagerService$Callbacks;,
        Lcom/android/server/StorageManagerService$DefaultContainerConnection;,
        Lcom/android/server/StorageManagerService$Lifecycle;,
        Lcom/android/server/StorageManagerService$MountObbAction;,
        Lcom/android/server/StorageManagerService$ObbAction;,
        Lcom/android/server/StorageManagerService$ObbActionHandler;,
        Lcom/android/server/StorageManagerService$ObbState;,
        Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;,
        Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;,
        Lcom/android/server/StorageManagerService$UnmountObbAction;,
        Lcom/android/server/StorageManagerService$VoldResponseCode;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FORCE_ADOPTABLE:Ljava/lang/String; = "forceAdoptable"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTD_TAG:Ljava/lang/String; = "CryptdConnector"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_MANDATORY_CLEAN_INTERVAL:J = 0x240c8400L

.field private static final EMULATE_FBE_SUPPORTED:Z = true

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_PARTITION_FORGET:I = 0x9

.field private static final H_RESET:I = 0xa

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final H_VOLUME_UNMOUNT:I = 0x8

.field private static final LAST_CLEAN_FILE:Ljava/lang/String; = "last-clean"

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "StorageManagerService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z

.field static sSelf:Lcom/android/server/StorageManagerService;


# instance fields
.field private mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppFuseLock"
    .end annotation
.end field

.field private final mAppFuseLock:Ljava/lang/Object;

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private volatile mBootCompleted:Z

.field private final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mConnectorThread:Ljava/lang/Thread;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mCryptConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mCryptConnectorThread:Ljava/lang/Thread;

.field private volatile mCurrentUserId:I

.field private volatile mDaemonConnected:Z

.field private final mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceAdoptable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastCleanFile:Ljava/io/File;

.field private mLastCleanTime:J

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private mLocalUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextAppFuseName:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppFuseLock"
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field private volatile mSystemReady:Z

.field private mSystemUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUnmountLock:Ljava/lang/Object;

.field private mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnmountLock"
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastCleanFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/StorageManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastCleanTime:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/server/StorageManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/StorageManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/StorageManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastCleanTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/StorageManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/StorageManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/StorageManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/StorageManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->shouldBenchmark()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleSystemReady()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 466
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "pattern"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "pin"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 465
    sput-object v0, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    .line 590
    new-instance v0, Landroid/content/ComponentName;

    .line 591
    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    .line 590
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/StorageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/16 v3, 0x1f4

    const/16 v5, 0x19

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1523
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    .line 314
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 318
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    .line 321
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 325
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 328
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 332
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 340
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 347
    iput v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 350
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 353
    iput v1, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 356
    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 476
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    .line 477
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 478
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 486
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 487
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 489
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUnmountLock:Ljava/lang/Object;

    .line 497
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 522
    new-instance v0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v0, p0, v6}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;)V

    .line 521
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 593
    new-instance v0, Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$DefaultContainerConnection;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    .line 612
    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 769
    new-instance v0, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1524
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 1526
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 1527
    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 1528
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1531
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1533
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "StorageManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1535
    new-instance v1, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    .line 1538
    new-instance v0, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 1541
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1542
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1544
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "last-clean"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLastCleanFile:Ljava/io/File;

    .line 1545
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastCleanFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c5

    .line 1547
    :try_start_f4
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLastCleanFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fe} :catch_1a2

    .line 1555
    :goto_fe
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "last-fstrim"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1556
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f2

    .line 1560
    :try_start_110
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_11a} :catch_1cf

    .line 1568
    :goto_11a
    new-instance v0, Landroid/util/AtomicFile;

    .line 1569
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "storage.xml"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1568
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 1571
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1572
    :try_start_130
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_1fc

    monitor-exit v0

    .line 1575
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1583
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "vold"

    const-string/jumbo v4, "VoldConnector"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1585
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    .line 1586
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setWarnIfHeld(Ljava/lang/Object;)V

    .line 1587
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "VoldConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectorThread:Ljava/lang/Thread;

    .line 1590
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptd"

    .line 1591
    const-string/jumbo v4, "CryptdConnector"

    move-object v1, p0

    .line 1590
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1592
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    .line 1593
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "CryptdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnectorThread:Ljava/lang/Thread;

    .line 1595
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1596
    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1597
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1598
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1600
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1601
    :try_start_19d
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V
    :try_end_1a0
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_1ff

    monitor-exit v0

    .line 1608
    return-void

    .line 1548
    :catch_1a2
    move-exception v0

    .line 1549
    const-string/jumbo v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create clean record "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLastCleanFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fe

    .line 1552
    :cond_1c5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastCleanFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/StorageManagerService;->mLastCleanTime:J

    goto/16 :goto_fe

    .line 1561
    :catch_1cf
    move-exception v0

    .line 1562
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to create fstrim record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11a

    .line 1565
    :cond_1f2
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    goto/16 :goto_11a

    .line 1571
    :catchall_1fc
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1600
    :catchall_1ff
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addInternalVolumeLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 890
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    .line 891
    const/4 v2, 0x1

    .line 890
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 892
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 893
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 894
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3462
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3463
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3465
    if-nez v0, :cond_26

    .line 3466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3467
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3477
    :cond_18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3479
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_49

    .line 3494
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3495
    return-void

    .line 3469
    :cond_26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3470
    iget-object v1, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3471
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3480
    :catch_49
    move-exception v1

    .line 3485
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3486
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3487
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    :cond_58
    throw v1
.end method

.method private adjustAllocateFlags(IILjava/lang/String;)I
    .registers 10

    .prologue
    .line 3360
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_f

    .line 3361
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 3362
    const-string/jumbo v1, "android.permission.ALLOCATE_AGGRESSIVE"

    const-string/jumbo v2, "StorageManagerService"

    .line 3361
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    :cond_f
    and-int/lit8 v0, p1, -0x3

    .line 3367
    and-int/lit8 v1, v0, -0x5

    .line 3372
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3375
    const/16 v4, 0x1a

    :try_start_23
    invoke-virtual {v0, v4, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 3376
    const-string/jumbo v0, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is actively using camera;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3377
    const-string/jumbo v5, " letting them defy reserved cached data"

    .line 3376
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_57

    .line 3378
    or-int/lit8 v0, v1, 0x4

    .line 3381
    :goto_53
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3384
    return v0

    .line 3380
    :catchall_57
    move-exception v0

    .line 3381
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3380
    throw v0

    :cond_5c
    move v0, v1

    goto :goto_53
.end method

.method private bootCompleted()V
    .registers 2

    .prologue
    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 1622
    return-void
.end method

.method private copyLocaleFromMountService()V
    .registers 6

    .prologue
    .line 1052
    :try_start_0
    const-string/jumbo v0, "SystemLocale"

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_e

    move-result-object v1

    .line 1056
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1057
    return-void

    .line 1053
    :catch_e
    move-exception v0

    .line 1054
    return-void

    .line 1060
    :cond_10
    const-string/jumbo v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from mount service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 1062
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1063
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1065
    :try_start_3d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_70

    .line 1071
    :goto_44
    const-string/jumbo v0, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting system properties to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " from mount service"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string/jumbo v0, "persist.sys.locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    return-void

    .line 1066
    :catch_70
    move-exception v0

    .line 1067
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Error setting system locale from mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method private encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    .registers 4

    .prologue
    .line 2955
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2956
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    const-string/jumbo v1, "!"

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2958
    :cond_f
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private enforceAdminUser()V
    .registers 5

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1505
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1509
    :try_start_13
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_29

    move-result v0

    .line 1511
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1513
    if-nez v0, :cond_2e

    .line 1514
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only admin users can adopt sd cards"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1510
    :catchall_29
    move-exception v0

    .line 1511
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1510
    throw v0

    .line 1516
    :cond_2e
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    return-void
.end method

.method private static escapeNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 453
    const-string/jumbo v0, "!"

    return-object v0

    .line 455
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1a

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_20

    .line 456
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_20
    return-object p0
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 5

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 443
    if-nez v0, :cond_18

    .line 444
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 445
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    .line 447
    return-object v0

    .line 441
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 381
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 382
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 383
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 384
    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 385
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_34

    monitor-exit v2

    return-object v0

    .line 382
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_32
    monitor-exit v2

    .line 389
    return-object v4

    .line 381
    :catchall_34
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 407
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 408
    const-string/jumbo v1, "emulated"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 409
    :cond_1a
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 410
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    .line 412
    :cond_28
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2a

    .line 361
    if-eqz v0, :cond_f

    monitor-exit v1

    .line 362
    return-object v0

    :cond_f
    monitor-exit v1

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No volume found for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 371
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 372
    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 373
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_44

    monitor-exit v2

    return-object v0

    .line 370
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_29
    monitor-exit v2

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No volume found for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :catchall_44
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private forgetPartition(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1999
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "volume"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "forget_partition"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_14} :catch_15

    .line 2003
    :goto_14
    return-void

    .line 2000
    :catch_15
    move-exception v0

    .line 2001
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to forget key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1625
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1626
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 1628
    :cond_e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private handleDaemonConnected()V
    .registers 5

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfReadyAndConnected()V

    .line 1024
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    .line 1030
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1031
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 1033
    return-void

    .line 1038
    :cond_18
    const-string/jumbo v0, ""

    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1039
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->copyLocaleFromMountService()V

    .line 1043
    :cond_2b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1046
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1047
    return-void
.end method

.method private handleSystemReady()V
    .registers 2

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfReadyAndConnected()V

    .line 847
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    .line 850
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 851
    return-void
.end method

.method private initIfReadyAndConnected()V
    .registers 9

    .prologue
    .line 898
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thinking about init, mSystemReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    const-string/jumbo v2, ", mDaemonConnected="

    .line 898
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 898
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    if-eqz v0, :cond_cd

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_cd

    .line 901
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 900
    if-eqz v0, :cond_cd

    .line 905
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v1

    .line 906
    const-string/jumbo v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting up emulation state, initlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 908
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 910
    if-eqz v1, :cond_9d

    .line 911
    :try_start_77
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "lock_user_key"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_91
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_77 .. :try_end_91} :catch_92

    goto :goto_69

    .line 916
    :catch_92
    move-exception v0

    .line 917
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Failed to init vold"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 913
    :cond_9d
    :try_start_9d
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "unlock_user_key"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 914
    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const-string/jumbo v0, "!"

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const-string/jumbo v0, "!"

    const/4 v6, 0x4

    aput-object v0, v5, v6

    .line 913
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_cc
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9d .. :try_end_cc} :catch_92

    goto :goto_69

    .line 921
    :cond_cd
    return-void
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1357
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 1363
    return v1

    .line 1366
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 1375
    :pswitch_10
    return v1

    .line 1378
    :pswitch_11
    const/4 v0, 0x1

    return v0

    .line 1357
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 1366
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1485
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1488
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_39

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1489
    const-string/jumbo v1, "no_usb_file_transfer"

    .line 1490
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 1489
    invoke-virtual {v0, v1, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 1494
    :goto_23
    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v4, :cond_2b

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v4, v3, :cond_3b

    .line 1496
    :cond_2b
    const-string/jumbo v2, "no_physical_media"

    .line 1497
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 1495
    invoke-virtual {v0, v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 1500
    :goto_36
    if-nez v1, :cond_3d

    :goto_38
    return v0

    :cond_39
    move v1, v2

    .line 1488
    goto :goto_23

    :cond_3b
    move v0, v2

    .line 1494
    goto :goto_36

    :cond_3d
    move v0, v3

    .line 1500
    goto :goto_38

    :cond_3f
    move v1, v2

    goto :goto_23
.end method

.method private isReady()Z
    .registers 5

    .prologue
    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    return v0

    .line 840
    :catch_b
    move-exception v0

    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2533
    const/16 v2, 0x3e8

    if-ne p2, v2, :cond_7

    .line 2534
    return v0

    .line 2537
    :cond_7
    if-nez p1, :cond_a

    .line 2538
    return v1

    .line 2541
    :cond_a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 2542
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/high16 v4, 0x10000000

    .line 2541
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    .line 2549
    if-ne p2, v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 859
    if-nez p1, :cond_3

    return-void

    .line 861
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 863
    :try_start_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 865
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v4

    if-nez v4, :cond_b

    .line 867
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v5, "media"

    .line 870
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 868
    const/high16 v6, 0xc0000

    .line 867
    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_b

    .line 872
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_47

    move-result-object v4

    .line 874
    :try_start_30
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 875
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 876
    const-string/jumbo v6, "vold reset"

    const/4 v7, -0x1

    .line 874
    invoke-interface {v4, v5, v0, v7, v6}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_43} :catch_4c
    .catchall {:try_start_30 .. :try_end_43} :catchall_47

    .line 884
    :cond_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    return-void

    .line 883
    :catchall_47
    move-exception v0

    .line 884
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 883
    throw v0

    .line 879
    :catch_4c
    move-exception v0

    goto :goto_b
.end method

.method private onCleanupUser(I)V
    .registers 7

    .prologue
    .line 985
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "volume"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "user_stopped"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_32} :catch_42

    .line 992
    :goto_32
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    :try_start_35
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3f

    monitor-exit v1

    .line 995
    return-void

    .line 992
    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 989
    :catch_42
    move-exception v0

    goto :goto_32
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    .line 1283
    :goto_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 1284
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1285
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1286
    add-int/lit8 v2, v2, 0x1

    .line 1283
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1290
    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1293
    const-string/jumbo v1, "android.os.storage.extra.DISK_ID"

    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string/jumbo v1, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1295
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1297
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 1298
    if-eqz v0, :cond_59

    .line 1299
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1302
    :cond_59
    iput v2, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1303
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v0, p1, v2}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap1(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1304
    return-void
.end method

.method private onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 16

    .prologue
    .line 1094
    packed-switch p1, :pswitch_data_2c8

    .line 1274
    :pswitch_3
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled vold event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0

    .line 1096
    :pswitch_1f
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1097
    const/4 v0, 0x1

    aget-object v1, p3, v0

    .line 1098
    const/4 v0, 0x2

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1099
    const-string/jumbo v2, "persist.fw.force_adoptable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1100
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    .line 1099
    if-eqz v2, :cond_3d

    .line 1101
    :cond_3b
    or-int/lit8 v0, v0, 0x1

    .line 1104
    :cond_3d
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1105
    const-string/jumbo v2, "persist.sys.adoptable_fbe"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1104
    if-eqz v2, :cond_51

    .line 1106
    and-int/lit8 v0, v0, -0x2

    .line 1108
    :cond_51
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    new-instance v3, Landroid/os/storage/DiskInfo;

    invoke-direct {v3, v1, v0}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 1112
    :pswitch_5c
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1113
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 1114
    if-eqz v0, :cond_1d

    .line 1115
    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/storage/DiskInfo;->size:J

    goto :goto_1d

    .line 1120
    :pswitch_77
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 1121
    if-eqz v0, :cond_1d

    .line 1122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    const/4 v1, 0x2

    :goto_8a
    array-length v3, p3

    if-ge v1, v3, :cond_9b

    .line 1124
    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 1126
    :cond_9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    goto/16 :goto_1d

    .line 1131
    :pswitch_a7
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 1132
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 1133
    if-eqz v0, :cond_1d

    .line 1134
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_1d

    .line 1139
    :pswitch_bd
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1140
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 1141
    if-eqz v0, :cond_1d

    .line 1142
    const/4 v1, 0x2

    aget-object v1, p3, v1

    iput-object v1, v0, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    goto/16 :goto_1d

    .line 1147
    :pswitch_d5
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 1148
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 1149
    if-eqz v0, :cond_1d

    .line 1150
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap0(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_1d

    .line 1156
    :pswitch_ed
    const/4 v0, 0x1

    aget-object v1, p3, v0

    .line 1157
    const/4 v0, 0x2

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1158
    const/4 v0, 0x3

    aget-object v0, p3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    const/4 v3, 0x4

    aget-object v3, p3, v3

    invoke-static {v3}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1161
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 1162
    new-instance v4, Landroid/os/storage/VolumeInfo;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_1d

    .line 1168
    :pswitch_11c
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1169
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1170
    if-eqz v0, :cond_1d

    .line 1171
    iget v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 1172
    const/4 v2, 0x2

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1173
    iput v2, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 1174
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    goto/16 :goto_1d

    .line 1179
    :pswitch_13d
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1180
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1181
    if-eqz v0, :cond_1d

    .line 1182
    const/4 v1, 0x2

    aget-object v1, p3, v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    goto/16 :goto_1d

    .line 1187
    :pswitch_155
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1188
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1189
    if-eqz v0, :cond_1d

    .line 1190
    const/4 v1, 0x2

    aget-object v1, p3, v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    goto/16 :goto_1d

    .line 1195
    :pswitch_16d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1196
    if-eqz v0, :cond_1d

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1198
    const/4 v1, 0x2

    :goto_180
    array-length v3, p3

    if-ge v1, v3, :cond_191

    .line 1199
    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1198
    add-int/lit8 v1, v1, 0x1

    goto :goto_180

    .line 1201
    :cond_191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    goto/16 :goto_1d

    .line 1207
    :pswitch_19d
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1208
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1209
    if-eqz v0, :cond_1d

    .line 1210
    const/4 v1, 0x2

    aget-object v1, p3, v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    goto/16 :goto_1d

    .line 1215
    :pswitch_1b5
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1216
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 1217
    if-eqz v0, :cond_1d

    .line 1218
    const/4 v1, 0x2

    aget-object v1, p3, v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    goto/16 :goto_1d

    .line 1223
    :pswitch_1cd
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 1224
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 1229
    :pswitch_1db
    const/4 v0, 0x1

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1230
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    goto/16 :goto_1d

    .line 1234
    :pswitch_1e7
    array-length v0, p3

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1d

    .line 1235
    const/4 v0, 0x1

    aget-object v1, p3, v0

    .line 1236
    const/4 v0, 0x2

    aget-object v2, p3, v0

    .line 1237
    const/4 v0, 0x3

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1238
    const/4 v0, 0x4

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1239
    const/4 v0, 0x5

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1240
    const/4 v0, 0x6

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1242
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 1243
    const-string/jumbo v3, "storage_benchmark"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1244
    const-string/jumbo v11, " "

    .line 1243
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1244
    const-string/jumbo v10, " "

    .line 1243
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1244
    const-string/jumbo v4, " "

    .line 1243
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1244
    const-string/jumbo v4, " "

    .line 1243
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_1d

    .line 1248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1249
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    goto/16 :goto_1d

    .line 1255
    :pswitch_26a
    array-length v0, p3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 1256
    const/4 v0, 0x1

    aget-object v1, p3, v0

    .line 1257
    const/4 v0, 0x2

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1258
    const/4 v0, 0x3

    aget-object v0, p3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1260
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 1261
    const-string/jumbo v6, "storage_trim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1262
    const-string/jumbo v8, " "

    .line 1261
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1262
    const-string/jumbo v3, " "

    .line 1261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 1265
    if-eqz v0, :cond_1d

    .line 1266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1267
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    goto/16 :goto_1d

    .line 1094
    nop

    :pswitch_data_2c8
    .packed-switch 0x280
        :pswitch_1f
        :pswitch_5c
        :pswitch_77
        :pswitch_a7
        :pswitch_bd
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d5
        :pswitch_ed
        :pswitch_11c
        :pswitch_13d
        :pswitch_155
        :pswitch_16d
        :pswitch_19d
        :pswitch_1b5
        :pswitch_3
        :pswitch_3
        :pswitch_1cd
        :pswitch_1db
        :pswitch_1e7
        :pswitch_26a
    .end packed-switch
.end method

.method private onMoveStatusLocked(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1449
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v0, :cond_f

    .line 1450
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Odd, status but no move requested"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-void

    .line 1456
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_77

    .line 1462
    :goto_17
    const/16 v0, 0x52

    if-ne p1, v0, :cond_45

    .line 1463
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " copy phase finshed; persisting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1466
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1469
    :cond_45
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1470
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1473
    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1475
    :cond_76
    return-void

    .line 1457
    :catch_77
    move-exception v0

    goto :goto_17
.end method

.method private onUnlockUser(I)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 957
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnlockUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "user_started"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_33} :catch_86

    .line 969
    :goto_33
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    move v1, v0

    .line 970
    :goto_37
    :try_start_37
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_79

    .line 971
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 972
    invoke-virtual {v0, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 973
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v4}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 974
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 976
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .line 977
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap2(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    .line 980
    :cond_79
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I
    :try_end_81
    .catchall {:try_start_37 .. :try_end_81} :catchall_83

    monitor-exit v2

    .line 982
    return-void

    .line 969
    :catchall_83
    move-exception v0

    monitor-exit v2

    throw v0

    .line 964
    :catch_86
    move-exception v1

    goto :goto_33
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 6

    .prologue
    const/4 v3, 0x5

    .line 1307
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1308
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "System booted in core-only mode; ignoring volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return-void

    .line 1312
    :cond_28
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ba

    .line 1313
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1314
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1316
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1317
    const-string/jumbo v1, "private"

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1316
    if-eqz v1, :cond_80

    .line 1318
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found primary storage at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1320
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1321
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1354
    :cond_7f
    :goto_7f
    return-void

    .line 1323
    :cond_80
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1324
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found primary storage at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1326
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1327
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7f

    .line 1330
    :cond_ba
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_114

    .line 1332
    const-string/jumbo v0, "primary_physical"

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 1333
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v0

    .line 1332
    if-eqz v0, :cond_f7

    .line 1334
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found primary storage at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1336
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1341
    :cond_f7
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1342
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1345
    :cond_105
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1346
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7f

    .line 1348
    :cond_114
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_124

    .line 1349
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7f

    .line 1352
    :cond_124
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping automatic mounting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7f
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 14

    .prologue
    const/4 v9, 0x5

    const/4 v1, 0x0

    .line 1384
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_48

    .line 1385
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1386
    if-nez v0, :cond_bc

    .line 1387
    new-instance v0, Landroid/os/storage/VolumeRecord;

    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1388
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1390
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 1391
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1393
    :cond_3e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v3, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1404
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap5(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1408
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_84

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1409
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    const-string/jumbo v2, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1412
    const-string/jumbo v2, "android.os.storage.extra.FS_UUID"

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const/high16 v2, 0x5000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1415
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1418
    :cond_84
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 1419
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1421
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 1425
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    array-length v5, v4

    move v0, v1

    :goto_96
    if-ge v0, v5, :cond_cd

    aget v6, v4, v0

    .line 1426
    invoke-virtual {p1, v6}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 1427
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7, v6, v1}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 1428
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1430
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v2, v3}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap2(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 1397
    :cond_bc
    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1398
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1399
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    goto/16 :goto_48

    .line 1436
    :cond_cd
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v0, :cond_e2

    iget v0, p1, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v0, v9, :cond_e2

    .line 1443
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    .line 1444
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1443
    invoke-virtual {v1, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1446
    :cond_e2
    return-void
.end method

.method private readSettingsLocked()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1633
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1634
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1635
    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    .line 1637
    const/4 v1, 0x0

    .line 1639
    :try_start_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1640
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1641
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1644
    :cond_24
    :goto_24
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_92

    .line 1645
    if-ne v0, v7, :cond_24

    .line 1646
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1647
    const-string/jumbo v5, "volumes"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1648
    const-string/jumbo v0, "version"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 1650
    const-string/jumbo v5, "ro.vold.primary_physical"

    const/4 v6, 0x0

    .line 1649
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1651
    const/4 v6, 0x3

    if-ge v0, v6, :cond_6b

    .line 1652
    if-lt v0, v7, :cond_6d

    xor-int/lit8 v0, v5, 0x1

    .line 1653
    :goto_50
    if-eqz v0, :cond_5b

    .line 1655
    const-string/jumbo v0, "primaryStorageUuid"

    .line 1654
    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1657
    :cond_5b
    const-string/jumbo v0, "forceAdoptable"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_65} :catch_66
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_65} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_65} :catch_96
    .catchall {:try_start_11 .. :try_end_65} :catchall_a4

    goto :goto_24

    .line 1665
    :catch_66
    move-exception v0

    .line 1672
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1674
    :goto_6a
    return-void

    :cond_6b
    move v0, v2

    .line 1651
    goto :goto_50

    :cond_6d
    move v0, v3

    .line 1652
    goto :goto_50

    .line 1659
    :cond_6f
    :try_start_6f
    const-string/jumbo v5, "volume"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1660
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 1661
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v6, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_83} :catch_66
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_83} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_83} :catch_96
    .catchall {:try_start_6f .. :try_end_83} :catchall_a4

    goto :goto_24

    .line 1667
    :catch_84
    move-exception v0

    .line 1668
    :try_start_85
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "Failed reading metadata"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_a4

    .line 1672
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6a

    :cond_92
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6a

    .line 1669
    :catch_96
    move-exception v0

    .line 1670
    :try_start_97
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "Failed reading metadata"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_a4

    .line 1672
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6a

    .line 1671
    :catchall_a4
    move-exception v0

    .line 1672
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1671
    throw v0
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1705
    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 1706
    const-string/jumbo v1, "fsUuid"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1707
    new-instance v2, Landroid/os/storage/VolumeRecord;

    invoke-direct {v2, v0, v1}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1708
    const-string/jumbo v0, "partGuid"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1709
    const-string/jumbo v0, "nickname"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1710
    const-string/jumbo v0, "userFlags"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1711
    const-string/jumbo v0, "createdMillis"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1712
    const-string/jumbo v0, "lastTrimMillis"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1713
    const-string/jumbo v0, "lastBenchMillis"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1714
    return-object v2
.end method

.method private remountUidExternalStorage(II)V
    .registers 9

    .prologue
    .line 2028
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2030
    const-string/jumbo v0, "none"

    .line 2031
    packed-switch p2, :pswitch_data_68

    move-object v1, v0

    .line 2046
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "remount_uid"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_25} :catch_35

    .line 2050
    :goto_25
    return-void

    .line 2033
    :pswitch_26
    const-string/jumbo v0, "default"

    move-object v1, v0

    .line 2034
    goto :goto_a

    .line 2037
    :pswitch_2b
    const-string/jumbo v0, "read"

    move-object v1, v0

    .line 2038
    goto :goto_a

    .line 2041
    :pswitch_30
    const-string/jumbo v0, "write"

    move-object v1, v0

    .line 2042
    goto :goto_a

    .line 2047
    :catch_35
    move-exception v0

    .line 2048
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remount UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2031
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2b
        :pswitch_30
    .end packed-switch
.end method

.method private removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 5

    .prologue
    .line 3498
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3499
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3500
    if-eqz v0, :cond_22

    .line 3501
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3502
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    .line 3504
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3505
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    :cond_22
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3510
    return-void
.end method

.method private resetIfReadyAndConnected()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 924
    const-string/jumbo v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thinking about reset, mSystemReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 925
    const-string/jumbo v3, ", mDaemonConnected="

    .line 924
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 925
    iget-boolean v3, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 924
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    if-eqz v0, :cond_a5

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v0, :cond_a5

    .line 927
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 928
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->killMediaProvider(Ljava/util/List;)V

    .line 931
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 932
    :try_start_46
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 934
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 935
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 937
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_a6

    monitor-exit v2

    .line 941
    :try_start_56
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "reset"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 944
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 945
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "user_added"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_9a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_56 .. :try_end_9a} :catch_9b

    goto :goto_6b

    .line 950
    :catch_9b
    move-exception v0

    .line 951
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "Failed to reset vold"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    :cond_a5
    return-void

    .line 931
    :catchall_a6
    move-exception v0

    monitor-exit v2

    throw v0

    .line 947
    :cond_a9
    :try_start_a9
    array-length v2, v3

    move v0, v1

    :goto_ab
    if-ge v0, v2, :cond_a5

    aget v1, v3, v0

    .line 948
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "user_started"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_c7
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a9 .. :try_end_c7} :catch_9b

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 393
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 394
    const-string/jumbo v0, "internal"

    return-object v0

    .line 396
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_20

    iget-wide v2, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_24

    .line 398
    :cond_20
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 400
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    .line 401
    const-wide/32 v4, 0x240c8400

    .line 400
    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    const-string/jumbo v1, "w"

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldBenchmark()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 418
    const-string/jumbo v1, "storage_benchmark_interval"

    const-wide/32 v4, 0x240c8400

    .line 417
    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 419
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_19

    .line 420
    return v3

    .line 421
    :cond_19
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_20

    .line 422
    return v10

    .line 425
    :cond_20
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move v2, v3

    .line 426
    :goto_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_58

    .line 427
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 428
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 429
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v0

    if-eqz v0, :cond_54

    if-eqz v1, :cond_54

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v0, v1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_5a

    sub-long v0, v8, v0

    .line 431
    cmp-long v0, v0, v4

    if-ltz v0, :cond_54

    monitor-exit v6

    .line 432
    return v10

    .line 426
    :cond_54
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_24

    :cond_58
    monitor-exit v6

    .line 436
    return v3

    .line 425
    :catchall_5a
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private start()V
    .registers 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1612
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1613
    return-void
.end method

.method private systemReady()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1616
    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    .line 1617
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1618
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 811
    const-wide/16 v0, -0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_5} :catch_6

    .line 814
    :goto_5
    return-void

    .line 812
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 821
    :cond_4
    const-wide/16 v2, 0x1388

    :try_start_6
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 822
    return-void

    .line 824
    :cond_f
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 825
    const-string/jumbo v4, " still waiting for "

    .line 824
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 825
    const-string/jumbo v4, "..."

    .line 824
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_43} :catch_92

    .line 830
    :goto_43
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v4, v0, p3

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 831
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    const-string/jumbo v2, " gave up waiting for "

    .line 831
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    const-string/jumbo v2, " after "

    .line 831
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    const-string/jumbo v2, "ms"

    .line 831
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :catch_92
    move-exception v2

    .line 828
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Interrupt while waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private waitForReady()V
    .registers 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mConnectedSignal"

    invoke-direct {p0, v0, v1}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method private warnOnNotMounted()V
    .registers 5

    .prologue
    .line 2233
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2234
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 2235
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 2236
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_32

    move-result v0

    if-eqz v0, :cond_23

    monitor-exit v2

    .line 2238
    return-void

    .line 2234
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_27
    monitor-exit v2

    .line 2243
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "No primary storage mounted!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    return-void

    .line 2233
    :catchall_32
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private writeSettingsLocked()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1679
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_65

    move-result-object v1

    .line 1681
    :try_start_7
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1682
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1683
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1684
    const-string/jumbo v0, "volumes"

    const/4 v2, 0x0

    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1685
    const-string/jumbo v0, "version"

    const/4 v2, 0x3

    invoke-static {v3, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1686
    const-string/jumbo v0, "primaryStorageUuid"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1687
    const-string/jumbo v0, "forceAdoptable"

    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    invoke-static {v3, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1688
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1689
    const/4 v0, 0x0

    move v2, v0

    :goto_44
    if-ge v2, v4, :cond_55

    .line 1690
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1691
    invoke-static {v3, v0}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 1689
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_44

    .line 1693
    :cond_55
    const-string/jumbo v0, "volumes"

    const/4 v2, 0x0

    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1694
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1696
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_64} :catch_6e

    .line 1702
    :cond_64
    :goto_64
    return-void

    .line 1697
    :catch_65
    move-exception v1

    .line 1698
    :goto_66
    if-eqz v0, :cond_64

    .line 1699
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_64

    .line 1697
    :catch_6e
    move-exception v0

    move-object v0, v1

    goto :goto_66
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1718
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1719
    const-string/jumbo v0, "type"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->type:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1720
    const-string/jumbo v0, "fsUuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1721
    const-string/jumbo v0, "partGuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1722
    const-string/jumbo v0, "nickname"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1723
    const-string/jumbo v0, "userFlags"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1724
    const-string/jumbo v0, "createdMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1725
    const-string/jumbo v0, "lastTrimMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1726
    const-string/jumbo v0, "lastBenchMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1727
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1728
    return-void
.end method


# virtual methods
.method public addUserKeyAuth(II[B[B)V
    .registers 10

    .prologue
    .line 2971
    const-string/jumbo v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2972
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2975
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "add_user_key_auth"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 2976
    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 2975
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_36} :catch_37

    .line 2980
    return-void

    .line 2977
    :catch_37
    move-exception v0

    .line 2978
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .registers 12

    .prologue
    .line 3433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result v2

    .line 3435
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 3436
    cmp-long v3, p2, v0

    if-lez v3, :cond_41

    .line 3437
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to allocate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3438
    const-string/jumbo v5, " because only "

    .line 3437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3438
    const-string/jumbo v1, " allocatable"

    .line 3437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3441
    :cond_41
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3442
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3446
    :try_start_4f
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3447
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_65

    .line 3448
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 3453
    :goto_5c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_61} :catch_6b
    .catchall {:try_start_4f .. :try_end_61} :catchall_72

    .line 3457
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3459
    return-void

    .line 3450
    :cond_65
    :try_start_65
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6b
    .catchall {:try_start_65 .. :try_end_68} :catchall_72

    move-result-wide v0

    add-long/2addr v0, p2

    goto :goto_5c

    .line 3454
    :catch_6b
    move-exception v0

    .line 3455
    :try_start_6c
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_72

    .line 3456
    :catchall_72
    move-exception v0

    .line 3457
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3456
    throw v0
.end method

.method public benchmark(Ljava/lang/String;)J
    .registers 8

    .prologue
    .line 1854
    const-string/jumbo v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1855
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1859
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1860
    const-string/jumbo v1, "volume"

    .line 1859
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1860
    const-string/jumbo v3, "benchmark"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1859
    const-wide/32 v4, 0x2bf20

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 1861
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_28
    .catch Lcom/android/server/NativeDaemonTimeoutException; {:try_start_9 .. :try_end_28} :catch_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_28} :catch_2a

    move-result-wide v0

    return-wide v0

    .line 1864
    :catch_2a
    move-exception v0

    .line 1865
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1862
    :catch_30
    move-exception v0

    .line 1863
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .registers 10

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CRYPT_KEEPER"

    .line 2729
    const-string/jumbo v2, "no permission to access the crypt keeper"

    .line 2728
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2738
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2737
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 2739
    const-string/jumbo v0, "default_password"

    .line 2741
    :try_start_1c
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_55

    move-result-object v0

    .line 2747
    :goto_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "changepw"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 2748
    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, v0}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x2

    aput-object v5, v4, v0

    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v0, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v0, v4, v5

    .line 2747
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_48} :catch_8d

    move-result-object v0

    .line 2750
    :try_start_49
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_71
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_49 .. :try_end_4c} :catch_8d

    .line 2754
    :goto_4c
    :try_start_4c
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4c .. :try_end_53} :catch_8d

    move-result v0

    return v0

    .line 2742
    :catch_55
    move-exception v2

    .line 2743
    const-string/jumbo v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t get password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 2751
    :catch_71
    move-exception v1

    .line 2752
    :try_start_72
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t sanitize password"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_72 .. :try_end_8c} :catch_8d

    goto :goto_4c

    .line 2755
    :catch_8d
    move-exception v0

    .line 2757
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    return v0
.end method

.method public clearPassword()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CRYPT_KEEPER"

    .line 2915
    const-string/jumbo v2, "only keyguard can clear password"

    .line 2914
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->isReady()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2918
    return-void

    .line 2923
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "clearpw"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_23} :catch_24

    .line 2927
    return-void

    .line 2924
    :catch_24
    move-exception v0

    .line 2925
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 2261
    const-string/jumbo v1, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2262
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2263
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2267
    :try_start_d
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v1, 0x7

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "create"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object p3, v4, v1

    new-instance v1, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v1, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v1, v4, v5

    .line 2268
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v4, v5

    if-eqz p6, :cond_4e

    const-string/jumbo v1, "1"

    :goto_3c
    const/4 v5, 0x6

    aput-object v1, v4, v5

    .line 2267
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_42
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_42} :catch_52

    .line 2273
    :goto_42
    if-nez v0, :cond_4d

    .line 2274
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2275
    :try_start_47
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_55

    monitor-exit v1

    .line 2278
    :cond_4d
    return v0

    .line 2268
    :cond_4e
    :try_start_4e
    const-string/jumbo v1, "0"
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_3c

    .line 2269
    :catch_52
    move-exception v0

    .line 2270
    const/4 v0, -0x1

    goto :goto_42

    .line 2274
    :catchall_55
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createUserKey(IIZ)V
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2931
    const-string/jumbo v2, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2932
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2935
    :try_start_b
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "create_user_key"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 2936
    if-eqz p3, :cond_34

    :goto_29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v4, v1

    .line 2935
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_33} :catch_36

    .line 2940
    return-void

    :cond_34
    move v0, v1

    .line 2936
    goto :goto_29

    .line 2937
    :catch_36
    move-exception v0

    .line 2938
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 8

    .prologue
    .line 2654
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2658
    :cond_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CRYPT_KEEPER"

    .line 2659
    const-string/jumbo v2, "no permission to access the crypt keeper"

    .line 2658
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2669
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "checkpw"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v3, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 2671
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2672
    if-nez v0, :cond_4d

    .line 2675
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StorageManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 2683
    const-wide/16 v4, 0x3e8

    .line 2675
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_4d} :catch_4e

    .line 2686
    :cond_4d
    return v0

    .line 2687
    :catch_4e
    move-exception v0

    .line 2689
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    return v0
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 2331
    const-string/jumbo v1, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2332
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2333
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2341
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 2345
    :try_start_14
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "destroy"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2346
    if-eqz p2, :cond_30

    .line 2347
    const-string/jumbo v2, "force"

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2349
    :cond_30
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_14 .. :try_end_35} :catch_49

    .line 2359
    :goto_35
    if-nez v0, :cond_48

    .line 2360
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2361
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2362
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_56

    :cond_47
    monitor-exit v1

    .line 2367
    :cond_48
    return v0

    .line 2350
    :catch_49
    move-exception v0

    .line 2351
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2352
    const/16 v1, 0x195

    if-ne v0, v1, :cond_54

    .line 2353
    const/4 v0, -0x7

    goto :goto_35

    .line 2355
    :cond_54
    const/4 v0, -0x1

    goto :goto_35

    .line 2360
    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public destroyUserKey(I)V
    .registers 7

    .prologue
    .line 2944
    const-string/jumbo v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2945
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2948
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "destroy_user_key"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2952
    return-void

    .line 2949
    :catch_22
    move-exception v0

    .line 2950
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 9

    .prologue
    .line 3065
    const-string/jumbo v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3066
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 3069
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "destroy_user_storage"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3070
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 3069
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_2f} :catch_30

    .line 3074
    return-void

    .line 3071
    :catch_30
    move-exception v0

    .line 3072
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 4029
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "StorageManagerService"

    invoke-static {v0, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 4031
    :cond_d
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "  "

    const/16 v2, 0xa0

    invoke-direct {v3, p2, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4032
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4033
    :try_start_1a
    const-string/jumbo v0, "Disks:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move v2, v1

    .line 4035
    :goto_24
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    .line 4036
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 4037
    invoke-virtual {v0, v3}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4035
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_24

    .line 4039
    :cond_3b
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4041
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4042
    const-string/jumbo v0, "Volumes:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move v2, v1

    .line 4044
    :goto_4b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_71

    .line 4045
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 4046
    const-string/jumbo v5, "private"

    iget-object v6, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 4044
    :goto_66
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4b

    .line 4047
    :cond_6a
    invoke-virtual {v0, v3}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_6d
    .catchall {:try_start_1a .. :try_end_6d} :catchall_6e

    goto :goto_66

    .line 4032
    :catchall_6e
    move-exception v0

    monitor-exit v4

    throw v0

    .line 4049
    :cond_71
    :try_start_71
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4051
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4052
    const-string/jumbo v0, "Records:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4053
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4054
    :goto_80
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_97

    .line 4055
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 4056
    invoke-virtual {v0, v3}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4054
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_80

    .line 4058
    :cond_97
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4060
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Primary storage UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4062
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v1

    .line 4063
    if-nez v1, :cond_179

    .line 4064
    const-string/jumbo v0, "Internal storage total size: N/A"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4074
    :goto_c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Force adoptable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4075
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Local unlocked users: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "System unlocked users: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_118
    .catchall {:try_start_71 .. :try_end_118} :catchall_6e

    monitor-exit v4

    .line 4080
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 4081
    :try_start_11c
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4082
    const-string/jumbo v0, "mObbMounts:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4083
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4084
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4086
    :goto_132
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 4087
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4088
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4089
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4090
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4091
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_166
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbState;

    .line 4092
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_175
    .catchall {:try_start_11c .. :try_end_175} :catchall_176

    goto :goto_166

    .line 4080
    :catchall_176
    move-exception v0

    monitor-exit v2

    throw v0

    .line 4066
    :cond_179
    :try_start_179
    const-string/jumbo v0, "Internal storage ("

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4067
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4068
    const-string/jumbo v0, ") total size: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4069
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4070
    const-string/jumbo v0, " ("

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4071
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x4e800000

    div-float/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 4072
    const-string/jumbo v0, " GB)"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1ac
    .catchall {:try_start_179 .. :try_end_1ac} :catchall_6e

    goto/16 :goto_c2

    .line 4094
    :cond_1ae
    :try_start_1ae
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_132

    .line 4096
    :cond_1b2
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4098
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4099
    const-string/jumbo v0, "mObbPathToStateMap:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4100
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4101
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4102
    :goto_1cb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 4103
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4105
    const-string/jumbo v1, " -> "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1cb

    .line 4108
    :cond_1ee
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1f1
    .catchall {:try_start_1ae .. :try_end_1f1} :catchall_176

    monitor-exit v2

    .line 4111
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4112
    const-string/jumbo v0, "mConnector:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4114
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, p1, v3, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4115
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4117
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4118
    const-string/jumbo v0, "mCryptConnector:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4120
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, p1, v3, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4121
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4123
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4124
    const-string/jumbo v0, "Last maintenance: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4125
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4126
    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 2694
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eq p1, v3, :cond_13

    .line 2695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2698
    :cond_13
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CRYPT_KEEPER"

    .line 2699
    const-string/jumbo v2, "no permission to access the crypt keeper"

    .line 2698
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2708
    if-ne p1, v3, :cond_42

    .line 2709
    :try_start_23
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "enablecrypto"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "inplace"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 2710
    sget-object v3, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 2709
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2720
    :goto_41
    return v5

    .line 2712
    :cond_42
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "enablecrypto"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "inplace"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 2713
    sget-object v3, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v3, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 2712
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_68
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_68} :catch_69

    goto :goto_41

    .line 2715
    :catch_69
    move-exception v0

    .line 2717
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    return v0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 2297
    const-string/jumbo v1, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2298
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2302
    :try_start_a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "finalize"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_1e} :catch_1f

    .line 2310
    :goto_1e
    return v0

    .line 2307
    :catch_1f
    move-exception v0

    .line 2308
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method public finishMediaUpdate()V
    .registers 3

    .prologue
    .line 2522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 2523
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to call finishMediaUpdate()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2525
    :cond_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1b

    .line 2526
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2530
    :goto_1a
    return-void

    .line 2528
    :cond_1b
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Odd, nobody asked to unmount?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 2314
    const-string/jumbo v1, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2315
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2319
    :try_start_a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "fixperms"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_28} :catch_29

    .line 2327
    :goto_28
    return v0

    .line 2324
    :catch_29
    move-exception v0

    .line 2325
    const/4 v0, -0x1

    goto :goto_28
.end method

.method public fixateNewestUserKeyAuth(I)V
    .registers 7

    .prologue
    .line 2987
    const-string/jumbo v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2988
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2991
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "fixate_newest_user_key_auth"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 2995
    return-void

    .line 2992
    :catch_22
    move-exception v0

    .line 2993
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public forgetAllVolumes()V
    .registers 7

    .prologue
    .line 1974
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1975
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1977
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1978
    const/4 v0, 0x0

    move v2, v0

    :goto_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_44

    .line 1979
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1980
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 1981
    iget-object v4, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1982
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1984
    :cond_3b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap3(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 1978
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 1986
    :cond_44
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1988
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 1989
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1992
    :cond_59
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 1993
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_67
    .catchall {:try_start_e .. :try_end_67} :catchall_69

    monitor-exit v3

    .line 1995
    return-void

    .line 1977
    :catchall_69
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1949
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1950
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1952
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1955
    :try_start_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1956
    if-eqz v0, :cond_30

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_30

    .line 1957
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1959
    :cond_30
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap3(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    .line 1963
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1964
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1965
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1968
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_53

    monitor-exit v1

    .line 1970
    return-void

    .line 1954
    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public format(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1841
    const-string/jumbo v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1842
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1844
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1846
    :try_start_d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "format"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string/jumbo v0, "auto"

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_29} :catch_2a

    .line 1850
    return-void

    .line 1847
    :catch_2a
    move-exception v0

    .line 1848
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 1790
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->format(Ljava/lang/String;)V

    .line 1791
    const/4 v0, 0x0

    return v0
.end method

.method public fstrim(I)V
    .registers 7

    .prologue
    .line 2007
    const-string/jumbo v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2008
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2011
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_37

    .line 2012
    const-string/jumbo v0, "dodtrim"

    .line 2016
    :goto_10
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_28

    .line 2017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bench"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2021
    :cond_28
    :try_start_28
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "fstrim"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_36} :catch_3b

    .line 2025
    :goto_36
    return-void

    .line 2014
    :cond_37
    const-string/jumbo v0, "dotrim"

    goto :goto_10

    .line 2022
    :catch_3b
    move-exception v0

    .line 2023
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to run fstrim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 24

    .prologue
    .line 3389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result v6

    .line 3391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 3392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/StorageStatsManager;

    .line 3393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3399
    :try_start_2a
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 3401
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    .line 3402
    invoke-virtual {v4, v7}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v12

    .line 3403
    invoke-virtual {v4, v7}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v14

    .line 3405
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_74

    .line 3406
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide v16

    .line 3407
    invoke-virtual {v4, v7, v6}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v4

    .line 3408
    const-wide/16 v18, 0x0

    sub-long v4, v16, v4

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3410
    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_68

    .line 3411
    const-wide/16 v6, 0x0

    add-long/2addr v4, v10

    sub-long/2addr v4, v14

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_63} :catch_90
    .catchall {:try_start_2a .. :try_end_63} :catchall_97

    move-result-wide v4

    .line 3427
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3411
    return-wide v4

    .line 3413
    :cond_68
    const-wide/16 v6, 0x0

    add-long/2addr v4, v10

    sub-long/2addr v4, v12

    :try_start_6c
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_90
    .catchall {:try_start_6c .. :try_end_6f} :catchall_97

    move-result-wide v4

    .line 3427
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3413
    return-wide v4

    .line 3418
    :cond_74
    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_84

    .line 3419
    const-wide/16 v4, 0x0

    sub-long v6, v10, v14

    :try_start_7c
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_90
    .catchall {:try_start_7c .. :try_end_7f} :catchall_97

    move-result-wide v4

    .line 3427
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3419
    return-wide v4

    .line 3421
    :cond_84
    const-wide/16 v4, 0x0

    sub-long v6, v10, v12

    :try_start_88
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_90
    .catchall {:try_start_88 .. :try_end_8b} :catchall_97

    move-result-wide v4

    .line 3427
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3421
    return-wide v4

    .line 3424
    :catch_90
    move-exception v4

    .line 3425
    :try_start_91
    new-instance v5, Landroid/os/ParcelableException;

    invoke-direct {v5, v4}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_97

    .line 3426
    :catchall_97
    move-exception v4

    .line 3427
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3426
    throw v4
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 7

    .prologue
    .line 3330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_11

    .line 3331
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    const-string/jumbo v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3334
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 3336
    :try_start_1f
    invoke-virtual {v0, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    move-result-wide v0

    .line 3338
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3336
    return-wide v0

    .line 3337
    :catchall_27
    move-exception v0

    .line 3338
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3337
    throw v0
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .registers 7

    .prologue
    .line 3344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p2, v0, :cond_11

    .line 3345
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    const-string/jumbo v2, "StorageManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3349
    :try_start_15
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_2b
    .catchall {:try_start_15 .. :try_end_26} :catchall_32

    move-result-wide v0

    .line 3354
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3349
    return-wide v0

    .line 3351
    :catch_2b
    move-exception v0

    .line 3352
    :try_start_2c
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_32

    .line 3353
    :catchall_32
    move-exception v0

    .line 3354
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3353
    throw v0
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .prologue
    .line 3297
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3298
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v3, v0, [Landroid/os/storage/DiskInfo;

    .line 3299
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 3300
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    aput-object v0, v3, v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_25

    .line 3299
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_23
    monitor-exit v2

    .line 3302
    return-object v3

    .line 3297
    :catchall_25
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getEncryptionState()I
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 2632
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CRYPT_KEEPER"

    .line 2633
    const-string/jumbo v2, "no permission to access the crypt keeper"

    .line 2632
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2639
    :try_start_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "cryptocomplete"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 2640
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_28} :catch_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_28} :catch_2a

    move-result v0

    return v0

    .line 2645
    :catch_2a
    move-exception v0

    .line 2647
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Error in communicating with cryptfs in validating"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    return v5

    .line 2641
    :catch_35
    move-exception v0

    .line 2643
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    return v5
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2847
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CRYPT_KEEPER"

    .line 2848
    const-string/jumbo v3, "no permission to access the crypt keeper"

    .line 2847
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2855
    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "getfield"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2856
    const/16 v2, 0x71

    .line 2854
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v2

    .line 2857
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2858
    array-length v3, v2

    :goto_30
    if-ge v0, v3, :cond_48

    aget-object v4, v2, v0

    .line 2859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_44} :catch_49

    move-result-object v1

    .line 2858
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 2861
    :cond_48
    return-object v1

    .line 2862
    :catch_49
    move-exception v0

    .line 2863
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2553
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2556
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2559
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2560
    :try_start_12
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbState;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_38

    monitor-exit v1

    .line 2562
    if-nez v0, :cond_3b

    .line 2563
    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to find OBB mounted at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    return-object v6

    .line 2559
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2569
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "obb"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "path"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 2570
    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2571
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_5a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_5a} :catch_5c

    move-result-object v0

    return-object v0

    .line 2572
    :catch_5c
    move-exception v0

    .line 2573
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2574
    const/16 v1, 0x196

    if-ne v0, v1, :cond_66

    .line 2575
    return-object v6

    .line 2577
    :cond_66
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected response code %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPassword()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2889
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CRYPT_KEEPER"

    .line 2890
    const-string/jumbo v2, "only keyguard can retrieve password"

    .line 2889
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->isReady()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2893
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0

    .line 2898
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "getpw"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 2899
    const-string/jumbo v1, "-1"

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2901
    return-object v5

    .line 2903
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18 .. :try_end_3b} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_3b} :catch_3d

    move-result-object v0

    return-object v0

    .line 2906
    :catch_3d
    move-exception v0

    .line 2907
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Invalid response to getPassword"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    return-object v5

    .line 2904
    :catch_48
    move-exception v0

    .line 2905
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getPasswordType()I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 2801
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CRYPT_KEEPER"

    .line 2802
    const-string/jumbo v3, "no permission to access the crypt keeper"

    .line 2801
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2808
    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "getpwtype"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2809
    :goto_21
    sget-object v2, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_38

    .line 2810
    sget-object v2, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2811
    return v0

    .line 2809
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2814
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected return from cryptfs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_41} :catch_41

    .line 2815
    :catch_41
    move-exception v0

    .line 2816
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2138
    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 2137
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2500
    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2501
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2502
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2506
    :try_start_e
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "asec"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "fspath"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 2507
    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2508
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_2b} :catch_2d

    move-result-object v0

    return-object v0

    .line 2509
    :catch_2d
    move-exception v0

    .line 2510
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2511
    const/16 v1, 0x196

    if-ne v0, v1, :cond_49

    .line 2512
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Container \'%s\' not found"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    const/4 v0, 0x0

    return-object v0

    .line 2515
    :cond_49
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected response code %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2247
    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2248
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2249
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2253
    :try_start_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "asec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "list"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    const/16 v1, 0x6f

    .line 2252
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_26

    move-result-object v0

    return-object v0

    .line 2254
    :catch_26
    move-exception v0

    .line 2255
    new-array v0, v5, [Ljava/lang/String;

    return-object v0
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2479
    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2480
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2481
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2485
    :try_start_e
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "asec"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "path"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 2486
    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2487
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_2b} :catch_2d

    move-result-object v0

    return-object v0

    .line 2488
    :catch_2d
    move-exception v0

    .line 2489
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2490
    const/16 v1, 0x196

    if-ne v0, v1, :cond_49

    .line 2491
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Container \'%s\' not found"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    const/4 v0, 0x0

    return-object v0

    .line 2494
    :cond_49
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected response code %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2207
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2208
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2211
    :try_start_a
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "storage"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "users"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 2212
    const/16 v2, 0x70

    .line 2210
    invoke-static {v0, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v2

    .line 2215
    array-length v0, v2

    new-array v3, v0, [I

    move v0, v1

    .line 2216
    :goto_29
    array-length v4, v2

    if-ge v0, v4, :cond_5c

    .line 2217
    aget-object v4, v2, v0

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_34} :catch_5d

    move-result-object v4

    .line 2219
    const/4 v5, 0x0

    :try_start_36
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3e} :catch_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_3e} :catch_5d

    .line 2216
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 2220
    :catch_41
    move-exception v0

    .line 2221
    :try_start_42
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v2, "Error parsing pid %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const/4 v0, 0x0

    new-array v0, v0, [I
    :try_end_5b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_42 .. :try_end_5b} :catch_5d

    return-object v0

    .line 2225
    :cond_5c
    return-object v3

    .line 2226
    :catch_5d
    move-exception v0

    .line 2227
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "Failed to retrieve storage users list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2228
    new-array v0, v1, [I

    return-object v0
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 23

    .prologue
    .line 3211
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 3213
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    move v8, v2

    .line 3214
    :goto_c
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_66

    const/4 v2, 0x1

    move v7, v2

    .line 3215
    :goto_14
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    move v3, v2

    .line 3219
    :goto_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3221
    :try_start_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v9

    .line 3222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_6c

    move-result v11

    .line 3224
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3227
    const/4 v4, 0x0

    .line 3229
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3231
    const/4 v2, 0x0

    move v6, v2

    :goto_42
    :try_start_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v6, v2, :cond_c1

    .line 3232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 3233
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_11a

    move-result v5

    packed-switch v5, :pswitch_data_11e

    :pswitch_5d
    move v2, v4

    .line 3231
    :goto_5e
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v2

    goto :goto_42

    .line 3213
    :cond_63
    const/4 v2, 0x0

    move v8, v2

    goto :goto_c

    .line 3214
    :cond_66
    const/4 v2, 0x0

    move v7, v2

    goto :goto_14

    .line 3215
    :cond_69
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1c

    .line 3223
    :catchall_6c
    move-exception v2

    .line 3224
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3223
    throw v2

    .line 3242
    :pswitch_71
    if-eqz v8, :cond_7b

    .line 3243
    :try_start_73
    invoke-virtual {v2, v10}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v5

    .line 3248
    :goto_77
    if-nez v5, :cond_8f

    move v2, v4

    goto :goto_5e

    .line 3245
    :cond_7b
    invoke-virtual {v2, v10}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 3246
    if-eqz v3, :cond_8d

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8d

    const/4 v5, 0x1

    goto :goto_77

    .line 3245
    :cond_8b
    const/4 v5, 0x1

    goto :goto_77

    .line 3246
    :cond_8d
    const/4 v5, 0x0

    goto :goto_77

    .line 3250
    :cond_8f
    const/4 v5, 0x0

    .line 3251
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b2

    xor-int/lit8 v13, v9, 0x1

    if-eqz v13, :cond_b2

    .line 3252
    const/4 v5, 0x1

    .line 3257
    :cond_9c
    :goto_9c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13, v10, v5}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 3259
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 3260
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3261
    const/4 v2, 0x1

    goto :goto_5e

    .line 3253
    :cond_b2
    if-nez v11, :cond_9c

    xor-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_9c

    .line 3254
    const/4 v5, 0x1

    goto :goto_9c

    .line 3263
    :cond_ba
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bf
    .catchall {:try_start_73 .. :try_end_bf} :catchall_11a

    move v2, v4

    goto :goto_5e

    :cond_c1
    monitor-exit v12

    .line 3268
    if-nez v4, :cond_10b

    .line 3269
    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "No primary storage defined yet; hacking together a stub"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    const-string/jumbo v2, "ro.vold.primary_physical"

    const/4 v3, 0x0

    .line 3271
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 3274
    const-string/jumbo v2, "stub_primary"

    .line 3275
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 3276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3279
    xor-int/lit8 v9, v8, 0x1

    .line 3283
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 3284
    const/16 v16, 0x0

    .line 3285
    const-string/jumbo v2, "removed"

    .line 3287
    new-instance v2, Landroid/os/storage/StorageVolume;

    const-string/jumbo v3, "stub_primary"

    .line 3289
    const-string/jumbo v17, "removed"

    .line 3287
    const/4 v4, 0x0

    .line 3288
    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    .line 3289
    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    .line 3287
    invoke-direct/range {v2 .. v17}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3292
    :cond_10b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/storage/StorageVolume;

    return-object v2

    .line 3230
    :catchall_11a
    move-exception v2

    monitor-exit v12

    throw v2

    .line 3233
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_71
        :pswitch_5d
        :pswitch_71
    .end packed-switch
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 6

    .prologue
    .line 3319
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3320
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v3, v0, [Landroid/os/storage/VolumeRecord;

    .line 3321
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 3322
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    aput-object v0, v3, v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_25

    .line 3321
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_23
    monitor-exit v2

    .line 3324
    return-object v3

    .line 3319
    :catchall_25
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1769
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 6

    .prologue
    .line 3308
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3309
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v3, v0, [Landroid/os/storage/VolumeInfo;

    .line 3310
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 3311
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    aput-object v0, v3, v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_25

    .line 3310
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_23
    monitor-exit v2

    .line 3313
    return-object v3

    .line 3308
    :catchall_25
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public isConvertibleToFBE()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2873
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    .line 2874
    const-string/jumbo v4, "no permission to access the crypt keeper"

    .line 2873
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2880
    :try_start_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "isConvertibleToFBE"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2881
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_29} :catch_2f

    move-result v2

    if-eqz v2, :cond_2d

    :goto_2c
    return v0

    :cond_2d
    move v0, v1

    goto :goto_2c

    .line 2882
    :catch_2f
    move-exception v0

    .line 2883
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    .prologue
    .line 1774
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 2584
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2586
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit v1

    return v0

    .line 2585
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 2444
    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2445
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2446
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2448
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2449
    :try_start_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_17

    move-result v0

    monitor-exit v1

    return v0

    .line 2448
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .registers 2

    .prologue
    .line 1754
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 2

    .prologue
    .line 1764
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUserKeyUnlocked(I)Z
    .registers 4

    .prologue
    .line 3045
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3046
    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    .line 3045
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lastMaintenance()J
    .registers 3

    .prologue
    .line 1010
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .registers 7

    .prologue
    .line 3029
    const-string/jumbo v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3030
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 3033
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "lock_user_key"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_2e

    .line 3038
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3039
    :try_start_24
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_34

    monitor-exit v1

    .line 3041
    return-void

    .line 3034
    :catch_2e
    move-exception v0

    .line 3035
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 3038
    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 3172
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3173
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3176
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 3177
    const-string/jumbo v2, "appops"

    .line 3176
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 3178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3182
    :try_start_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_7d

    move-result-object v0

    .line 3190
    invoke-virtual {v1, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 3191
    invoke-virtual {v1, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 3190
    if-nez v2, :cond_47

    .line 3192
    invoke-virtual {v1, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 3190
    if-eqz v1, :cond_ab

    .line 3193
    :cond_47
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3194
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 3195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3199
    :cond_68
    :try_start_68
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "mkdirs"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_68 .. :try_end_7c} :catch_a5

    .line 3200
    return v6

    .line 3183
    :catch_7d
    move-exception v0

    .line 3184
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    const/4 v0, -0x1

    return v0

    .line 3201
    :catch_a5
    move-exception v0

    .line 3202
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    return v0

    .line 3206
    :cond_ab
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid mkdirs path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 4132
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 4134
    :cond_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_12

    .line 4135
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 4137
    :cond_12
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1796
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1797
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1799
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1800
    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1801
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mounting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " restricted by policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1804
    :cond_34
    :try_start_34
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "mount"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_5c} :catch_5d

    .line 1808
    return-void

    .line 1805
    :catch_5d
    move-exception v0

    .line 1806
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 13

    .prologue
    .line 2593
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2594
    const-string/jumbo v0, "canonicalPath cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2595
    const-string/jumbo v0, "token cannot be null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2597
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2598
    new-instance v0, Lcom/android/server/StorageManagerService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2599
    new-instance v1, Lcom/android/server/StorageManagerService$MountObbAction;

    invoke-direct {v1, p0, v0, p3, v4}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;I)V

    .line 2600
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2604
    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 3118
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3123
    :goto_12
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3124
    const/4 v0, 0x0

    .line 3125
    :try_start_16
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v1, :cond_64

    .line 3126
    new-instance v0, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v0}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 3127
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string/jumbo v5, "AppFuseBridge"

    invoke-direct {v0, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_61

    .line 3128
    const/4 v0, 0x1

    move v1, v0

    .line 3131
    :goto_30
    :try_start_30
    iget v0, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_30 .. :try_end_36} :catch_5b
    .catchall {:try_start_30 .. :try_end_36} :catchall_61

    .line 3133
    :try_start_36
    new-instance v5, Lcom/android/internal/os/AppFuseMount;

    .line 3134
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v7, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v7, p0, v2, v3, v0}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;III)V

    invoke-virtual {v6, v7}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 3133
    invoke-direct {v5, v0, v6}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_46
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_36 .. :try_end_46} :catch_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_46} :catch_5b
    .catchall {:try_start_36 .. :try_end_46} :catchall_61

    monitor-exit v4

    return-object v5

    .line 3135
    :catch_48
    move-exception v0

    .line 3136
    if-eqz v1, :cond_56

    .line 3138
    :try_start_4b
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4b .. :try_end_54} :catch_5b
    .catchall {:try_start_4b .. :try_end_54} :catchall_61

    monitor-exit v4

    .line 3139
    return-object v8

    .line 3142
    :cond_56
    const/4 v0, 0x0

    :try_start_57
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_59
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_57 .. :try_end_59} :catch_5b
    .catchall {:try_start_57 .. :try_end_59} :catchall_61

    monitor-exit v4

    goto :goto_12

    .line 3144
    :catch_5b
    move-exception v0

    .line 3145
    :try_start_5c
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_61

    .line 3123
    :catchall_61
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_64
    move v1, v0

    goto :goto_30
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 2371
    const-string/jumbo v0, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2372
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2373
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2375
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 2376
    :try_start_10
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_54

    move-result v0

    if-eqz v0, :cond_1b

    .line 2377
    const/4 v0, -0x6

    monitor-exit v2

    return v0

    :cond_1b
    monitor-exit v2

    .line 2383
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "mount"

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p1, v4, v0

    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v0, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, v4, v5

    .line 2384
    if-eqz p4, :cond_57

    const-string/jumbo v0, "ro"

    :goto_41
    const/4 v5, 0x4

    aput-object v0, v4, v5

    .line 2383
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1c .. :try_end_47} :catch_5b

    :cond_47
    move v0, v1

    .line 2392
    :goto_48
    if-nez v0, :cond_53

    .line 2393
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2394
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_66

    monitor-exit v1

    .line 2397
    :cond_53
    return v0

    .line 2375
    :catchall_54
    move-exception v0

    monitor-exit v2

    throw v0

    .line 2384
    :cond_57
    :try_start_57
    const-string/jumbo v0, "rw"
    :try_end_5a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_41

    .line 2385
    :catch_5b
    move-exception v0

    .line 2386
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2387
    const/16 v2, 0x195

    if-eq v0, v2, :cond_47

    .line 2388
    const/4 v0, -0x1

    goto :goto_48

    .line 2393
    :catchall_66
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 1779
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Ljava/lang/String;)V

    .line 1780
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 3

    .prologue
    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    .prologue
    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 1019
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1020
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    .line 1088
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 3154
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "mountProxyFileDescriptor"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3157
    :try_start_e
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_11
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_e .. :try_end_11} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_2b

    .line 3158
    :try_start_11
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v2, :cond_20

    .line 3159
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v2, "FuseBridge has not been created"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_28

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_1e .. :try_end_1f} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1f} :catch_2b

    .line 3160
    return-object v3

    .line 3162
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(IIII)Landroid/os/ParcelFileDescriptor;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_28

    move-result-object v0

    :try_start_26
    monitor-exit v1

    return-object v0

    .line 3157
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2b
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_26 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2b

    .line 3164
    :catch_2b
    move-exception v0

    .line 3165
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "The mount point has already been invalid"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    return-object v3
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 1904
    const-string/jumbo v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1905
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 1906
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1908
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1910
    :try_start_10
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "partition"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string/jumbo v4, "mixed"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1911
    const-string/jumbo v1, "partitionMixed"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_3a} :catch_42
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_3a} :catch_3b

    .line 1917
    return-void

    .line 1914
    :catch_3b
    move-exception v0

    .line 1915
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1912
    :catch_42
    move-exception v0

    .line 1913
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1887
    const-string/jumbo v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1888
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 1889
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1891
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1893
    :try_start_10
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "partition"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string/jumbo v4, "private"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1894
    const-string/jumbo v1, "partitionPrivate"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_33} :catch_3b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_33} :catch_34

    .line 1900
    return-void

    .line 1897
    :catch_34
    move-exception v0

    .line 1898
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1895
    :catch_3b
    move-exception v0

    .line 1896
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1871
    const-string/jumbo v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1872
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1874
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1876
    :try_start_d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "partition"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string/jumbo v4, "public"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1877
    const-string/jumbo v1, "partitionPublic"

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_30} :catch_38
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_30} :catch_31

    .line 1883
    return-void

    .line 1880
    :catch_31
    move-exception v0

    .line 1881
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1878
    :catch_38
    move-exception v0

    .line 1879
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 10

    .prologue
    .line 3052
    const-string/jumbo v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3053
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 3056
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "prepare_user_storage"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3057
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 3056
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_36} :catch_37

    .line 3061
    return-void

    .line 3058
    :catch_37
    move-exception v0

    .line 3059
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    .line 1737
    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 2454
    const-string/jumbo v1, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2455
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2456
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2458
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2463
    :try_start_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_3c

    move-result v2

    if-eqz v2, :cond_23

    .line 2464
    :cond_20
    const/4 v0, -0x6

    monitor-exit v1

    return v0

    :cond_23
    monitor-exit v1

    .line 2470
    :try_start_24
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "rename"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_24 .. :try_end_3b} :catch_3f

    .line 2475
    :goto_3b
    return v0

    .line 2458
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2471
    :catch_3f
    move-exception v0

    .line 2472
    const/4 v0, -0x1

    goto :goto_3b
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 2283
    const-string/jumbo v1, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2284
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2285
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2289
    :try_start_d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "resize"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v4, p3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_30} :catch_31

    .line 2293
    :goto_30
    return v0

    .line 2290
    :catch_31
    move-exception v0

    .line 2291
    const/4 v0, -0x1

    goto :goto_30
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 999
    return-void
.end method

.method public runMaintenance()V
    .registers 2

    .prologue
    .line 1004
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 1006
    return-void
.end method

.method public secdiscard(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 3078
    const-string/jumbo v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3079
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 3082
    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "secdiscard"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    .line 3086
    return-void

    .line 3083
    :catch_22
    move-exception v0

    .line 3084
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setDebugFlags(II)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2054
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2055
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2057
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_53

    .line 2062
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2063
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2064
    const-string/jumbo v1, "Emulation not supported on device with native FBE"

    .line 2063
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2066
    :cond_1e
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2067
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2068
    const-string/jumbo v1, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    .line 2067
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2071
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2073
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_71

    move v0, v1

    .line 2074
    :goto_38
    :try_start_38
    const-string/jumbo v3, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_73

    .line 2079
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2083
    :cond_53
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_91

    .line 2084
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2085
    const-string/jumbo v0, "persist.sys.adoptable_fbe"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2084
    if-eqz v0, :cond_78

    .line 2086
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2087
    const-string/jumbo v1, "Adoptable storage not available on device with native FBE"

    .line 2086
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    move v0, v2

    .line 2073
    goto :goto_38

    .line 2078
    :catchall_73
    move-exception v0

    .line 2079
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2078
    throw v0

    .line 2090
    :cond_78
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2091
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_da

    move v0, v1

    :goto_80
    :try_start_80
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    .line 2093
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 2094
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_90
    .catchall {:try_start_80 .. :try_end_90} :catchall_dc

    monitor-exit v3

    .line 2098
    :cond_91
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_b4

    .line 2101
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_df

    .line 2102
    const-string/jumbo v0, "force_on"

    .line 2109
    :goto_9c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2111
    :try_start_a0
    const-string/jumbo v3, "persist.sys.sdcardfs"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_b1
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_eb

    .line 2116
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2120
    :cond_b4
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_d9

    .line 2121
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_f0

    move v0, v1

    .line 2123
    :goto_bd
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2125
    :try_start_c1
    const-string/jumbo v1, "persist.sys.virtual_disk"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_d6
    .catchall {:try_start_c1 .. :try_end_d6} :catchall_f2

    .line 2130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    :cond_d9
    return-void

    :cond_da
    move v0, v2

    .line 2091
    goto :goto_80

    .line 2090
    :catchall_dc
    move-exception v0

    monitor-exit v3

    throw v0

    .line 2103
    :cond_df
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_e7

    .line 2104
    const-string/jumbo v0, "force_off"

    goto :goto_9c

    .line 2106
    :cond_e7
    const-string/jumbo v0, ""

    goto :goto_9c

    .line 2115
    :catchall_eb
    move-exception v0

    .line 2116
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    throw v0

    :cond_f0
    move v0, v2

    .line 2121
    goto :goto_bd

    .line 2129
    :catchall_f2
    move-exception v0

    .line 2130
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2129
    throw v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CRYPT_KEEPER"

    .line 2828
    const-string/jumbo v2, "no permission to access the crypt keeper"

    .line 2827
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2834
    :try_start_e
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "setfield"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_25} :catch_26

    .line 2838
    return-void

    .line 2835
    :catch_26
    move-exception v0

    .line 2836
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 10

    .prologue
    .line 2144
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2145
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2150
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2151
    :try_start_c
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Primary storage already at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2e

    .line 2150
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2155
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-eqz v0, :cond_3e

    .line 2156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Move already in progress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2158
    :cond_3e
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2159
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 2162
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 2164
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2165
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2164
    if-eqz v3, :cond_54

    .line 2166
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failing move due to locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V
    :try_end_91
    .catchall {:try_start_31 .. :try_end_91} :catchall_2e

    monitor-exit v1

    .line 2168
    return-void

    .line 2174
    :cond_93
    :try_start_93
    const-string/jumbo v0, "primary_physical"

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 2175
    const-string/jumbo v0, "primary_physical"

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2174
    if-eqz v0, :cond_c7

    .line 2176
    :cond_a7
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v2, "Skipping move to/from primary physical"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2178
    const/16 v0, -0x64

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 2179
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_c5
    .catchall {:try_start_93 .. :try_end_c5} :catchall_2e

    monitor-exit v1

    .line 2180
    return-void

    .line 2183
    :cond_c7
    :try_start_c7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 2184
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 2186
    if-nez v0, :cond_f5

    .line 2187
    const-string/jumbo v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failing move due to missing from volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V
    :try_end_f3
    .catchall {:try_start_c7 .. :try_end_f3} :catchall_2e

    monitor-exit v1

    .line 2189
    return-void

    .line 2190
    :cond_f5
    if-nez v2, :cond_117

    .line 2191
    :try_start_f7
    const-string/jumbo v0, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failing move due to missing to volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V
    :try_end_115
    .catchall {:try_start_f7 .. :try_end_115} :catchall_2e

    monitor-exit v1

    .line 2193
    return-void

    :cond_117
    monitor-exit v1

    .line 2199
    :try_start_118
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "move_storage"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v0, v4, v5

    iget-object v0, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_133
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_118 .. :try_end_133} :catch_134

    .line 2203
    return-void

    .line 2200
    :catch_134
    move-exception v0

    .line 2201
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 3

    .prologue
    .line 1759
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1921
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1922
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1924
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1926
    :try_start_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1927
    iput-object p2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1928
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap4(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1929
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_23

    monitor-exit v1

    .line 1931
    return-void

    .line 1925
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 8

    .prologue
    .line 1935
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1936
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1938
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1940
    :try_start_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1941
    iget v2, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v2, v3

    and-int v3, p2, p3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1942
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v2, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap4(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1943
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2a

    monitor-exit v1

    .line 1945
    return-void

    .line 1939
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .registers 4

    .prologue
    .line 1746
    const-string/jumbo v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1748
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1750
    return-void
.end method

.method public unlockUserKey(II[B[B)V
    .registers 10

    .prologue
    .line 2999
    const-string/jumbo v0, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 3000
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 3002
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 3005
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3006
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Secret required to unlock secure user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3010
    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "unlock_user_key"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 3011
    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 3010
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_37 .. :try_end_64} :catch_b5

    .line 3017
    :cond_64
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3018
    :try_start_67
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_bb

    monitor-exit v1

    .line 3020
    if-nez p1, :cond_b4

    .line 3021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sys.user."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ce_available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3022
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    :cond_b4
    return-void

    .line 3012
    :catch_b5
    move-exception v0

    .line 3013
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 3017
    :catchall_bb
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1812
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 1813
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 1815
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1818
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1821
    :try_start_17
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUnmountLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_52

    .line 1822
    :try_start_1a
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 1823
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1824
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v5, "mUnmountSignal"

    invoke-direct {p0, v4, v5}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 1825
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_4f

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_52

    .line 1828
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1833
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "unmount"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_4e} :catch_57

    .line 1837
    return-void

    .line 1821
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1

    throw v0
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_52

    .line 1827
    :catchall_52
    move-exception v0

    .line 1828
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1827
    throw v0

    .line 1834
    :catch_57
    move-exception v0

    .line 1835
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 13

    .prologue
    .line 2608
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v3

    .line 2612
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/StorageManagerService$ObbState;

    move-object v2, v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_37

    monitor-exit v3

    .line 2615
    if-eqz v2, :cond_3a

    .line 2617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2618
    new-instance v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 2619
    iget-object v4, v2, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move v7, p4

    .line 2618
    invoke-direct/range {v1 .. v7}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2620
    new-instance v2, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 2621
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2628
    :goto_36
    return-void

    .line 2611
    :catchall_37
    move-exception v1

    monitor-exit v3

    throw v1

    .line 2626
    :cond_3a
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 2401
    const-string/jumbo v1, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    .line 2402
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2403
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 2405
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2406
    :try_start_10
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_50

    move-result v2

    if-nez v2, :cond_1b

    .line 2407
    const/4 v0, -0x5

    monitor-exit v1

    return v0

    :cond_1b
    monitor-exit v1

    .line 2417
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 2421
    :try_start_23
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "unmount"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2422
    if-eqz p2, :cond_3f

    .line 2423
    const-string/jumbo v2, "force"

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2425
    :cond_3f
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_44} :catch_53

    .line 2435
    :goto_44
    if-nez v0, :cond_4f

    .line 2436
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2437
    :try_start_49
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_60

    monitor-exit v1

    .line 2440
    :cond_4f
    return v0

    .line 2405
    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2426
    :catch_53
    move-exception v0

    .line 2427
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2428
    const/16 v1, 0x195

    if-ne v0, v1, :cond_5e

    .line 2429
    const/4 v0, -0x7

    goto :goto_44

    .line 2431
    :cond_5e
    const/4 v0, -0x1

    goto :goto_44

    .line 2436
    :catchall_60
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 5

    .prologue
    .line 1785
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    .line 1786
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    .line 1742
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2767
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 2768
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to access the crypt keeper"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2771
    :cond_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CRYPT_KEEPER"

    .line 2772
    const-string/jumbo v2, "no permission to access the crypt keeper"

    .line 2771
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2775
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2778
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    .line 2786
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "verifypw"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v3, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 2787
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cryptfs verifypw => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2e .. :try_end_6d} :catch_6f

    move-result v0

    return v0

    .line 2789
    :catch_6f
    move-exception v0

    .line 2791
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    return v0
.end method

.method public waitForAsecScan()V
    .registers 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mAsecsScanned"

    invoke-direct {p0, v0, v1}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 803
    return-void
.end method
