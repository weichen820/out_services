.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$Injector;,
        Lcom/android/server/NetworkManagementService$LocalService;,
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;,
        Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;,
        Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z

.field public static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field public static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field public static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field public static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field public static final PERMISSION_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final PERMISSION_SYSTEM:Ljava/lang/String; = "SYSTEM"

.field static final SOFT_AP_COMMAND:Ljava/lang/String; = "softap"

.field static final SOFT_AP_COMMAND_SUCCESS:Ljava/lang/String; = "Ok"

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mContext:Landroid/content/Context;

.field private final mDaemonHandler:Landroid/os/Handler;

.field private volatile mDataSaverMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private final mFgHandler:Landroid/os/Handler;

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private volatile mFirewallEnabled:Z

.field private final mIdleTimerLock:Ljava/lang/Object;

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private mMobileActivityFromRadio:Z

.field private mNetdService:Landroid/net/INetd;

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuotaLock:Ljava/lang/Object;

.field private final mRulesLock:Ljava/lang/Object;

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private volatile mStrictEnabled:Z

.field private final mTetheringStatsProviders:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTetheringStatsProviders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/ITetheringStatsProvider;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;

.field private mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidCleartextPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQuotaLock"
    .end annotation
.end field

.field private mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidFirewallRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field

.field private mUidRejectOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRulesLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NetworkManagementService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/NetworkManagementService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NetworkManagementService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/NetworkManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/NetworkManagementService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NetworkManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/NetworkManagementService;IIJIZ)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 136
    const-string/jumbo v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    .line 133
    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 349
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 225
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 228
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 227
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 230
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 234
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 248
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 251
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 254
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 257
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 260
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 266
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 272
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 278
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 281
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 306
    iput v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 307
    iput v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 310
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 309
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 350
    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 351
    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 352
    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 353
    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    .line 354
    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 355
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 318
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 225
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 228
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 227
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 230
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 234
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 245
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 248
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 251
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 254
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 257
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 260
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 266
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 272
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 278
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 281
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 306
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 307
    iput v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 310
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 309
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 319
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;

    .line 331
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    .line 332
    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    invoke-direct {v1, p0, v6}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    const-string/jumbo v4, "NetdConnector"

    .line 333
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 332
    const/16 v3, 0xa

    const/16 v5, 0xa0

    move-object v2, p2

    .line 331
    invoke-direct/range {v0 .. v7}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 334
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "NetdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 336
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 339
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 341
    const-class v0, Lcom/android/server/NetworkManagementInternal;

    new-instance v1, Lcom/android/server/NetworkManagementService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$LocalService;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 343
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1

    .line 344
    :try_start_e9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;)V

    const-string/jumbo v3, "netd"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f7
    .catchall {:try_start_e9 .. :try_end_f7} :catchall_f9

    monitor-exit v1

    .line 346
    return-void

    .line 343
    :catchall_f9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private applyUidCleartextNetworkPolicy(II)V
    .registers 9

    .prologue
    .line 1797
    packed-switch p2, :pswitch_data_50

    .line 1808
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1799
    :pswitch_1d
    const-string/jumbo v0, "accept"

    .line 1812
    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "strict"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "set_uid_cleartext_policy"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1813
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_40} :catch_49

    .line 1817
    return-void

    .line 1802
    :pswitch_41
    const-string/jumbo v0, "log"

    goto :goto_20

    .line 1805
    :pswitch_45
    const-string/jumbo v0, "reject"

    goto :goto_20

    .line 1814
    :catch_49
    move-exception v0

    .line 1815
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1797
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_41
        :pswitch_45
    .end packed-switch
.end method

.method private closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2077
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    if-nez v0, :cond_4a

    .line 2079
    new-array v2, v7, [Landroid/net/UidRange;

    .line 2082
    new-instance v0, Landroid/net/UidRange;

    const/16 v1, 0x2710

    const v4, 0x7fffffff

    invoke-direct {v0, v1, v4}, Landroid/net/UidRange;-><init>(II)V

    aput-object v0, v2, v3

    .line 2085
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2086
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 2087
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v1, v0, [I

    move v0, v3

    .line 2088
    :goto_24
    array-length v6, v1

    if-ge v3, v6, :cond_38

    .line 2089
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ne v6, v7, :cond_35

    .line 2090
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aput v6, v1, v0
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_47

    .line 2091
    add-int/lit8 v0, v0, 0x1

    .line 2088
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_38
    monitor-exit v4

    .line 2102
    array-length v3, v1

    if-eq v0, v3, :cond_af

    .line 2103
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    move-object v1, v2

    .line 2127
    :goto_41
    :try_start_41
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, v1, v0}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRange;[I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_46} :catch_86
    .catch Landroid/os/ServiceSpecificException; {:try_start_41 .. :try_end_46} :catch_86

    .line 2131
    :goto_46
    return-void

    .line 2085
    :catchall_47
    move-exception v0

    monitor-exit v4

    throw v0

    .line 2107
    :cond_4a
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2108
    :try_start_4d
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 2109
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v1, v0, [Landroid/net/UidRange;

    move v2, v3

    move v0, v3

    .line 2110
    :goto_59
    array-length v6, v1

    if-ge v2, v6, :cond_73

    .line 2111
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_70

    .line 2112
    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2113
    new-instance v7, Landroid/net/UidRange;

    invoke-direct {v7, v6, v6}, Landroid/net/UidRange;-><init>(II)V

    aput-object v7, v1, v0
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_83

    .line 2114
    add-int/lit8 v0, v0, 0x1

    .line 2110
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_73
    monitor-exit v4

    .line 2119
    array-length v2, v1

    if-eq v0, v2, :cond_ad

    .line 2120
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 2123
    :goto_7d
    new-array v1, v3, [I

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_41

    .line 2107
    :catchall_83
    move-exception v0

    monitor-exit v4

    throw v0

    .line 2128
    :catch_86
    move-exception v0

    .line 2129
    const-string/jumbo v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error closing sockets after enabling chain "

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

    goto :goto_46

    :cond_ad
    move-object v0, v1

    goto :goto_7d

    :cond_af
    move-object v0, v1

    move-object v1, v2

    goto :goto_41
.end method

.method private connectNativeNetdService()V
    .registers 2

    .prologue
    .line 592
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 593
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 373
    const-string/jumbo v0, "netd"

    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/android/server/NetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    iget-object v1, v0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 361
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "NetworkManagement"

    const-string/jumbo v3, "Creating NetworkManagementService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_14
    iget-object v2, v0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 363
    sget-boolean v2, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "NetworkManagement"

    const-string/jumbo v3, "Awaiting socket connection"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_26
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 365
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_36

    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "Connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_36
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_43

    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "Connecting native netd service"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_43
    invoke-direct {v0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    .line 368
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_53

    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v2, "Connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_53
    return-object v0
.end method

.method private dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 7

    .prologue
    .line 2503
    const-string/jumbo v0, "UID firewall "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2504
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2505
    const-string/jumbo v0, " rule: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2507
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_37

    .line 2508
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2509
    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2511
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_34

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2513
    :cond_37
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    return-void
.end method

.method private dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .registers 7

    .prologue
    .line 2491
    const-string/jumbo v0, "UID bandwith control "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2492
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    const-string/jumbo v0, " rule: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2495
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_2a

    .line 2496
    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2497
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_27

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2499
    :cond_2a
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2500
    return-void
.end method

.method private static enforcePhoneOrSystemUid()V
    .registers 2

    .prologue
    .line 2344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2345
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_15

    .line 2346
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only available to AID_PHONE or AID_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2348
    :cond_15
    return-void
.end method

.method private static enforceSystemUid()V
    .registers 2

    .prologue
    .line 2337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2338
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 2339
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only available to AID_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_11
    return-void
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1355
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1356
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 1357
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1358
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1360
    :cond_27
    return-object v1
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .prologue
    .line 389
    monitor-enter p0

    .line 390
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_9

    .line 391
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 394
    :cond_9
    :try_start_9
    const-string/jumbo v0, "batterystats"

    .line 393
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 395
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 389
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFirewallChainState(I)Z
    .registers 4

    .prologue
    .line 2775
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2776
    :try_start_3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    .line 2775
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getFirewallRuleName(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 2290
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    if-nez v0, :cond_11

    .line 2291
    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 2292
    const-string/jumbo v0, "allow"

    .line 2303
    :goto_c
    return-object v0

    .line 2294
    :cond_d
    const-string/jumbo v0, "deny"

    goto :goto_c

    .line 2297
    :cond_11
    const/4 v0, 0x2

    if-ne p2, v0, :cond_18

    .line 2298
    const-string/jumbo v0, "deny"

    goto :goto_c

    .line 2300
    :cond_18
    const-string/jumbo v0, "allow"

    goto :goto_c
.end method

.method private getFirewallType(I)I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2180
    packed-switch p1, :pswitch_data_12

    .line 2188
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_b
    return v0

    .line 2182
    :pswitch_c
    return v1

    .line 2184
    :pswitch_d
    return v0

    .line 2186
    :pswitch_e
    return v0

    :cond_f
    move v0, v1

    .line 2188
    goto :goto_b

    .line 2180
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method private getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .registers 5

    .prologue
    .line 2307
    packed-switch p1, :pswitch_data_2a

    .line 2317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2309
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2311
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2313
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2315
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 2307
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_20
        :pswitch_1d
        :pswitch_23
    .end packed-switch
.end method

.method private invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V
    .registers 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 419
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 421
    :try_start_a
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p1, v0}, Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_15} :catch_26
    .catchall {:try_start_a .. :try_end_15} :catchall_1f

    .line 419
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 426
    :cond_19
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 428
    return-void

    .line 425
    :catchall_1f
    move-exception v0

    .line 426
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 425
    throw v0

    .line 422
    :catch_26
    move-exception v0

    goto :goto_15
.end method

.method private isNetworkRestrictedInternal(I)Z
    .registers 7

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 2739
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2740
    const/4 v0, 0x2

    :try_start_6
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2741
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v2, :cond_3b

    .line 2742
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_39

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " restricted because of app standby mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_115

    :cond_39
    monitor-exit v1

    .line 2743
    return v4

    .line 2745
    :cond_3b
    const/4 v0, 0x1

    :try_start_3c
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2746
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq v0, v4, :cond_71

    .line 2747
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_6f

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " restricted because of device idle mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_3c .. :try_end_6f} :catchall_115

    :cond_6f
    monitor-exit v1

    .line 2748
    return v4

    .line 2750
    :cond_71
    const/4 v0, 0x3

    :try_start_72
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 2751
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq v0, v4, :cond_a7

    .line 2752
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " restricted because of power saver mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_72 .. :try_end_a5} :catchall_115

    :cond_a5
    monitor-exit v1

    .line 2753
    return v4

    .line 2755
    :cond_a7
    :try_start_a7
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 2756
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_db

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " restricted because of no metered data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2757
    const-string/jumbo v3, " in the background"

    .line 2756
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_a7 .. :try_end_db} :catchall_115

    :cond_db
    monitor-exit v1

    .line 2758
    return v4

    .line 2760
    :cond_dd
    :try_start_dd
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_112

    .line 2761
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_110

    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " restricted because of data saver mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catchall {:try_start_dd .. :try_end_110} :catchall_115

    :cond_110
    monitor-exit v1

    .line 2762
    return v4

    .line 2764
    :cond_112
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2739
    :catchall_115
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_17807(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_18114(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_18321(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_18706(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_18910(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_21126(IZJLandroid/net/INetworkManagementEventObserver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-interface {p4, v0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_29429(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_29657(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_29911(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_30184(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_NetworkManagementService_30264(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V

    return-void
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1364
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "ipfwd"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1f

    const-string/jumbo v0, "add"

    :goto_d
    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1366
    :try_start_19
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_19 .. :try_end_1e} :catch_23

    .line 1370
    return-void

    .line 1364
    :cond_1f
    const-string/jumbo v0, "remove"

    goto :goto_d

    .line 1367
    :catch_23
    move-exception v0

    .line 1368
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "interface"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_26

    .line 2571
    return-void

    .line 2568
    :catch_26
    move-exception v0

    .line 2569
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1386
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v0, "nat"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1388
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 1390
    if-nez v0, :cond_26

    .line 1391
    const-string/jumbo v0, "0"

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1406
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_25} :catch_79

    .line 1410
    return-void

    .line 1396
    :cond_26
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    .line 1395
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->excludeLinkLocal(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1397
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1398
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 1400
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v4

    .line 1399
    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 1401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3d

    .line 1407
    :catch_79
    move-exception v0

    .line 1408
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 9

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "route"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1145
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1147
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_68

    .line 1162
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_40} :catch_61

    .line 1166
    return-void

    .line 1149
    :sswitch_41
    invoke-virtual {p3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1150
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3b

    .line 1154
    :sswitch_53
    const-string/jumbo v1, "unreachable"

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3b

    .line 1157
    :sswitch_5a
    const-string/jumbo v1, "throw"

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_3b

    .line 1163
    :catch_61
    move-exception v0

    .line 1164
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1147
    nop

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_41
        0x7 -> :sswitch_53
        0x9 -> :sswitch_5a
    .end sparse-switch
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 5

    .prologue
    .line 728
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 729
    return-void
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 5

    .prologue
    .line 721
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 722
    return-void
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 449
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 450
    return-void
.end method

.method private notifyInterfaceClassActivity(IIJIZ)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 476
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    .line 477
    if-eqz v3, :cond_1d

    .line 478
    if-nez p6, :cond_61

    .line 479
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-eqz v2, :cond_10

    .line 483
    iget p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 488
    :cond_10
    :goto_10
    iget v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    if-eq v2, p2, :cond_1d

    .line 489
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 491
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJI)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_6d

    .line 497
    :cond_1d
    :goto_1d
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 498
    iget v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    if-eq v2, p2, :cond_30

    .line 499
    iput p2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 501
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    invoke-interface {v2, p2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJI)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_6b

    .line 507
    :cond_30
    :goto_30
    const/4 v2, 0x2

    if-eq p2, v2, :cond_64

    .line 508
    const/4 v2, 0x3

    if-ne p2, v2, :cond_66

    move v2, v0

    .line 510
    :goto_37
    if-eqz v3, :cond_41

    if-nez p6, :cond_41

    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_49

    .line 516
    :cond_41
    new-instance v3, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;

    invoke-direct {v3, v2, p1, p3, p4}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$4;-><init>(ZIJ)V

    invoke-direct {p0, v3}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 521
    :cond_49
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 522
    :try_start_4c
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 527
    :goto_54
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-eq v2, v0, :cond_6f

    .line 528
    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_68

    :goto_5a
    monitor-exit v3

    .line 532
    if-eqz v0, :cond_60

    .line 533
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    .line 535
    :cond_60
    return-void

    .line 486
    :cond_61
    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    goto :goto_10

    :cond_64
    move v2, v0

    .line 507
    goto :goto_37

    :cond_66
    move v2, v1

    .line 508
    goto :goto_37

    .line 521
    :catchall_68
    move-exception v0

    monitor-exit v3

    throw v0

    .line 502
    :catch_6b
    move-exception v2

    goto :goto_30

    .line 492
    :catch_6d
    move-exception v2

    goto :goto_1d

    :cond_6f
    move v0, v1

    goto :goto_5a

    :cond_71
    move v0, v2

    goto :goto_54
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 735
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$2;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$2;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 736
    return-void
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 442
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 443
    return-void
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 462
    return-void
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 434
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 435
    return-void
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 468
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 469
    return-void
.end method

.method private notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .registers 5

    .prologue
    .line 742
    const-string/jumbo v0, "updated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 743
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 747
    :goto_12
    return-void

    .line 745
    :cond_13
    new-instance v0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    goto :goto_12
.end method

.method private prepareNativeDaemon()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 601
    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    .line 604
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/net/xt_qtaguid/ctrl"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 607
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v5

    .line 609
    if-eqz v0, :cond_c4

    .line 610
    :try_start_15
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "enabling bandwidth control"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_b5

    .line 612
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "bandwidth"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "enable"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v0, v1, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1e .. :try_end_32} :catch_b8
    .catchall {:try_start_1e .. :try_end_32} :catchall_b5

    .line 621
    :goto_32
    :try_start_32
    const-string/jumbo v1, "net.qtaguid_enabled"

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v0, :cond_cf

    const-string/jumbo v0, "1"

    :goto_3c
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_b5

    .line 624
    :try_start_3f
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "strict"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "enable"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v0, v1, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3f .. :try_end_53} :catch_d4
    .catchall {:try_start_3f .. :try_end_53} :catchall_b5

    .line 630
    :goto_53
    :try_start_53
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 632
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 633
    if-lez v0, :cond_e0

    .line 634
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_85

    const-string/jumbo v1, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Pushing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " active quota rules"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_85
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 636
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 637
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_95
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 638
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_b4
    .catchall {:try_start_53 .. :try_end_b4} :catchall_b5

    goto :goto_95

    .line 607
    :catchall_b5
    move-exception v0

    monitor-exit v5

    throw v0

    .line 614
    :catch_b8
    move-exception v0

    .line 615
    :try_start_b9
    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v4, "problem enabling bandwidth controls"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 618
    :cond_c4
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "not enabling bandwidth control"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 621
    :cond_cf
    const-string/jumbo v0, "0"

    goto/16 :goto_3c

    .line 626
    :catch_d4
    move-exception v0

    .line 627
    const-string/jumbo v1, "NetworkManagement"

    const-string/jumbo v4, "Failed strict enable"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_53

    .line 642
    :cond_e0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 643
    if-lez v0, :cond_13d

    .line 644
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_10d

    const-string/jumbo v1, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Pushing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " active alert rules"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_10d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 646
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 647
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 648
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_11d

    .line 654
    :cond_13d
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_140
    .catchall {:try_start_b9 .. :try_end_140} :catchall_b5

    .line 655
    :try_start_140
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 656
    if-lez v0, :cond_278

    .line 657
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_16d

    const-string/jumbo v1, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Pushing "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " UIDs to metered blacklist rules"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_16d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 659
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    move-object v4, v0

    .line 662
    :goto_177
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 663
    if-lez v0, :cond_275

    .line 664
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_1a4

    const-string/jumbo v1, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Pushing "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " UIDs to metered whitelist rules"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_1a4
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 666
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    :try_end_1ad
    .catchall {:try_start_140 .. :try_end_1ad} :catchall_1c6

    move-object v1, v0

    :goto_1ae
    :try_start_1ae
    monitor-exit v6

    .line 669
    if-eqz v4, :cond_1c9

    move v0, v2

    .line 670
    :goto_1b2
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1c9

    .line 671
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 672
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    .line 671
    invoke-virtual {p0, v3, v6}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b2

    .line 654
    :catchall_1c6
    move-exception v0

    monitor-exit v6

    throw v0

    .line 675
    :cond_1c9
    if-eqz v1, :cond_1e0

    move v0, v2

    .line 676
    :goto_1cc
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e0

    .line 677
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 678
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 677
    invoke-virtual {p0, v3, v4}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_1cc

    .line 682
    :cond_1e0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 683
    if-lez v0, :cond_22b

    .line 684
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_20d

    const-string/jumbo v1, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pushing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " active UID cleartext policies"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_20d
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 686
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    move v0, v2

    .line 687
    :goto_217
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_22b

    .line 688
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_217

    .line 692
    :cond_22b
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 694
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 695
    const-string/jumbo v0, "standby "

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 696
    const-string/jumbo v0, "dozable "

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 697
    const-string/jumbo v0, "powersave "

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 700
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x3

    filled-new-array {v0, v1, v3}, [I

    move-result-object v1

    .line 701
    array-length v3, v1

    move v0, v2

    :goto_255
    if-ge v0, v3, :cond_266

    aget v2, v1, v0

    .line 702
    invoke-direct {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v4

    if-eqz v4, :cond_263

    .line 703
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_263
    .catchall {:try_start_1ae .. :try_end_263} :catchall_b5

    .line 701
    :cond_263
    add-int/lit8 v0, v0, 0x1

    goto :goto_255

    :cond_266
    monitor-exit v5

    .line 708
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v0, :cond_272

    .line 710
    :try_start_26b
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_272
    .catch Landroid/os/RemoteException; {:try_start_26b .. :try_end_272} :catch_273

    .line 715
    :cond_272
    :goto_272
    return-void

    .line 711
    :catch_273
    move-exception v0

    goto :goto_272

    :cond_275
    move-object v1, v3

    goto/16 :goto_1ae

    :cond_278
    move-object v4, v3

    goto/16 :goto_177
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_49
    .catchall {:try_start_6 .. :try_end_b} :catchall_3b

    .line 1174
    :try_start_b
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1175
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1180
    :goto_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_31

    .line 1181
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_2a
    .catchall {:try_start_b .. :try_end_29} :catchall_44

    goto :goto_1a

    .line 1183
    :catch_2a
    move-exception v1

    .line 1186
    :goto_2b
    if-eqz v0, :cond_30

    .line 1188
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_39

    .line 1193
    :cond_30
    :goto_30
    return-object v2

    .line 1186
    :cond_31
    if-eqz v0, :cond_30

    .line 1188
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_30

    .line 1189
    :catch_37
    move-exception v0

    goto :goto_30

    :catch_39
    move-exception v0

    goto :goto_30

    .line 1185
    :catchall_3b
    move-exception v0

    .line 1186
    :goto_3c
    if-eqz v1, :cond_41

    .line 1188
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 1185
    :cond_41
    :goto_41
    throw v0

    .line 1189
    :catch_42
    move-exception v1

    goto :goto_41

    .line 1185
    :catchall_44
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3c

    .line 1183
    :catch_49
    move-exception v0

    move-object v0, v1

    goto :goto_2b
.end method

.method private reportNetworkActive()V
    .registers 4

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2407
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 2409
    :try_start_a
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkActivityListener;

    invoke-interface {v0}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_15} :catch_26
    .catchall {:try_start_a .. :try_end_15} :catchall_1f

    .line 2407
    :goto_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 2414
    :cond_19
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2416
    return-void

    .line 2413
    :catchall_1f
    move-exception v0

    .line 2414
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2413
    throw v0

    .line 2410
    :catch_26
    move-exception v0

    goto :goto_15
.end method

.method private setFirewallChainState(IZ)V
    .registers 5

    .prologue
    .line 2769
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2770
    :try_start_3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 2772
    return-void

    .line 2769
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setFirewallUidRuleLocked(III)V
    .registers 9

    .prologue
    .line 2250
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2252
    :try_start_6
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "firewall"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "set_uid_rule"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 2253
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 2252
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_2c} :catch_2d

    .line 2258
    :cond_2c
    return-void

    .line 2254
    :catch_2d
    move-exception v0

    .line 2255
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private setUidOnMeteredNetworkList(IZZ)V
    .registers 12

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_10

    return-void

    .line 1708
    :cond_10
    if-eqz p2, :cond_2f

    const-string/jumbo v0, "naughtyapps"

    move-object v2, v0

    .line 1709
    :goto_16
    if-eqz p3, :cond_34

    const-string/jumbo v0, "add"

    .line 1711
    :goto_1b
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1714
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_3e

    .line 1715
    if-eqz p2, :cond_38

    :try_start_23
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 1716
    :goto_25
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_3b

    move-result v5

    :try_start_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_3e

    .line 1718
    if-ne v5, p3, :cond_41

    monitor-exit v3

    .line 1720
    return-void

    .line 1708
    :cond_2f
    const-string/jumbo v0, "niceapps"

    move-object v2, v0

    goto :goto_16

    .line 1709
    :cond_34
    const-string/jumbo v0, "remove"

    goto :goto_1b

    .line 1715
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_3b

    goto :goto_25

    .line 1714
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v4

    throw v0
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_3e

    .line 1711
    :catchall_3e
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1723
    :cond_41
    :try_start_41
    const-string/jumbo v4, "inetd bandwidth"

    const-wide/32 v6, 0x200000

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_3e

    .line 1725
    :try_start_4a
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "bandwidth"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1726
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_73
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4a .. :try_end_73} :catch_89
    .catchall {:try_start_4a .. :try_end_73} :catchall_8f

    .line 1727
    if-eqz p3, :cond_82

    .line 1728
    const/4 v0, 0x1

    :try_start_76
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_86

    :goto_79
    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_79 .. :try_end_7a} :catch_89
    .catchall {:try_start_79 .. :try_end_7a} :catchall_8f

    .line 1736
    const-wide/32 v0, 0x200000

    :try_start_7d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_3e

    monitor-exit v3

    .line 1739
    return-void

    .line 1730
    :cond_82
    :try_start_82
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_79

    .line 1726
    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v2

    throw v0
    :try_end_89
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_87 .. :try_end_89} :catch_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_8f

    .line 1733
    :catch_89
    move-exception v0

    .line 1734
    :try_start_8a
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_8f

    .line 1735
    :catchall_8f
    move-exception v0

    .line 1736
    const-wide/32 v4, 0x200000

    :try_start_93
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1735
    throw v0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_3e
.end method

.method private syncFirewallChainLocked(ILjava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 569
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 576
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v3

    .line 577
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_5e

    monitor-exit v1

    .line 579
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_61

    .line 583
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pushing "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " active firewall "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 584
    const-string/jumbo v4, "UID rules"

    .line 583
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_4a
    :goto_4a
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 586
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 569
    :catchall_5e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 589
    :cond_61
    return-void
.end method

.method private updateFirewallUidRuleLocked(III)Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 2262
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2263
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 2265
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2266
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_4c

    .line 2267
    const-string/jumbo v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oldRule = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2268
    const-string/jumbo v5, ", newRule="

    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2268
    const-string/jumbo v5, " for uid="

    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2268
    const-string/jumbo v5, " on chain "

    .line 2267
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :cond_4c
    if-ne v2, p3, :cond_5d

    .line 2271
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v2, "!!!!! Skipping change"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_76

    :cond_5b
    monitor-exit v1

    .line 2273
    return v6

    .line 2276
    :cond_5d
    :try_start_5d
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v3

    .line 2277
    invoke-direct {p0, p1, v2}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v2

    .line 2279
    if-nez p3, :cond_72

    .line 2280
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2284
    :goto_6a
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_76

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit v1

    return v0

    .line 2282
    :cond_72
    :try_start_72
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_6a

    .line 2262
    :catchall_76
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addIdleTimer(Ljava/lang/String;II)V
    .registers 10

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "Adding idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_18
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1475
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1476
    if-eqz v0, :cond_2d

    .line 1478
    iget v2, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_74

    monitor-exit v1

    .line 1479
    return-void

    .line 1483
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "idletimer"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "add"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 1484
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 1483
    invoke-virtual {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2d .. :try_end_4f} :catch_6e
    .catchall {:try_start_2d .. :try_end_4f} :catchall_74

    .line 1488
    :try_start_4f
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v2, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 1494
    :cond_62
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/NetworkManagementService$1;

    invoke-direct {v2, p0, p3}, Lcom/android/server/NetworkManagementService$1;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_74

    monitor-exit v1

    .line 1502
    return-void

    .line 1485
    :catch_6e
    move-exception v0

    .line 1486
    :try_start_6f
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_74

    .line 1474
    :catchall_74
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2703
    const-string/jumbo v0, "add"

    const-string/jumbo v1, "local"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 2706
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2707
    const-string/jumbo v2, "add"

    const-string/jumbo v3, "local"

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    goto :goto_d

    .line 2710
    :cond_29
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 2556
    const-string/jumbo v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .registers 9

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v1, "network"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "route"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "legacy"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "add"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2580
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v1

    .line 2581
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2583
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 2584
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2588
    :cond_79
    :try_start_79
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_79 .. :try_end_7e} :catch_7f

    .line 2592
    return-void

    .line 2589
    :catch_7f
    move-exception v0

    .line 2590
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .registers 6

    .prologue
    .line 1130
    const-string/jumbo v0, "add"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1131
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 9

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 1984
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const/16 v1, 0xd

    new-array v4, v1, [Ljava/lang/Object;

    .line 1986
    const-string/jumbo v1, "users"

    aput-object v1, v4, v0

    .line 1987
    const-string/jumbo v1, "add"

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 1988
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v4, v3

    move v1, v2

    .line 1991
    :goto_24
    array-length v3, p2

    if-ge v0, v3, :cond_51

    .line 1992
    add-int/lit8 v3, v1, 0x1

    aget-object v5, p2, v0

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1993
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_39

    array-length v1, v4

    if-ne v3, v1, :cond_49

    .line 1995
    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "network"

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_45
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_45} :catch_4b

    move v1, v2

    .line 1991
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_49
    move v1, v3

    .line 1993
    goto :goto_46

    .line 1996
    :catch_4b
    move-exception v0

    .line 1997
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2002
    :cond_51
    return-void
.end method

.method public allowProtect(I)V
    .registers 7

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "protect"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "allow"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_29} :catch_2a

    .line 2688
    return-void

    .line 2685
    :catch_2a
    move-exception v0

    .line 2686
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "pppd"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "attach"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 1449
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 1450
    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 1451
    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 1452
    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 1448
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_4b} :catch_4c

    .line 1456
    return-void

    .line 1453
    :catch_4c
    move-exception v0

    .line 1454
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public clearDefaultNetId()V
    .registers 6

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "clear"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_22} :catch_23

    .line 2614
    return-void

    .line 2611
    :catch_23
    move-exception v0

    .line 2612
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "clearaddrs"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_20

    .line 1086
    return-void

    .line 1083
    :catch_20
    move-exception v0

    .line 1084
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public clearPermission([I)V
    .registers 8

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 2658
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    const/16 v1, 0xd

    new-array v4, v1, [Ljava/lang/Object;

    .line 2661
    const-string/jumbo v1, "permission"

    aput-object v1, v4, v0

    .line 2662
    const-string/jumbo v1, "user"

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 2663
    const-string/jumbo v1, "clear"

    const/4 v3, 0x2

    aput-object v1, v4, v3

    move v1, v2

    .line 2666
    :goto_23
    array-length v3, p1

    if-ge v0, v3, :cond_50

    .line 2667
    add-int/lit8 v3, v1, 0x1

    aget v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2668
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_38

    array-length v1, v4

    if-ne v3, v1, :cond_48

    .line 2670
    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "network"

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_44} :catch_4a

    move v1, v2

    .line 2666
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_48
    move v1, v3

    .line 2668
    goto :goto_45

    .line 2671
    :catch_4a
    move-exception v0

    .line 2672
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2677
    :cond_50
    return-void
.end method

.method public createPhysicalNetwork(ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    if-eqz p2, :cond_29

    .line 2522
    :try_start_d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "create"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2529
    :goto_28
    return-void

    .line 2524
    :cond_29
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "create"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_41} :catch_42

    goto :goto_28

    .line 2526
    :catch_42
    move-exception v0

    .line 2527
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public createVirtualNetwork(IZZ)V
    .registers 9

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "network"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "create"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string/jumbo v0, "vpn"

    const/4 v4, 0x2

    aput-object v0, v3, v4

    if-eqz p2, :cond_3a

    const-string/jumbo v0, "1"

    :goto_2b
    const/4 v4, 0x3

    aput-object v0, v3, v4

    .line 2537
    if-eqz p3, :cond_3e

    const-string/jumbo v0, "1"

    :goto_33
    const/4 v4, 0x4

    aput-object v0, v3, v4

    .line 2536
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2541
    return-void

    .line 2536
    :cond_3a
    const-string/jumbo v0, "0"

    goto :goto_2b

    .line 2537
    :cond_3e
    const-string/jumbo v0, "0"
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_41} :catch_42

    goto :goto_33

    .line 2538
    :catch_42
    move-exception v0

    .line 2539
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public denyProtect(I)V
    .registers 7

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "protect"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "deny"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_29} :catch_2a

    .line 2699
    return-void

    .line 2696
    :catch_2a
    move-exception v0

    .line 2697
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public detachPppd(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "pppd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "detach"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_20

    .line 1466
    return-void

    .line 1463
    :catch_20
    move-exception v0

    .line 1464
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "ipv6"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "disable"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_26

    .line 1115
    return-void

    .line 1112
    :catch_26
    move-exception v0

    .line 1113
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    :try_start_b
    const-string/jumbo v0, "disable"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_11} :catch_12

    .line 1430
    return-void

    .line 1427
    :catch_12
    move-exception v0

    .line 1428
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NetworkManagement"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 2430
    :cond_c
    const-string/jumbo v0, "NetworkManagementService NativeDaemonConnector Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2431
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2432
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2434
    const-string/jumbo v0, "Bandwidth control enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2435
    const-string/jumbo v0, "mMobileActivityFromRadio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2436
    const-string/jumbo v0, " mLastPowerStateFromRadio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2437
    const-string/jumbo v0, "mNetworkActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2439
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2440
    :try_start_49
    const-string/jumbo v0, "Active quota ifaces: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2441
    const-string/jumbo v0, "Active alert ifaces: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2442
    const-string/jumbo v0, "Data saver mode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2443
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_75
    .catchall {:try_start_49 .. :try_end_75} :catchall_145

    .line 2444
    :try_start_75
    const-string/jumbo v0, "blacklist"

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2445
    const-string/jumbo v0, "whitelist"

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_142

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_145

    monitor-exit v1

    .line 2449
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2450
    :try_start_8a
    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2452
    const-string/jumbo v0, "UID firewall standby chain enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2453
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    .line 2452
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2454
    const-string/jumbo v0, "standby"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2456
    const-string/jumbo v0, "UID firewall dozable chain enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2457
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    .line 2456
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2458
    const-string/jumbo v0, "dozable"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UID firewall powersave chain enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2461
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    .line 2460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2462
    const-string/jumbo v0, "powersave"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    :try_end_e2
    .catchall {:try_start_8a .. :try_end_e2} :catchall_148

    monitor-exit v1

    .line 2465
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2466
    :try_start_e6
    const-string/jumbo v0, "Idle timers:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2467
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2468
    const-string/jumbo v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2469
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2470
    const-string/jumbo v1, "    timeout="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2471
    const-string/jumbo v1, " type="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2472
    const-string/jumbo v1, " networkCount="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V
    :try_end_13e
    .catchall {:try_start_e6 .. :try_end_13e} :catchall_13f

    goto :goto_f6

    .line 2465
    :catchall_13f
    move-exception v0

    monitor-exit v2

    throw v0

    .line 2443
    :catchall_142
    move-exception v0

    :try_start_143
    monitor-exit v2

    throw v0
    :try_end_145
    .catchall {:try_start_143 .. :try_end_145} :catchall_145

    .line 2439
    :catchall_145
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2449
    :catchall_148
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_14b
    monitor-exit v2

    .line 2476
    const-string/jumbo v0, "Firewall enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2477
    const-string/jumbo v0, "Netd service status: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2478
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_168

    .line 2479
    const-string/jumbo v0, "disconnected"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2488
    :goto_167
    return-void

    .line 2482
    :cond_168
    :try_start_168
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result v0

    .line 2483
    if-eqz v0, :cond_17f

    const-string/jumbo v0, "alive"

    :goto_173
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_176
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_176} :catch_177

    goto :goto_167

    .line 2484
    :catch_177
    move-exception v0

    .line 2485
    const-string/jumbo v0, "unreachable"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_167

    .line 2483
    :cond_17f
    :try_start_17f
    const-string/jumbo v0, "dead"
    :try_end_182
    .catch Landroid/os/RemoteException; {:try_start_17f .. :try_end_182} :catch_177

    goto :goto_173
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "ipv6"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "enable"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_26

    .line 1096
    return-void

    .line 1093
    :catch_26
    move-exception v0

    .line 1094
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    :try_start_b
    const-string/jumbo v0, "enable"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_11} :catch_12

    .line 1420
    return-void

    .line 1417
    :catch_12
    move-exception v0

    .line 1418
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "dns"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "list"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    const/16 v1, 0x70

    .line 1347
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_28} :catch_2a

    move-result-object v0

    return-object v0

    .line 1349
    :catch_2a
    move-exception v0

    .line 1350
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getFirewallChainName(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 2322
    packed-switch p1, :pswitch_data_2e

    .line 2332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2324
    :pswitch_1d
    const-string/jumbo v0, "standby"

    return-object v0

    .line 2326
    :pswitch_21
    const-string/jumbo v0, "dozable"

    return-object v0

    .line 2328
    :pswitch_25
    const-string/jumbo v0, "powersave"

    return-object v0

    .line 2330
    :pswitch_29
    const-string/jumbo v0, "none"

    return-object v0

    .line 2322
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_29
        :pswitch_21
        :pswitch_1d
        :pswitch_25
    .end packed-switch
.end method

.method getInjector()Lcom/android/server/NetworkManagementService$Injector;
    .registers 2

    .prologue
    .line 2790
    new-instance v0, Lcom/android/server/NetworkManagementService$Injector;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementService$Injector;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-object v0
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 985
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :try_start_c
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "getcfg"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_20
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_20} :catch_81

    move-result-object v3

    .line 994
    const/16 v0, 0xd5

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 997
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1001
    :try_start_2f
    new-instance v5, Landroid/net/InterfaceConfiguration;

    invoke-direct {v5}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1002
    const-string/jumbo v0, " "

    invoke-virtual {v4, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/util/NoSuchElementException; {:try_start_2f .. :try_end_3e} :catch_66

    .line 1003
    const/4 v2, 0x0

    .line 1006
    :try_start_3f
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_46} :catch_87
    .catch Ljava/util/NoSuchElementException; {:try_start_3f .. :try_end_46} :catch_66

    move-result-object v0

    move-object v2, v0

    .line 1012
    :goto_48
    :try_start_48
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4f} :catch_92
    .catch Ljava/util/NoSuchElementException; {:try_start_48 .. :try_end_4f} :catch_66

    move-result v0

    .line 1017
    :goto_50
    :try_start_50
    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, v2, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1018
    :goto_58
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1019
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/util/NoSuchElementException; {:try_start_50 .. :try_end_65} :catch_66

    goto :goto_58

    .line 1021
    :catch_66
    move-exception v0

    .line 1022
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid response from daemon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :catch_81
    move-exception v0

    .line 991
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1007
    :catch_87
    move-exception v0

    .line 1008
    :try_start_88
    const-string/jumbo v6, "NetworkManagement"

    const-string/jumbo v7, "Failed to parse ipaddr"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1013
    :catch_92
    move-exception v0

    .line 1014
    const-string/jumbo v6, "NetworkManagement"

    const-string/jumbo v7, "Failed to parse prefixLength"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catch Ljava/util/NoSuchElementException; {:try_start_88 .. :try_end_9c} :catch_66

    move v0, v1

    goto :goto_50

    .line 1024
    :cond_9e
    return-object v5
.end method

.method public getIpForwardingEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "ipfwd"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "status"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_2e

    move-result-object v0

    .line 1228
    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1229
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1223
    :catch_2e
    move-exception v0

    .line 1224
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public getNetdService()Landroid/net/INetd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 963
    if-eqz v0, :cond_7

    .line 965
    :try_start_4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_a

    .line 969
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    return-object v0

    .line 966
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .registers 6

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_16

    move-result-object v0

    return-object v0

    .line 1558
    :catch_16
    move-exception v0

    .line 1559
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .registers 4

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    return-object v0

    .line 1538
    :catch_12
    move-exception v0

    .line 1539
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .registers 4

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v0

    return-object v0

    .line 1548
    :catch_12
    move-exception v0

    .line 1549
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .registers 10

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1924
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v3

    .line 1925
    :try_start_18
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ITetheringStatsProvider;
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_65

    .line 1927
    :try_start_2e
    invoke-interface {v0, p1}, Landroid/net/ITetheringStatsProvider;->getTetherStats(I)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_36
    .catchall {:try_start_2e .. :try_end_35} :catchall_65

    goto :goto_22

    .line 1928
    :catch_36
    move-exception v1

    .line 1929
    :try_start_37
    const-string/jumbo v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Problem reading tethering stats from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1930
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1929
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1930
    const-string/jumbo v6, ": "

    .line 1929
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_37 .. :try_end_64} :catchall_65

    goto :goto_22

    .line 1924
    :catchall_65
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_68
    monitor-exit v3

    .line 1934
    return-object v2
.end method

.method public getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    .registers 6

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_15

    move-result-object v0

    return-object v0

    .line 1864
    :catch_15
    move-exception v0

    .line 1865
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBandwidthControlEnabled()Z
    .registers 4

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    return v0
.end method

.method public isClatdStarted(Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "clatd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "status"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_31

    move-result-object v0

    .line 2383
    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2384
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2379
    :catch_31
    move-exception v0

    .line 2380
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public isFirewallEnabled()Z
    .registers 2

    .prologue
    .line 2040
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforcePhoneOrSystemUid()V

    .line 2041
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .registers 3

    .prologue
    .line 2399
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 2400
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_d

    .line 2399
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNetworkRestricted(I)Z
    .registers 5

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringStarted()Z
    .registers 6

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "status"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_2e

    move-result-object v0

    .line 1282
    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1283
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1277
    :catch_2e
    move-exception v0

    .line 1278
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public listInterfaces()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "list"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    const/16 v1, 0x6e

    .line 976
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_22} :catch_24

    move-result-object v0

    return-object v0

    .line 978
    :catch_24
    move-exception v0

    .line 979
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "interface"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "list"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 1319
    const/16 v1, 0x6f

    .line 1317
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_28} :catch_2a

    move-result-object v0

    return-object v0

    .line 1320
    :catch_2a
    move-exception v0

    .line 1321
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public listTtys()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "list_ttys"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    const/16 v1, 0x71

    .line 1436
    invoke-static {v0, v1}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_1e

    move-result-object v0

    return-object v0

    .line 1438
    :catch_1e
    move-exception v0

    .line 1439
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 2422
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 2424
    :cond_9
    return-void
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2390
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 403
    return-void
.end method

.method public registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.NETWORK_STACK"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1

    .line 542
    :try_start_11
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 544
    return-void

    .line 541
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "Removing idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_18
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1511
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1512
    if-eqz v0, :cond_2d

    iget v2, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_6c

    if-lez v2, :cond_2f

    :cond_2d
    monitor-exit v1

    .line 1513
    return-void

    .line 1517
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "idletimer"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "remove"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 1518
    iget v5, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget v5, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 1517
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2f .. :try_end_55} :catch_66
    .catchall {:try_start_2f .. :try_end_55} :catchall_6c

    .line 1522
    :try_start_55
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/NetworkManagementService$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/NetworkManagementService$2;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_6c

    monitor-exit v1

    .line 1531
    return-void

    .line 1519
    :catch_66
    move-exception v0

    .line 1520
    :try_start_67
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_6c

    .line 1510
    :catchall_6c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_10

    return-void

    .line 1670
    :cond_10
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1671
    :try_start_13
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_3e

    move-result v0

    if-nez v0, :cond_1d

    monitor-exit v1

    .line 1673
    return-void

    .line 1678
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "removeinterfacealert"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1679
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_36} :catch_38
    .catchall {:try_start_1d .. :try_end_36} :catchall_3e

    monitor-exit v1

    .line 1684
    return-void

    .line 1680
    :catch_38
    move-exception v0

    .line 1681
    :try_start_39
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3e

    .line 1670
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2714
    const-string/jumbo v0, "remove"

    const-string/jumbo v1, "local"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 2561
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_10

    return-void

    .line 1605
    :cond_10
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1606
    :try_start_13
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_8c

    move-result v0

    if-nez v0, :cond_1d

    monitor-exit v1

    .line 1608
    return-void

    .line 1611
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_8c

    .line 1616
    :try_start_27
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "removeiquota"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_3b} :catch_8f
    .catchall {:try_start_27 .. :try_end_3b} :catchall_8c

    .line 1621
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_8c

    .line 1622
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ITetheringStatsProvider;
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_89

    .line 1624
    const-wide/16 v4, -0x1

    :try_start_56
    invoke-interface {v0, p1, v4, v5}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_89

    goto :goto_48

    .line 1625
    :catch_5a
    move-exception v4

    .line 1626
    :try_start_5b
    const-string/jumbo v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Problem removing tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1627
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1626
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1627
    const-string/jumbo v6, ": "

    .line 1626
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_5b .. :try_end_88} :catchall_89

    goto :goto_48

    .line 1621
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v2

    throw v0
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_8c

    .line 1605
    :catchall_8c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1617
    :catch_8f
    move-exception v0

    .line 1618
    :try_start_90
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_8c

    monitor-exit v1

    .line 1632
    return-void
.end method

.method public removeNetwork(I)V
    .registers 7

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "destroy"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_23} :catch_24

    .line 2552
    return-void

    .line 2549
    :catch_24
    move-exception v0

    .line 2550
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .registers 6

    .prologue
    .line 1135
    const-string/jumbo v0, "remove"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1136
    return-void
.end method

.method public removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2719
    const/4 v0, 0x0

    .line 2721
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 2723
    :try_start_12
    const-string/jumbo v3, "remove"

    const-string/jumbo v4, "local"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1b} :catch_1e

    move v0, v1

    :goto_1c
    move v1, v0

    goto :goto_6

    .line 2724
    :catch_1e
    move-exception v0

    .line 2725
    add-int/lit8 v0, v1, 0x1

    goto :goto_1c

    .line 2729
    :cond_22
    return v1
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .registers 9

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 2006
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    const/16 v1, 0xd

    new-array v4, v1, [Ljava/lang/Object;

    .line 2008
    const-string/jumbo v1, "users"

    aput-object v1, v4, v0

    .line 2009
    const-string/jumbo v1, "remove"

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 2010
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v4, v3

    move v1, v2

    .line 2013
    :goto_24
    array-length v3, p2

    if-ge v0, v3, :cond_51

    .line 2014
    add-int/lit8 v3, v1, 0x1

    aget-object v5, p2, v0

    invoke-virtual {v5}, Landroid/net/UidRange;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2015
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_39

    array-length v1, v4

    if-ne v3, v1, :cond_49

    .line 2017
    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "network"

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_45
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_45} :catch_4b

    move v1, v2

    .line 2013
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_49
    move v1, v3

    .line 2015
    goto :goto_46

    .line 2018
    :catch_4b
    move-exception v0

    .line 2019
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2024
    :cond_51
    return-void
.end method

.method public setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.NETWORK_STACK"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 1793
    return-void

    .line 1788
    :catch_11
    move-exception v0

    .line 1789
    const-string/jumbo v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowOnlyVpnForUids("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1790
    const-string/jumbo v3, ": netd command failed"

    .line 1789
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1791
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1784
    :catch_4e
    move-exception v0

    .line 1785
    const-string/jumbo v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowOnlyVpnForUids("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1786
    const-string/jumbo v3, ": netd command failed"

    .line 1785
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1787
    throw v0
.end method

.method public setDataSaverModeEnabled(Z)Z
    .registers 7

    .prologue
    .line 1753
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSaverMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_1e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1755
    :try_start_21
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-ne v0, p1, :cond_44

    .line 1756
    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSaverMode(): already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_b4

    .line 1757
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 1759
    :cond_44
    :try_start_44
    const-string/jumbo v0, "bandwidthEnableDataSaver"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_b4

    .line 1761
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v0

    .line 1762
    if-eqz v0, :cond_5f

    .line 1763
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_57} :catch_81
    .catchall {:try_start_4d .. :try_end_57} :catchall_ac

    .line 1772
    :goto_57
    const-wide/32 v2, 0x200000

    :try_start_5a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_b4

    monitor-exit v1

    .line 1767
    return v0

    .line 1765
    :cond_5f
    :try_start_5f
    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataSaverMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): netd command silently failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_80} :catch_81
    .catchall {:try_start_5f .. :try_end_80} :catchall_ac

    goto :goto_57

    .line 1768
    :catch_81
    move-exception v0

    .line 1769
    :try_start_82
    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataSaverMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): netd command failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_82 .. :try_end_a3} :catchall_ac

    .line 1772
    const-wide/32 v2, 0x200000

    :try_start_a6
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_b4

    .line 1770
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1771
    :catchall_ac
    move-exception v0

    .line 1772
    const-wide/32 v2, 0x200000

    :try_start_b0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1771
    throw v0
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_b4

    .line 1754
    :catchall_b4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDefaultNetId(I)V
    .registers 7

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "set"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_29} :catch_2a

    .line 2603
    return-void

    .line 2600
    :catch_2a
    move-exception v0

    .line 2601
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/16 v1, 0x708

    const/16 v2, 0x19

    const/16 v5, 0x8

    const/16 v3, 0x40

    const/4 v9, 0x0

    .line 1939
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v6, "NetworkManagement"

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1944
    const-string/jumbo v0, "dns_resolver_sample_validity_seconds"

    .line 1943
    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1946
    if-ltz v0, :cond_28

    const v4, 0xffff

    if-le v0, v4, :cond_4e

    .line 1947
    :cond_28
    const-string/jumbo v4, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid sampleValidity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", using default="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1953
    :cond_4e
    const-string/jumbo v1, "dns_resolver_success_threshold_percent"

    .line 1952
    invoke-static {v6, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1955
    if-ltz v1, :cond_5b

    const/16 v4, 0x64

    if-le v1, v4, :cond_81

    .line 1956
    :cond_5b
    const-string/jumbo v4, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid successThreshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", using default="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1962
    :cond_81
    const-string/jumbo v2, "dns_resolver_min_samples"

    .line 1961
    invoke-static {v6, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1964
    const-string/jumbo v2, "dns_resolver_max_samples"

    .line 1963
    invoke-static {v6, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1965
    if-ltz v4, :cond_93

    if-le v4, v2, :cond_ee

    .line 1966
    :cond_93
    const-string/jumbo v6, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid sample count (min, max)=("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1967
    const-string/jumbo v4, "), using default=("

    .line 1966
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1967
    const-string/jumbo v4, ", "

    .line 1966
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1968
    const-string/jumbo v4, ")"

    .line 1966
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1973
    :goto_d6
    if-nez p3, :cond_f2

    new-array v2, v9, [Ljava/lang/String;

    .line 1974
    :goto_da
    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v0, v5, v9

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v4, v5, v0

    const/4 v0, 0x3

    aput v3, v5, v0

    .line 1976
    :try_start_e8
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2, v2, v5}, Landroid/net/INetd;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_ed} :catch_fa

    .line 1980
    return-void

    .line 1965
    :cond_ee
    if-gt v2, v3, :cond_93

    move v3, v2

    goto :goto_d6

    .line 1973
    :cond_f2
    const-string/jumbo v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_da

    .line 1977
    :catch_fa
    move-exception v0

    .line 1978
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 1327
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    if-eqz p1, :cond_40

    iget v0, p1, Landroid/net/Network;->netId:I

    .line 1330
    :goto_10
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v3, "tether"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "dns"

    aput-object v5, v4, v1

    const-string/jumbo v5, "set"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1332
    array-length v0, p2

    :goto_2e
    if-ge v1, v0, :cond_42

    aget-object v3, p2, v1

    .line 1333
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1332
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_40
    move v0, v1

    .line 1329
    goto :goto_10

    .line 1337
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_42 .. :try_end_47} :catch_48

    .line 1341
    return-void

    .line 1338
    :catch_48
    move-exception v0

    .line 1339
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setFirewallChainEnabled(IZ)V
    .registers 10

    .prologue
    .line 2135
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2136
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2137
    :try_start_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_39

    .line 2138
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3c

    move-result v0

    if-ne v0, p2, :cond_12

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_39

    monitor-exit v2

    .line 2141
    return-void

    .line 2143
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_3c

    :try_start_15
    monitor-exit v1

    .line 2146
    if-eqz p2, :cond_3f

    const-string/jumbo v0, "enable_chain"

    move-object v1, v0

    .line 2148
    :goto_1c
    packed-switch p1, :pswitch_data_8c

    .line 2159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad child chain: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_39

    .line 2136
    :catchall_39
    move-exception v0

    monitor-exit v2

    throw v0

    .line 2137
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1

    throw v0

    .line 2146
    :cond_3f
    const-string/jumbo v0, "disable_chain"

    move-object v1, v0

    goto :goto_1c

    .line 2150
    :pswitch_44
    const-string/jumbo v0, "standby"
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_39

    .line 2163
    :goto_47
    :try_start_47
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "firewall"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_58
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_47 .. :try_end_58} :catch_85
    .catchall {:try_start_47 .. :try_end_58} :catchall_39

    .line 2172
    if-eqz p2, :cond_7b

    .line 2173
    :try_start_5a
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_78

    const-string/jumbo v1, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Closing sockets after enabling chain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    :cond_78
    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_5a .. :try_end_7b} :catchall_39

    :cond_7b
    monitor-exit v2

    .line 2177
    return-void

    .line 2153
    :pswitch_7d
    :try_start_7d
    const-string/jumbo v0, "dozable"

    goto :goto_47

    .line 2156
    :pswitch_81
    const-string/jumbo v0, "powersave"

    goto :goto_47

    .line 2164
    :catch_85
    move-exception v0

    .line 2165
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_8b
    .catchall {:try_start_7d .. :try_end_8b} :catchall_39

    .line 2148
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_44
        :pswitch_81
    .end packed-switch
.end method

.method public setFirewallEnabled(Z)V
    .registers 7

    .prologue
    .line 2028
    const-string/jumbo v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFirewallEnabled enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforcePhoneOrSystemUid()V

    .line 2031
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "firewall"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "enable"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    if-eqz p1, :cond_39

    const-string/jumbo v0, "whitelist"

    :goto_30
    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2032
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    .line 2036
    return-void

    .line 2031
    :cond_39
    const-string/jumbo v0, "blacklist"
    :try_end_3c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_3c} :catch_3d

    goto :goto_30

    .line 2033
    :catch_3d
    move-exception v0

    .line 2034
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setFirewallImRule(Ljava/lang/String;IZ)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 2057
    const-string/jumbo v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "00000setFirewallImRule ADDR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",port ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforcePhoneOrSystemUid()V

    .line 2059
    const-string/jumbo v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFirewallImRule ADDR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",port ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 2061
    invoke-virtual {p0, v3}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 2063
    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "firewall"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "enable_imurl"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_88
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6d .. :try_end_88} :catch_89

    .line 2068
    return-void

    .line 2064
    :catch_89
    move-exception v0

    .line 2065
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 2046
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2047
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2048
    if-eqz p2, :cond_25

    const-string/jumbo v0, "allow"

    .line 2050
    :goto_d
    :try_start_d
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "firewall"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "set_interface_rule"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_29

    .line 2054
    return-void

    .line 2048
    :cond_25
    const-string/jumbo v0, "deny"

    goto :goto_d

    .line 2051
    :catch_29
    move-exception v0

    .line 2052
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setFirewallUidRule(III)V
    .registers 6

    .prologue
    .line 2243
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2244
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2245
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    monitor-exit v0

    .line 2247
    return-void

    .line 2244
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setFirewallUidRules(I[I[I)V
    .registers 12

    .prologue
    .line 2194
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2195
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2196
    :try_start_6
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_78

    .line 2197
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v3

    .line 2198
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 2200
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_24

    .line 2201
    aget v5, p2, v0

    .line 2202
    aget v6, p3, v0

    .line 2203
    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 2204
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2200
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 2207
    :cond_24
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 2208
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2f
    if-ltz v0, :cond_42

    .line 2209
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2210
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_3f

    .line 2211
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 2215
    :cond_42
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_48
    if-ltz v0, :cond_55

    .line 2216
    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2217
    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_75

    .line 2215
    add-int/lit8 v0, v0, -0x1

    goto :goto_48

    :cond_55
    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_78

    .line 2221
    packed-switch p1, :pswitch_data_b6

    .line 2233
    :try_start_59
    const-string/jumbo v0, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFirewallUidRules() called on invalid chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_73} :catch_85
    .catchall {:try_start_59 .. :try_end_73} :catchall_78

    :goto_73
    monitor-exit v1

    .line 2239
    return-void

    .line 2196
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v2

    throw v0
    :try_end_78
    .catchall {:try_start_76 .. :try_end_78} :catchall_78

    .line 2195
    :catchall_78
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2223
    :pswitch_7b
    :try_start_7b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string/jumbo v2, "fw_dozable"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_84} :catch_85
    .catchall {:try_start_7b .. :try_end_84} :catchall_78

    goto :goto_73

    .line 2235
    :catch_85
    move-exception v0

    .line 2236
    :try_start_86
    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error flushing firewall chain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_86 .. :try_end_a0} :catchall_78

    goto :goto_73

    .line 2226
    :pswitch_a1
    :try_start_a1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string/jumbo v2, "fw_standby"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    goto :goto_73

    .line 2229
    :pswitch_ab
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string/jumbo v2, "fw_powersave"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b4} :catch_85
    .catchall {:try_start_a1 .. :try_end_b4} :catchall_78

    goto :goto_73

    .line 2221
    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_a1
        :pswitch_ab
    .end packed-switch
.end method

.method public setGlobalAlert(J)V
    .registers 8

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_10

    return-void

    .line 1695
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "bandwidth"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "setglobalalert"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_28} :catch_29

    .line 1699
    return-void

    .line 1696
    :catch_29
    move-exception v0

    .line 1697
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .prologue
    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1105
    return-void

    .line 1102
    :catch_6
    move-exception v0

    .line 1103
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .registers 10

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_10

    return-void

    .line 1643
    :cond_10
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setting alert requires existing quota on iface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1647
    :cond_21
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1648
    :try_start_24
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1649
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already has alert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_24 .. :try_end_4d} :catchall_4d

    .line 1647
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1654
    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "bandwidth"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "setinterfacealert"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1655
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_50 .. :try_end_74} :catch_76
    .catchall {:try_start_50 .. :try_end_74} :catchall_4d

    monitor-exit v1

    .line 1660
    return-void

    .line 1656
    :catch_76
    move-exception v0

    .line 1657
    :try_start_77
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_4d
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 9

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 1031
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1032
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Null LinkAddress given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_20
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "interface"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "setcfg"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1036
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 1037
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    .line 1035
    invoke-direct {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1039
    invoke-virtual {v1, v0}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_52

    .line 1043
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_67
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_62 .. :try_end_67} :catch_68

    .line 1047
    return-void

    .line 1044
    :catch_68
    move-exception v0

    .line 1045
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 1054
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1055
    return-void
.end method

.method public setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
    .registers 8

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1122
    const-string/jumbo v2, "interface"

    .line 1121
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    .line 1122
    const-string/jumbo v0, "ipv6ndoffload"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    if-eqz p2, :cond_28

    const-string/jumbo v0, "enable"

    :goto_21
    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 1121
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1126
    return-void

    .line 1122
    :cond_28
    const-string/jumbo v0, "disable"
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2b} :catch_2c

    goto :goto_21

    .line 1123
    :catch_2c
    move-exception v0

    .line 1124
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 8

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1070
    const-string/jumbo v2, "interface"

    .line 1069
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    .line 1070
    const-string/jumbo v0, "ipv6privacyextensions"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    if-eqz p2, :cond_28

    const-string/jumbo v0, "enable"

    :goto_21
    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 1069
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1074
    return-void

    .line 1070
    :cond_28
    const-string/jumbo v0, "disable"
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_2b} :catch_2c

    goto :goto_21

    .line 1071
    :catch_2c
    move-exception v0

    .line 1072
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 12

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v0, :cond_10

    return-void

    .line 1571
    :cond_10
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1572
    :try_start_13
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1573
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already has quota"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3c

    .line 1571
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1578
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "bandwidth"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "setiquota"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1579
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3f .. :try_end_63} :catch_b2
    .catchall {:try_start_3f .. :try_end_63} :catchall_3c

    .line 1584
    :try_start_63
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_3c

    .line 1585
    :try_start_66
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ITetheringStatsProvider;
    :try_end_7c
    .catchall {:try_start_66 .. :try_end_7c} :catchall_af

    .line 1587
    :try_start_7c
    invoke-interface {v0, p1, p2, p3}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_80
    .catchall {:try_start_7c .. :try_end_7f} :catchall_af

    goto :goto_70

    .line 1588
    :catch_80
    move-exception v4

    .line 1589
    :try_start_81
    const-string/jumbo v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Problem setting tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1590
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1589
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1590
    const-string/jumbo v6, ": "

    .line 1589
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_81 .. :try_end_ae} :catchall_af

    goto :goto_70

    .line 1584
    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v2

    throw v0

    .line 1580
    :catch_b2
    move-exception v0

    .line 1581
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_3c

    monitor-exit v1

    .line 1595
    return-void
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1061
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1062
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1063
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .registers 7

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "ipfwd"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_25

    const-string/jumbo v0, "enable"

    :goto_18
    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string/jumbo v0, "tethering"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1240
    return-void

    .line 1236
    :cond_25
    const-string/jumbo v0, "disable"
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_28} :catch_29

    goto :goto_18

    .line 1237
    :catch_29
    move-exception v0

    .line 1238
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setMtu(Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "interface"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "setmtu"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_26} :catch_27

    .line 1206
    return-void

    .line 1203
    :catch_27
    move-exception v0

    .line 1204
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setNetworkPermission(ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    if-eqz p2, :cond_35

    .line 2622
    :try_start_d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "permission"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "network"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "set"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2629
    :goto_34
    return-void

    .line 2624
    :cond_35
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "network"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "permission"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "network"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "clear"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_59
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_59} :catch_5a

    goto :goto_34

    .line 2626
    :catch_5a
    move-exception v0

    .line 2627
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public setPermission(Ljava/lang/String;[I)V
    .registers 9

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 2634
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkManagement"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    const/16 v1, 0xe

    new-array v4, v1, [Ljava/lang/Object;

    .line 2637
    const-string/jumbo v1, "permission"

    aput-object v1, v4, v0

    .line 2638
    const-string/jumbo v1, "user"

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 2639
    const-string/jumbo v1, "set"

    const/4 v3, 0x2

    aput-object v1, v4, v3

    .line 2640
    const/4 v1, 0x3

    aput-object p1, v4, v1

    move v1, v2

    .line 2643
    :goto_26
    array-length v3, p2

    if-ge v0, v3, :cond_53

    .line 2644
    add-int/lit8 v3, v1, 0x1

    aget v5, p2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2645
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3b

    array-length v1, v4

    if-ne v3, v1, :cond_4b

    .line 2647
    :cond_3b
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "network"

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_47} :catch_4d

    move v1, v2

    .line 2643
    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_4b
    move v1, v3

    .line 2645
    goto :goto_48

    .line 2648
    :catch_4d
    move-exception v0

    .line 2649
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2654
    :cond_53
    return-void
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .registers 6

    .prologue
    .line 1821
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 1822
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    :cond_11
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1826
    :try_start_14
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_37

    move-result v0

    .line 1827
    if-ne v0, p2, :cond_1f

    monitor-exit v1

    .line 1830
    return-void

    .line 1833
    :cond_1f
    :try_start_1f
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    if-nez v2, :cond_2a

    .line 1836
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_37

    monitor-exit v1

    .line 1837
    return-void

    .line 1844
    :cond_2a
    if-eqz v0, :cond_32

    .line 1845
    if-eqz p2, :cond_32

    .line 1846
    const/4 v0, 0x0

    :try_start_2f
    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1849
    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_37

    monitor-exit v1

    .line 1851
    return-void

    .line 1825
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUidMeteredNetworkBlacklist(IZ)V
    .registers 4

    .prologue
    .line 1743
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1744
    return-void
.end method

.method public setUidMeteredNetworkWhitelist(IZ)V
    .registers 4

    .prologue
    .line 1748
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1749
    return-void
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.SHUTDOWN"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v0, "NetworkManagement"

    const-string/jumbo v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void
.end method

.method public startClatd(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "clatd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "start"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_20

    .line 2359
    return-void

    .line 2356
    :catch_20
    move-exception v0

    .line 2357
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1376
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1244
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v3, "NetworkManagement"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v2, "tether"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "start"

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    array-length v2, p1

    :goto_1d
    if-ge v0, v2, :cond_27

    aget-object v3, p1, v0

    .line 1250
    invoke-virtual {v1, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1254
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 1258
    return-void

    .line 1255
    :catch_2d
    move-exception v0

    .line 1256
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public stopClatd(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "clatd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "stop"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1f} :catch_20

    .line 2370
    return-void

    .line 2367
    :catch_20
    move-exception v0

    .line 2368
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1382
    return-void
.end method

.method public stopTethering()V
    .registers 6

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "stop"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_1c} :catch_1d

    .line 1268
    return-void

    .line 1265
    :catch_1d
    move-exception v0

    .line 1266
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_33

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 379
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 381
    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Prepared in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void

    .line 384
    :cond_33
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 386
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "interface"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "add"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_3f

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    new-instance v1, Landroid/net/RouteInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1299
    return-void

    .line 1291
    :catch_3f
    move-exception v0

    .line 1292
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    .registers 5

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.NETWORK_STACK"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1

    .line 558
    :try_start_e
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_21

    move-result v0

    if-nez v0, :cond_18

    monitor-exit v1

    .line 559
    return-void

    .line 562
    :cond_18
    :try_start_18
    const-string/jumbo v0, "globalAlert"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_21

    monitor-exit v1

    .line 564
    return-void

    .line 557
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .registers 3

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2395
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 409
    return-void
.end method

.method public unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
    .registers 5

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.NETWORK_STACK"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1

    .line 550
    :try_start_e
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 552
    return-void

    .line 549
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :try_start_b
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "tether"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "interface"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "remove"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_25} :catch_29
    .catchall {:try_start_b .. :try_end_25} :catchall_2f

    .line 1309
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1311
    return-void

    .line 1306
    :catch_29
    move-exception v0

    .line 1307
    :try_start_2a
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2f

    .line 1308
    :catchall_2f
    move-exception v0

    .line 1309
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1308
    throw v0
.end method
