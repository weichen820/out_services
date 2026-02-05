.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$1;,
        Lcom/android/server/ConnectivityService$2;,
        Lcom/android/server/ConnectivityService$3;,
        Lcom/android/server/ConnectivityService$4;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$NetworkFactoryInfo;,
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$UnneededFor;,
        Lcom/android/server/ConnectivityService$ValidationLog;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-ConnectivityService$UnneededForSwitchesValues:[I = null

.field private static final synthetic -com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I = null

.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final DBG:Z = true

.field private static final DEFAULT_LINGER_DELAY_MS:I = 0x7530

.field private static final DEFAULT_TCP_BUFFER_SIZES:Ljava/lang/String; = "4096,87380,110208,4096,16384,110208"

.field private static final DEFAULT_TCP_RWND_KEY:Ljava/lang/String; = "net.tcp.default_init_rwnd"

.field public static final DIAG_ARG:Ljava/lang/String; = "--diag"

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x2

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_CONFIGURE_MOBILE_DATA_ALWAYS_ON:I = 0x1e

.field private static final EVENT_EXPIRE_NET_TRANSITION_WAKELOCK:I = 0x18

.field private static final EVENT_PROMPT_UNVALIDATED:I = 0x1d

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_REGISTER_NETWORK_AGENT:I = 0x12

.field private static final EVENT_REGISTER_NETWORK_FACTORY:I = 0x11

.field private static final EVENT_REGISTER_NETWORK_LISTENER:I = 0x15

.field private static final EVENT_REGISTER_NETWORK_LISTENER_WITH_INTENT:I = 0x1f

.field private static final EVENT_REGISTER_NETWORK_REQUEST:I = 0x13

.field private static final EVENT_REGISTER_NETWORK_REQUEST_WITH_INTENT:I = 0x1a

.field private static final EVENT_RELEASE_NETWORK_REQUEST:I = 0x16

.field private static final EVENT_RELEASE_NETWORK_REQUEST_WITH_INTENT:I = 0x1b

.field private static final EVENT_REVALIDATE_NETWORK:I = 0x24

.field private static final EVENT_SET_ACCEPT_UNVALIDATED:I = 0x1c

.field private static final EVENT_SET_AVOID_UNVALIDATED:I = 0x23

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field private static final EVENT_UNREGISTER_NETWORK_FACTORY:I = 0x17

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final LOGD_BLOCKED_NETWORKINFO:Z = true

.field private static final LOGD_RULES:Z = false

.field private static final MAX_NETWORK_INFO_LOGS:I = 0x28

.field private static final MAX_NETWORK_REQUESTS_PER_UID:I = 0x64

.field private static final MAX_NETWORK_REQUEST_LOGS:I = 0x14

.field private static final MAX_NET_ID:I = 0xffff

.field private static final MAX_VALIDATION_LOGS:I = 0xa

.field private static final MAX_WAKELOCK_LOGS:I = 0x14

.field private static final MIN_NET_ID:I = 0x64

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final PROMPT_UNVALIDATED_DELAY_MS:I = 0x1f40

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field public static final SHORT_ARG:Ljava/lang/String; = "--short"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field public static final TETHERING_ARG:Ljava/lang/String; = "tethering"

.field private static final VDBG:Z

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private final mBlockedAppUids:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mBlockedAppUids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentTcpBufferSizes:Ljava/lang/String;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultInetConditionPublished:I

.field private final mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;

.field private mDefaultProxyDisabled:Z

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private mGlobalProxy:Landroid/net/ProxyInfo;

.field private final mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLastWakeLockAcquireTimestamp:J

.field private mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

.field protected mLingerDelayMs:I

.field private mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMaxWakelockDurationMs:J

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private final mNetIdInUse:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForNetId"
    .end annotation
.end field

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private final mNetworkAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkFactoryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/ConnectivityService$NetworkFactoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForNetId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForNetId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForRequestId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkForRequestId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

.field private mNetworkPreference:I

.field private final mNetworkRequestInfoLogs:Landroid/util/LocalLog;

.field private final mNetworkRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/server/ConnectivityService$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNetworksDefined:I

.field private mNextNetId:I

.field private mNextNetworkRequestId:I

.field private mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private mNumDnsEntries:I

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private final mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field mProtectedNetworks:Ljava/util/List;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field private final mReleasePendingIntentDelayMs:I

.field private final mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mTotalWakelockAcquisitions:I

.field private mTotalWakelockDurationMs:J

.field private mTotalWakelockReleases:I

.field private final mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private final mUidToNetworkRequestCount:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidToNetworkRequestCount"
    .end annotation
.end field

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private final mValidationLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/ConnectivityService$ValidationLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakelockLogs:Landroid/util/LocalLog;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private static synthetic -getcom-android-server-ConnectivityService$UnneededForSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-ConnectivityService$UnneededForSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-ConnectivityService$UnneededForSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/ConnectivityService$UnneededFor;->values()[Lcom/android/server/ConnectivityService$UnneededFor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-ConnectivityService$UnneededForSwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getcom-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->values()[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/server/ConnectivityService;->-com-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/ConnectivityService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkTransitionWakelock(I)V

    return-void
.end method

.method static synthetic -wrap2(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleReportNetworkConnectivity(Landroid/net/Network;IZ)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetAvoidUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic -wrap25(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap26(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserAdded(I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap30(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/ConnectivityService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/ConnectivityService;IZJ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/ConnectivityService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 181
    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/ConnectivityService;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/net/NetworkAgent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 251
    const-class v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 249
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .registers 11

    .prologue
    .line 690
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/metrics/IpConnectivityLog;)V

    .line 691
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/metrics/IpConnectivityLog;)V
    .registers 13

    .prologue
    .line 694
    invoke-direct {p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 419
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 448
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 451
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    .line 455
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    .line 459
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    .line 462
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 465
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 466
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 467
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 483
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 482
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    .line 686
    new-instance v0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    .line 1364
    new-instance v0, Lcom/android/server/ConnectivityService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1469
    new-instance v0, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 3746
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 3937
    new-instance v0, Lcom/android/server/ConnectivityService$3;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 3958
    new-instance v0, Lcom/android/server/ConnectivityService$4;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 3969
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3968
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    .line 3971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3970
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    .line 3976
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    .line 4350
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4349
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    .line 4355
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4354
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    .line 4360
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 4366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4365
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 4369
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    .line 697
    const-string/jumbo v0, "ConnectivityService starting up"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 701
    iput-object p5, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 702
    sget-object v0, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 703
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 704
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REGISTER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 708
    sget-object v0, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v1, 0x0

    .line 707
    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->createInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    .line 710
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ConnectivityServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 711
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 712
    new-instance v0, Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 713
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 715
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 716
    const-string/jumbo v1, "connectivity_release_pending_intent_delay_ms"

    const/16 v2, 0x1388

    .line 715
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    .line 718
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v1, "persist.netmon.linger"

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    .line 720
    const-string/jumbo v0, "missing Context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 721
    const-string/jumbo v0, "missing INetworkManagementService"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 722
    const-string/jumbo v0, "missing INetworkStatsService"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 723
    const-string/jumbo v0, "missing INetworkPolicyManager"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 725
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 726
    const-string/jumbo v1, "missing NetworkPolicyManagerInternal"

    .line 724
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 728
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 729
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 732
    :try_start_1a6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1ad
    .catch Landroid/os/RemoteException; {:try_start_1a6 .. :try_end_1ad} :catch_236

    .line 739
    :goto_1ad
    const-string/jumbo v0, "power"

    .line 738
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 740
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 741
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 742
    const v2, 0x10e0062

    .line 741
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 743
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 745
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/net/NetworkConfig;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 748
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v1, "ro.radio.noril"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifiOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 751
    const v2, 0x1070068

    .line 750
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 752
    const/4 v0, 0x0

    array-length v3, v2

    :goto_20b
    if-ge v0, v3, :cond_2ac

    aget-object v4, v2, v0

    .line 754
    :try_start_20f
    new-instance v5, Landroid/net/NetworkConfig;

    invoke-direct {v5, v4}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 756
    iget v4, v5, Landroid/net/NetworkConfig;->type:I

    const/16 v6, 0x11

    if-le v4, v6, :cond_250

    .line 757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 758
    iget v5, v5, Landroid/net/NetworkConfig;->type:I

    .line 757
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_233} :catch_274

    .line 752
    :goto_233
    add-int/lit8 v0, v0, 0x1

    goto :goto_20b

    .line 733
    :catch_236
    move-exception v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to register INetworkPolicyListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_1ad

    .line 761
    :cond_250
    if-eqz v1, :cond_276

    :try_start_252
    iget v4, v5, Landroid/net/NetworkConfig;->type:I

    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-eqz v4, :cond_276

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 763
    iget v5, v5, Landroid/net/NetworkConfig;->type:I

    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_233

    .line 775
    :catch_274
    move-exception v4

    goto :goto_233

    .line 766
    :cond_276
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v6, v5, Landroid/net/NetworkConfig;->type:I

    aget-object v4, v4, v6

    if-eqz v4, :cond_298

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 768
    iget v5, v5, Landroid/net/NetworkConfig;->type:I

    .line 767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_233

    .line 771
    :cond_298
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v6, v5, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v4, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 773
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v6, v5, Landroid/net/NetworkConfig;->type:I

    aput-object v5, v4, v6

    .line 774
    iget v4, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_252 .. :try_end_2ab} :catch_274

    goto :goto_233

    .line 781
    :cond_2ac
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    if-nez v0, :cond_2c1

    .line 784
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 785
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 790
    :cond_2c1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    if-nez v0, :cond_2df

    const-string/jumbo v0, "ethernet"

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2df

    .line 791
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 792
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 797
    :cond_2df
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 798
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 799
    const v1, 0x1070036

    .line 798
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 800
    const/4 v0, 0x0

    array-length v2, v1

    :goto_2f3
    if-ge v0, v2, :cond_32d

    aget v3, v1, v0

    .line 801
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v4, v4, v3

    if-eqz v4, :cond_315

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_315

    .line 802
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    :goto_312
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f3

    .line 804
    :cond_315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring protectedNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_312

    .line 808
    :cond_32d
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v1, "cm.test.mode"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_442

    .line 809
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v1, "ro.build.type"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 808
    :goto_34f
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mTestMode:Z

    .line 811
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->makeTethering()Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 813
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 816
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 817
    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 823
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 822
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 824
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 825
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_PRESENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 824
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 828
    :try_start_3a3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 829
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3b1
    .catch Landroid/os/RemoteException; {:try_start_3a3 .. :try_end_3b1} :catch_445

    .line 834
    :goto_3b1
    new-instance v0, Lcom/android/server/ConnectivityService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 835
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    .line 837
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    .line 838
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 840
    new-instance v0, Lcom/android/server/connectivity/PacManager;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 842
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    .line 844
    new-instance v0, Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/KeepaliveTracker;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 845
    new-instance v1, Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 846
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 845
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    .line 848
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 849
    const-string/jumbo v1, "network_switch_notification_daily_limit"

    .line 850
    const/4 v2, 0x3

    .line 848
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 851
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 852
    const-string/jumbo v1, "network_switch_notification_rate_limit_millis"

    .line 853
    const-wide/32 v4, 0xea60

    .line 851
    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 854
    new-instance v0, Lcom/android/server/connectivity/LingerMonitor;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/LingerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    .line 857
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v2, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;-><init>(BLjava/lang/Object;)V

    .line 856
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->createMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 858
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 859
    return-void

    .line 808
    :cond_442
    const/4 v0, 0x0

    goto/16 :goto_34f

    .line 830
    :catch_445
    move-exception v0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error registering observer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3b1
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .registers 8

    .prologue
    .line 1443
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1444
    if-nez v0, :cond_4a

    .line 1445
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 1457
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding legacy route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1458
    const-string/jumbo v2, " for UID/PID "

    .line 1457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1458
    const-string/jumbo v2, "/"

    .line 1457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1458
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1460
    :try_start_43
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_66

    .line 1466
    const/4 v0, 0x1

    return v0

    .line 1447
    :cond_4a
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 1448
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1450
    invoke-static {p2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_12

    .line 1454
    :cond_5d
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_12

    .line 1461
    :catch_66
    move-exception v0

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception trying to add a route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1464
    const/4 v0, 0x0

    return v0
.end method

.method private addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 487
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_16

    .line 488
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    goto :goto_3

    .line 486
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0

    .line 490
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/android/server/ConnectivityService$ValidationLog;

    invoke-direct {v2, p2, p3, p1}, Lcom/android/server/ConnectivityService$ValidationLog;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/util/LocalLog$ReadOnlyLocalLog;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13

    monitor-exit v1

    .line 492
    return-void
.end method

.method private argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1853
    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_12

    aget-object v3, p1, v0

    .line 1854
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x1

    return v0

    .line 1853
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1856
    :cond_12
    return v1
.end method

.method private static callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 8

    .prologue
    .line 4789
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    if-nez v0, :cond_5

    .line 4790
    return-void

    .line 4792
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4794
    new-instance v1, Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v1, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 4795
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4796
    const v2, 0x80005

    if-eq p2, v2, :cond_22

    .line 4797
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 4799
    :cond_22
    packed-switch p2, :pswitch_data_64

    .line 4813
    :goto_25
    :pswitch_25
    iput p2, v1, Landroid/os/Message;->what:I

    .line 4814
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4820
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_49

    .line 4825
    :goto_2f
    return-void

    .line 4801
    :pswitch_30
    iput p3, v1, Landroid/os/Message;->arg1:I

    goto :goto_25

    .line 4805
    :pswitch_33
    new-instance v2, Landroid/net/NetworkCapabilities;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    goto :goto_25

    .line 4809
    :pswitch_3e
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    goto :goto_25

    .line 4821
    :catch_49
    move-exception v0

    .line 4823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2f

    .line 4799
    :pswitch_data_64
    .packed-switch 0x80003
        :pswitch_30
        :pswitch_25
        :pswitch_25
        :pswitch_33
        :pswitch_3e
    .end packed-switch
.end method

.method private canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3178
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3179
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1f

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3178
    if-eqz v1, :cond_20

    :cond_1f
    move-object p1, v0

    .line 3182
    :cond_20
    return-object p1
.end method

.method private clearNetworkForRequest(I)V
    .registers 4

    .prologue
    .line 4385
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4386
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 4388
    return-void

    .line 4385
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 871
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 872
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 873
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 874
    if-le p1, v3, :cond_15

    .line 875
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 877
    :cond_15
    new-instance v1, Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    invoke-direct {v1, v0, v3, v2, p2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object v1
.end method

.method private createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 3549
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v1

    .line 3550
    if-nez v1, :cond_9

    .line 3551
    return-object v0

    .line 3553
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 3556
    if-nez v2, :cond_2a

    .line 3557
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 3558
    if-eqz v2, :cond_25

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_25

    .line 3559
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    .line 3567
    :cond_25
    :goto_25
    iget-object v2, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    if-nez v2, :cond_3c

    :goto_29
    return-object v0

    .line 3561
    :cond_2a
    array-length v3, v2

    if-lez v3, :cond_25

    .line 3562
    aget-object v2, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 3563
    if-eqz v2, :cond_25

    .line 3564
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnInfo;->primaryUnderlyingIface:Ljava/lang/String;

    goto :goto_25

    :cond_3c
    move-object v0, v1

    .line 3567
    goto :goto_29
.end method

.method private dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v0

    .line 2699
    if-nez v0, :cond_f

    .line 2700
    const-string/jumbo v0, "Bad Wi-Fi avoidance: unrestricted"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    return-void

    .line 2704
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad Wi-Fi avoidance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2705
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Config restrict:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v0

    .line 2711
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2712
    const-string/jumbo v0, "get stuck"

    .line 2720
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User setting:      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2721
    const-string/jumbo v0, "Network overrides:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2723
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_80
    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2724
    iget-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v2, :cond_80

    .line 2725
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    .line 2713
    :cond_98
    if-nez v0, :cond_9e

    .line 2714
    const-string/jumbo v0, "prompt"

    goto :goto_56

    .line 2715
    :cond_9e
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 2716
    const-string/jumbo v0, "avoid"

    goto :goto_56

    .line 2718
    :cond_ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 2728
    :cond_c0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2729
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2730
    return-void
.end method

.method private dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x1388

    .line 1860
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1864
    new-instance v3, Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 1865
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 1866
    new-instance v5, Landroid/net/LinkProperties;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v5, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 1864
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1870
    :cond_2f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 1871
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1872
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    .line 1873
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_33

    .line 1875
    :cond_49
    return-void
.end method

.method private static encodeBool(Z)I
    .registers 2

    .prologue
    .line 5646
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1514
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 1515
    const-string/jumbo v2, "ConnectivityService"

    .line 1513
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    return-void
.end method

.method private enforceChangePermission()V
    .registers 2

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceChangePermission(Landroid/content/Context;)V

    .line 1520
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1536
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 1537
    const-string/jumbo v2, "ConnectivityService"

    .line 1535
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    return-void
.end method

.method private enforceConnectivityRestrictedNetworksPermission()V
    .registers 4

    .prologue
    .line 1542
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1543
    const-string/jumbo v1, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    .line 1544
    const-string/jumbo v2, "ConnectivityService"

    .line 1542
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1545
    return-void

    .line 1546
    :catch_c
    move-exception v0

    .line 1547
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1548
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .registers 5

    .prologue
    .line 1497
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1499
    return-void

    .line 1501
    :cond_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1502
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1503
    const-string/jumbo v2, "ConnectivityService"

    .line 1501
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    return-void
.end method

.method private enforceInternetPermission()V
    .registers 4

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1508
    const-string/jumbo v1, "android.permission.INTERNET"

    .line 1509
    const-string/jumbo v2, "ConnectivityService"

    .line 1507
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    return-void
.end method

.method private enforceKeepalivePermission()V
    .registers 4

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    const-string/jumbo v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .registers 5

    .prologue
    const/16 v2, 0xb

    .line 4192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4193
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4195
    return-void

    .line 4197
    :cond_d
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4199
    return-void

    .line 4201
    :cond_14
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4203
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4205
    :cond_1f
    return-void
.end method

.method private enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V
    .registers 3

    .prologue
    .line 4163
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4164
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityRestrictedNetworksPermission()V

    .line 4168
    :goto_b
    return-void

    .line 4166
    :cond_c
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    goto :goto_b
.end method

.method private enforceSettingsPermission()V
    .registers 4

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1524
    const-string/jumbo v1, "android.permission.NETWORK_SETTINGS"

    .line 1525
    const-string/jumbo v2, "ConnectivityService"

    .line 1523
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    return-void
.end method

.method private enforceTetherAccessPermission()V
    .registers 4

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1530
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 1531
    const-string/jumbo v2, "ConnectivityService"

    .line 1529
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    return-void
.end method

.method private ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V
    .registers 4

    .prologue
    .line 3991
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_f

    .line 3992
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3993
    const-string/jumbo v1, "All NetworkRequests in ConnectivityService must have a type"

    .line 3992
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3995
    :cond_f
    return-void
.end method

.method private ensureNetworkTransitionWakelock(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3048
    monitor-enter p0

    .line 3049
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_47

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit p0

    .line 3050
    return-void

    .line 3052
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3053
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 3054
    iget v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_47

    monitor-exit p0

    .line 3056
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACQUIRE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3057
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3058
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3059
    return-void

    .line 3048
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 6

    .prologue
    .line 4069
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->describeFirstNonRequestableCapability()Ljava/lang/String;

    move-result-object v0

    .line 4070
    if-eqz v0, :cond_20

    .line 4071
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot request network with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4073
    :cond_20
    return-void
.end method

.method private ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V
    .registers 4

    .prologue
    .line 4111
    if-nez p1, :cond_3

    .line 4112
    return-void

    .line 4114
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 4115
    if-nez v0, :cond_a

    .line 4116
    return-void

    .line 4118
    :cond_a
    invoke-static {v0}, Landroid/net/MatchAllNetworkSpecifier;->checkNotMatchAllNetworkSpecifier(Landroid/net/NetworkSpecifier;)V

    .line 4119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->assertValidFromUid(I)V

    .line 4120
    return-void
.end method

.method private static eventName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 399
    sget-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1056
    if-eqz p1, :cond_7

    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_8

    :cond_7
    return-void

    :cond_8
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_7

    .line 1058
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1059
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :cond_1b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v0, :cond_26

    .line 1062
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1064
    :cond_26
    return-void
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2349
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2350
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2352
    if-eqz v1, :cond_f

    .line 2353
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    .line 2352
    if-eqz v1, :cond_f

    .line 2354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    return-object v0

    .line 2357
    :cond_36
    return-object v4
.end method

.method private flushVmDnsCache()V
    .registers 6

    .prologue
    .line 1817
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1818
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1822
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1823
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1825
    :try_start_16
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_21

    .line 1827
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1829
    return-void

    .line 1826
    :catchall_21
    move-exception v0

    .line 1827
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1826
    throw v0
.end method

.method private getActiveNetworkForUidInternal(IZ)Landroid/net/Network;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1096
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1098
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1099
    :try_start_9
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v2

    .line 1100
    if-eqz v2, :cond_19

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetId()I
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_2d

    move-result v0

    :cond_19
    monitor-exit v3

    .line 1103
    if-eqz v0, :cond_33

    .line 1104
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1105
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_30

    monitor-exit v2

    .line 1107
    if-eqz v0, :cond_33

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v0

    .line 1098
    :catchall_2d
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1104
    :catchall_30
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1109
    :cond_33
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_42

    .line 1111
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v2

    .line 1110
    if-eqz v2, :cond_42

    move-object v0, v1

    .line 1114
    :cond_42
    if-eqz v0, :cond_47

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    :goto_46
    return-object v0

    :cond_47
    move-object v0, v1

    goto :goto_46
.end method

.method private getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2

    .prologue
    .line 4397
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultProxy()Landroid/net/ProxyInfo;
    .registers 4

    .prologue
    .line 3150
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3151
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3152
    if-nez v0, :cond_f

    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    .line 3153
    return-object v0

    .line 3150
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getFilteredNetworkState(IIZ)Landroid/net/NetworkState;
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 940
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 941
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_1e

    .line 944
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v0

    .line 945
    iget-object v1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setType(I)V

    .line 954
    :goto_1a
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 955
    return-object v0

    .line 947
    :cond_1e
    new-instance v1, Landroid/net/NetworkInfo;

    .line 948
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    .line 947
    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v0, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 949
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v0, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 951
    new-instance v0, Landroid/net/NetworkState;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 957
    :cond_46
    sget-object v0, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object v0
.end method

.method private getIntSpecifier(Landroid/net/NetworkSpecifier;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 5680
    if-eqz p1, :cond_c

    .line 5681
    instance-of v2, p1, Landroid/net/StringNetworkSpecifier;

    .line 5680
    if-eqz v2, :cond_c

    .line 5682
    nop

    nop

    iget-object v1, p1, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    .line 5684
    :cond_c
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 5686
    :try_start_14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_19

    move-result v0

    .line 5691
    :cond_18
    :goto_18
    return v0

    .line 5687
    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method private getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1292
    if-nez p1, :cond_4

    .line 1293
    return-object v0

    .line 1295
    :cond_4
    monitor-enter p1

    .line 1296
    :try_start_5
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    monitor-exit p1

    return-object v0

    .line 1295
    :catchall_e
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 962
    if-nez p1, :cond_4

    .line 963
    return-object v0

    .line 965
    :cond_4
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 966
    :try_start_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit v1

    return-object v0

    .line 965
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1301
    if-eqz p1, :cond_12

    .line 1302
    monitor-enter p1

    .line 1303
    :try_start_4
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_11

    .line 1304
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    monitor-exit p1

    return-object v0

    :cond_11
    monitor-exit p1

    .line 1308
    :cond_12
    return-object v1

    .line 1302
    :catchall_13
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 4

    .prologue
    .line 4379
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4380
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    .line 4379
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 4632
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 4633
    const-string/jumbo v0, "SYSTEM"

    return-object v0

    .line 4635
    :cond_c
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 4636
    const-string/jumbo v0, "NETWORK"

    return-object v0

    .line 4638
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 2460
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2462
    if-eqz v0, :cond_2e

    .line 2463
    const/16 v1, 0x3e8

    if-eq v1, p2, :cond_2e

    iget v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq v1, p2, :cond_2e

    .line 2464
    const-string/jumbo v1, "UID %d attempted to %s for unowned request %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 2465
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 2464
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2466
    return-object v5

    .line 2470
    :cond_2e
    return-object v0
.end method

.method private getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 3760
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 3763
    :try_start_b
    new-instance v1, Ljava/io/FileReader;

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_12} :catch_ba
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_99
    .catchall {:try_start_b .. :try_end_12} :catchall_dd

    .line 3764
    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3765
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 3766
    const-string/jumbo v0, "provisioningUrls"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3769
    :cond_1f
    :goto_1f
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3771
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_25} :catch_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_25} :catch_ec
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_ee
    .catchall {:try_start_12 .. :try_end_25} :catchall_e7

    move-result-object v0

    .line 3772
    if-nez v0, :cond_2e

    .line 3799
    if-eqz v1, :cond_2d

    .line 3801
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_97

    .line 3791
    :cond_2d
    :goto_2d
    return-object v2

    .line 3774
    :cond_2e
    :try_start_2e
    const-string/jumbo v5, "provisioningUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3775
    const-string/jumbo v0, "mcc"

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_3e} :catch_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_3e} :catch_ec
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3e} :catch_ee
    .catchall {:try_start_2e .. :try_end_3e} :catchall_e7

    move-result-object v0

    .line 3777
    if-eqz v0, :cond_1f

    :try_start_41
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v5, v3, Landroid/content/res/Configuration;->mcc:I

    if-ne v0, v5, :cond_1f

    .line 3778
    const-string/jumbo v0, "mnc"

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3779
    if-eqz v0, :cond_1f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v5, v3, Landroid/content/res/Configuration;->mnc:I

    if-ne v0, v5, :cond_1f

    .line 3780
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3781
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1f

    .line 3782
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_68} :catch_71
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_68} :catch_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_68} :catch_ec
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_68} :catch_ee
    .catchall {:try_start_41 .. :try_end_68} :catchall_e7

    move-result-object v0

    .line 3799
    if-eqz v1, :cond_6e

    .line 3801
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 3782
    :cond_6e
    :goto_6e
    return-object v0

    .line 3802
    :catch_6f
    move-exception v1

    goto :goto_6e

    .line 3786
    :catch_71
    move-exception v0

    .line 3787
    :try_start_72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_89} :catch_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_72 .. :try_end_89} :catch_ec
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_89} :catch_ee
    .catchall {:try_start_72 .. :try_end_89} :catchall_e7

    goto :goto_1f

    .line 3792
    :catch_8a
    move-exception v0

    .line 3793
    :goto_8b
    :try_start_8b
    const-string/jumbo v0, "Carrier Provisioning Urls file not found"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_e7

    .line 3799
    if-eqz v1, :cond_96

    .line 3801
    :try_start_93
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_db

    .line 3805
    :cond_96
    :goto_96
    return-object v2

    .line 3802
    :catch_97
    move-exception v0

    goto :goto_2d

    .line 3796
    :catch_99
    move-exception v0

    move-object v1, v2

    .line 3797
    :goto_9b
    :try_start_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_9b .. :try_end_b2} :catchall_e7

    .line 3799
    if-eqz v1, :cond_96

    .line 3801
    :try_start_b4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_96

    .line 3802
    :catch_b8
    move-exception v0

    goto :goto_96

    .line 3794
    :catch_ba
    move-exception v0

    move-object v1, v2

    .line 3795
    :goto_bc
    :try_start_bc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_bc .. :try_end_d3} :catchall_e7

    .line 3799
    if-eqz v1, :cond_96

    .line 3801
    :try_start_d5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    goto :goto_96

    .line 3802
    :catch_d9
    move-exception v0

    goto :goto_96

    :catch_db
    move-exception v0

    goto :goto_96

    .line 3798
    :catchall_dd
    move-exception v0

    move-object v1, v2

    .line 3799
    :goto_df
    if-eqz v1, :cond_e4

    .line 3801
    :try_start_e1
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    .line 3798
    :cond_e4
    :goto_e4
    throw v0

    .line 3802
    :catch_e5
    move-exception v1

    goto :goto_e4

    .line 3798
    :catchall_e7
    move-exception v0

    goto :goto_df

    .line 3792
    :catch_e9
    move-exception v0

    move-object v1, v2

    goto :goto_8b

    .line 3794
    :catch_ec
    move-exception v0

    goto :goto_bc

    .line 3796
    :catch_ee
    move-exception v0

    goto :goto_9b
.end method

.method private getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4076
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 4077
    monitor-enter p1

    .line 4078
    :try_start_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4079
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4080
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v3

    .line 4079
    if-eqz v3, :cond_10

    .line 4081
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_3e

    goto :goto_10

    .line 4077
    :catchall_3e
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_41
    monitor-exit p1

    .line 4085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 984
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 986
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v2

    .line 987
    if-eqz v2, :cond_1f

    .line 993
    array-length v1, v2

    if-lez v1, :cond_15

    .line 994
    aget-object v0, v2, v3

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1000
    :cond_15
    :goto_15
    if-eqz v0, :cond_1c

    .line 1001
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v0

    return-object v0

    .line 1003
    :cond_1c
    sget-object v0, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object v0

    :cond_1f
    move-object v0, v1

    goto :goto_15
.end method

.method private getVpnUnderlyingNetworks(I)[Landroid/net/Network;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 971
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v0, :cond_1f

    .line 972
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 973
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 974
    :try_start_c
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 976
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_20

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_1e
    monitor-exit v1

    .line 980
    :cond_1f
    return-object v3

    .line 973
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3286
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3287
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3286
    if-eqz v1, :cond_1a

    move-object p1, v0

    .line 3290
    :cond_1a
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3291
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_96

    move-result v0

    if-eqz v0, :cond_2b

    monitor-exit v1

    return-void

    .line 3292
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_96

    if-ne v0, p1, :cond_31

    monitor-exit v1

    return-void

    .line 3293
    :cond_31
    if-eqz p1, :cond_58

    :try_start_33
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_58

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid proxy properties, ignoring: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_96

    monitor-exit v1

    .line 3295
    return-void

    .line 3303
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_85

    if-eqz p1, :cond_85

    .line 3304
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3303
    if-eqz v0, :cond_85

    .line 3305
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3303
    if-eqz v0, :cond_85

    .line 3306
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3307
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_83
    .catchall {:try_start_58 .. :try_end_83} :catchall_96

    monitor-exit v1

    .line 3308
    return-void

    .line 3310
    :cond_85
    :try_start_85
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 3312
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_96

    if-eqz v0, :cond_8d

    monitor-exit v1

    return-void

    .line 3313
    :cond_8d
    :try_start_8d
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_94

    .line 3314
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_96

    :cond_94
    monitor-exit v1

    .line 3317
    return-void

    .line 3290
    :catchall_96
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleAsyncChannelDisconnected(Landroid/os/Message;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 2260
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2261
    if-eqz v0, :cond_11f

    .line 2263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " got DISCONNECTED, was satisfying "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2270
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2271
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v3, v7, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    :cond_40
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v3

    .line 2275
    if-eqz v3, :cond_4b

    .line 2276
    iput v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 2281
    invoke-direct {p0, v7, v0}, Lcom/android/server/ConnectivityService;->logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2283
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 2288
    const v1, 0x80004

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2289
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 2290
    const/16 v4, -0x14

    .line 2289
    invoke-virtual {v1, v0, v4}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2291
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2293
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v1, v5, v2}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    goto :goto_65

    .line 2295
    :cond_77
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v4, 0x82007

    invoke-virtual {v1, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 2296
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->maybeStopClat()V

    .line 2298
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2301
    :try_start_8c
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_be

    monitor-exit v1

    move v1, v2

    .line 2304
    :goto_97
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v4

    if-ge v1, v4, :cond_c1

    .line 2305
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v4

    .line 2306
    iget v5, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 2307
    if-eqz v5, :cond_bb

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    iget-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    if-ne v5, v6, :cond_bb

    .line 2308
    iget v5, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 2309
    invoke-direct {p0, v4, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 2304
    :cond_bb
    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    .line 2298
    :catchall_be
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2312
    :cond_c1
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 2313
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 2314
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2315
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2316
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->ensureNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 2318
    :cond_db
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 2319
    invoke-direct {p0, v7, v2}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2320
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/LingerMonitor;->noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2321
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_f5

    .line 2331
    :try_start_ec
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->removeNetwork(I)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f5} :catch_103

    .line 2336
    :cond_f5
    :goto_f5
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2337
    :try_start_f8
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_101
    .catchall {:try_start_f8 .. :try_end_101} :catchall_11c

    monitor-exit v1

    .line 2343
    :cond_102
    :goto_102
    return-void

    .line 2332
    :catch_103
    move-exception v1

    .line 2333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception removing network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_f5

    .line 2336
    :catchall_11c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2340
    :cond_11f
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2341
    if-eqz v0, :cond_102

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkFactory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_102
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2222
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 2223
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 2224
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_4a

    .line 2227
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2228
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2229
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 2231
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    :goto_3f
    iget-object v1, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2230
    const v5, 0x83000

    invoke-virtual {v0, v5, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1d

    :cond_48
    move v2, v3

    .line 2231
    goto :goto_3f

    .line 2234
    :cond_4a
    const-string/jumbo v0, "Error connecting NetworkFactory"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2235
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    :cond_57
    :goto_57
    return-void

    .line 2237
    :cond_58
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2238
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_79

    .line 2241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2242
    const v1, 0x11001

    .line 2241
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_57

    .line 2244
    :cond_79
    const-string/jumbo v0, "Error connecting NetworkAgent"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2246
    if-eqz v0, :cond_57

    .line 2247
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    .line 2248
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 2249
    :try_start_92
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 2250
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_a4
    .catchall {:try_start_92 .. :try_end_a4} :catchall_ab

    monitor-exit v2

    .line 2253
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_57

    .line 2248
    :catchall_ab
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3334
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3335
    const-string/jumbo v1, "http_proxy"

    .line 3334
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 3337
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3338
    array-length v0, v1

    if-nez v0, :cond_20

    .line 3339
    return-void

    .line 3342
    :cond_20
    aget-object v0, v1, v3

    .line 3343
    const/16 v0, 0x1f90

    .line 3344
    array-length v2, v1

    if-le v2, v4, :cond_2e

    .line 3346
    const/4 v0, 0x1

    :try_start_28
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2d} :catch_3c

    move-result v0

    .line 3351
    :cond_2e
    new-instance v2, Landroid/net/ProxyInfo;

    aget-object v1, v1, v3

    const-string/jumbo v3, ""

    invoke-direct {v2, v1, v0, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3352
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 3354
    :cond_3b
    return-void

    .line 3347
    :catch_3c
    move-exception v0

    .line 3348
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .prologue
    .line 4845
    if-nez p1, :cond_9

    .line 4846
    const-string/jumbo v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4847
    return-void

    .line 4849
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleLingerComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4853
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 4855
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4857
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4863
    :goto_32
    return-void

    .line 4860
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 4861
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4860
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_32
.end method

.method private handleMobileDataAlwaysOn()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 893
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data_always_on"

    .line 892
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v1

    .line 894
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 895
    :goto_1d
    if-ne v1, v0, :cond_22

    .line 896
    return-void

    .line 894
    :cond_20
    const/4 v0, 0x0

    goto :goto_1d

    .line 899
    :cond_22
    if-eqz v1, :cond_34

    .line 900
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 901
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 900
    invoke-direct {v0, p0, v4, v1, v2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 905
    :goto_33
    return-void

    .line 903
    :cond_34
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    goto :goto_33
.end method

.method private handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .prologue
    .line 2772
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleNetworkUnvalidated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2775
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2776
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->shouldNotifyWifiUnvalidated()Z

    move-result v0

    .line 2775
    if-eqz v0, :cond_3c

    .line 2777
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2779
    :cond_3c
    return-void
.end method

.method private handlePromptUnvalidated(Landroid/net/Network;)V
    .registers 4

    .prologue
    .line 2759
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2764
    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v1, :cond_1c

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-nez v1, :cond_1c

    .line 2765
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    xor-int/lit8 v1, v1, 0x1

    .line 2764
    if-nez v1, :cond_1c

    .line 2765
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 2764
    if-eqz v1, :cond_1d

    .line 2766
    :cond_1c
    return-void

    .line 2768
    :cond_1d
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2769
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6

    .prologue
    .line 4433
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4434
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4435
    :try_start_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_28

    monitor-exit v1

    .line 4437
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 4438
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4439
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4440
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 4441
    return-void

    .line 4434
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    .registers 6

    .prologue
    .line 4321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Got NetworkFactory Messenger for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4322
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4323
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 4324
    return-void
.end method

.method private handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2373
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REGISTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2375
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2376
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2377
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2378
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    .line 2377
    if-eqz v2, :cond_34

    .line 2379
    const-string/jumbo v2, "REGISTER"

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    goto :goto_34

    .line 2383
    :cond_5b
    invoke-direct {p0, v5, v4}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2384
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-nez v0, :cond_75

    .line 2385
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0, v4}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 2387
    :cond_75
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 2361
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2363
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v1

    .line 2364
    if-eqz v1, :cond_42

    .line 2365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Replacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2366
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2366
    const-string/jumbo v3, " because their intents matched."

    .line 2365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2367
    iget-object v1, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 2369
    :cond_42
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 2370
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    .registers 6

    .prologue
    .line 2489
    const-string/jumbo v0, "release NetworkRequest"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 2490
    if-nez v0, :cond_a

    .line 2491
    return-void

    .line 2493
    :cond_a
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (release request)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2496
    :cond_32
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 2497
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .registers 4

    .prologue
    .line 2391
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 2392
    if-eqz v0, :cond_b

    .line 2393
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 2395
    :cond_b
    return-void
.end method

.method private handleReleaseNetworkTransitionWakelock(I)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3079
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v0

    .line 3080
    monitor-enter p0

    .line 3081
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 3082
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    const-string/jumbo v2, "RELEASE: already released (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3083
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "expected Net Transition WakeLock to be held"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_5c

    monitor-exit p0

    .line 3084
    return-void

    .line 3086
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v2, v4

    .line 3088
    iget-wide v4, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 3089
    iget-wide v4, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 3090
    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_5c

    monitor-exit p0

    .line 3092
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    const-string/jumbo v2, "RELEASE (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3093
    return-void

    .line 3080
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2500
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    .line 2501
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 2503
    :try_start_f
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2504
    if-ge v0, v2, :cond_123

    .line 2505
    sget-object v4, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BUG: too small request count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " for UID "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2506
    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 2505
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_134

    :goto_40
    monitor-exit v3

    .line 2514
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RELEASE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2515
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 2517
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 2518
    if-eqz v4, :cond_1e2

    .line 2519
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v3

    .line 2520
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 2527
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 2528
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, v4, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 2529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no live requests for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "; disconnecting"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2530
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    move v0, v1

    .line 2534
    :goto_ac
    iget-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 2535
    if-nez v3, :cond_145

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v3

    if-eqz v3, :cond_1df

    .line 2537
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    iget-object v5, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    move v3, v0

    .line 2547
    :goto_c5
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_cf
    :goto_cf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2548
    iget-object v6, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v6

    if-eqz v6, :cond_cf

    if-eq v0, v4, :cond_cf

    .line 2549
    sget-object v6, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Request "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " satisfied by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2550
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 2549
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2550
    const-string/jumbo v7, ", but mNetworkAgentInfos says "

    .line 2549
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2551
    if-eqz v4, :cond_148

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 2549
    :goto_117
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 2507
    :cond_123
    if-ne v0, v2, :cond_137

    .line 2508
    :try_start_125
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    .line 2509
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 2508
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->removeAt(I)V
    :try_end_132
    .catchall {:try_start_125 .. :try_end_132} :catchall_134

    goto/16 :goto_40

    .line 2502
    :catchall_134
    move-exception v0

    monitor-exit v3

    throw v0

    .line 2511
    :cond_137
    :try_start_137
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_140
    .catchall {:try_start_137 .. :try_end_140} :catchall_134

    goto/16 :goto_40

    :cond_142
    move v0, v2

    .line 2532
    goto/16 :goto_ac

    :cond_145
    move v3, v0

    .line 2535
    goto/16 :goto_c5

    .line 2551
    :cond_148
    const-string/jumbo v0, "null"

    goto :goto_117

    .line 2560
    :cond_14c
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_185

    if-eqz v4, :cond_185

    .line 2562
    if-eqz v3, :cond_17a

    move v0, v1

    .line 2565
    :goto_158
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v3

    if-ge v0, v3, :cond_17a

    .line 2566
    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v3

    .line 2567
    iget v5, v3, Landroid/net/NetworkRequest;->legacyType:I

    iget-object v6, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v5, v6, :cond_177

    .line 2568
    invoke-virtual {v3}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v3

    .line 2567
    if-eqz v3, :cond_177

    .line 2569
    const-string/jumbo v2, " still have other legacy request - leaving"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    move v2, v1

    .line 2565
    :cond_177
    add-int/lit8 v0, v0, 0x1

    goto :goto_158

    .line 2575
    :cond_17a
    if-eqz v2, :cond_185

    .line 2576
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 2580
    :cond_185
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 2581
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2582
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 2581
    const v3, 0x83001

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_18f

    .line 2587
    :cond_1a6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b0
    :goto_1b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1de

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2588
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 2589
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_1b0

    .line 2590
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    .line 2589
    if-eqz v2, :cond_1b0

    .line 2591
    const-string/jumbo v2, "RELEASE"

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    goto :goto_1b0

    .line 2595
    :cond_1de
    return-void

    :cond_1df
    move v3, v0

    goto/16 :goto_c5

    :cond_1e2
    move v3, v1

    goto/16 :goto_c5
.end method

.method private handleReportNetworkConnectivity(Landroid/net/Network;IZ)V
    .registers 8

    .prologue
    .line 3116
    if-nez p1, :cond_13

    .line 3117
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3121
    :goto_6
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_18

    .line 3123
    :cond_12
    return-void

    .line 3119
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    goto :goto_6

    .line 3122
    :cond_18
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_12

    .line 3126
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-ne p3, v1, :cond_27

    .line 3127
    return-void

    .line 3130
    :cond_27
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    .line 3131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportNetworkConnectivity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3135
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v1, :cond_5d

    .line 3136
    return-void

    .line 3138
    :cond_5d
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 3139
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 3140
    return-void

    .line 3142
    :cond_69
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82008

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 3143
    return-void
.end method

.method private handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 8

    .prologue
    .line 2611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleSetAcceptUnvalidated network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2612
    const-string/jumbo v1, " accept="

    .line 2611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2612
    const-string/jumbo v1, " always="

    .line 2611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2614
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2615
    if-nez v0, :cond_34

    .line 2617
    return-void

    .line 2620
    :cond_34
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v1, :cond_39

    .line 2622
    return-void

    .line 2625
    :cond_39
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v1, :cond_47

    .line 2626
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_47
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eq p2, v1, :cond_5b

    .line 2630
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 2631
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean p2, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 2632
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2633
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2636
    :cond_5b
    if-eqz p3, :cond_69

    .line 2637
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2638
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    const v3, 0x81009

    .line 2637
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2641
    :cond_69
    if-nez p2, :cond_76

    .line 2643
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100f

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2645
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2648
    :cond_76
    return-void
.end method

.method private handleSetAvoidUnvalidated(Landroid/net/Network;)V
    .registers 5

    .prologue
    .line 2651
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2652
    if-eqz v0, :cond_a

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_b

    .line 2654
    :cond_a
    return-void

    .line 2656
    :cond_b
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-nez v1, :cond_1c

    .line 2657
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 2658
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    .line 2659
    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2660
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2662
    :cond_1c
    return-void
.end method

.method private handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2474
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 2475
    return-void

    .line 2477
    :cond_c
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2478
    return-void

    .line 2480
    :cond_17
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releasing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (timeout)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2483
    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 2484
    const v0, 0x80005

    const/4 v1, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 2485
    return-void
.end method

.method private handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 5

    .prologue
    .line 4333
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 4334
    if-nez v0, :cond_11

    .line 4335
    const-string/jumbo v0, "Failed to find Messenger in unregisterNetworkFactory"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4336
    return-void

    .line 4338
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkFactory for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4339
    return-void
.end method

.method private hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4244
    if-nez p1, :cond_5

    .line 4245
    return v3

    .line 4247
    :cond_5
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 4248
    array-length v1, v0

    if-ne v1, v4, :cond_10

    aget v0, v0, v3

    if-eq v0, v4, :cond_11

    .line 4249
    :cond_10
    return v3

    .line 4252
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 4253
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    .line 4254
    const-string/jumbo v2, "ConnectivityService"

    .line 4252
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1c} :catch_1d

    .line 4258
    return v4

    .line 4255
    :catch_1d
    move-exception v0

    .line 4256
    return v3
.end method

.method private isActiveNetworkMeteredCommon(I)Z
    .registers 4

    .prologue
    .line 1355
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1356
    if-eqz v0, :cond_11

    .line 1357
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1360
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 7

    .prologue
    .line 5699
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5700
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 5699
    if-eqz v0, :cond_1c

    .line 5701
    invoke-direct {p0, p4, p5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 5699
    if-eqz v0, :cond_1c

    .line 5702
    invoke-direct {p0, p2, p5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5699
    if-eqz v0, :cond_1c

    .line 5703
    const/4 v0, 0x1

    return v0

    .line 5705
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 3

    .prologue
    .line 4401
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z
    .registers 4

    .prologue
    .line 4405
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1991
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    if-nez v0, :cond_6

    return v3

    .line 1992
    :cond_6
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1993
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    return v0

    .line 1994
    :cond_16
    if-nez v0, :cond_19

    .line 1998
    :goto_18
    return v3

    .line 1995
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - isLiveNetworkAgent found mismatched netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1996
    const-string/jumbo v1, " - "

    .line 1995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5650
    if-eqz p1, :cond_11

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_11

    .line 5651
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 5650
    if-eqz v0, :cond_11

    .line 5652
    const/4 v0, 0x1

    return v0

    .line 5654
    :cond_11
    return v1
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1013
    if-eqz p3, :cond_4

    .line 1014
    return v1

    .line 1018
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1019
    return v1

    .line 1021
    :cond_b
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1022
    :try_start_e
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 1023
    if-eqz v0, :cond_21

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_2e

    move-result v0

    if-eqz v0, :cond_21

    .line 1024
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_21
    monitor-exit v1

    .line 1027
    if-nez p1, :cond_31

    const-string/jumbo v0, ""

    .line 1028
    :goto_27
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidNetworkingBlocked(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1021
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1027
    :cond_31
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method private isSystem(I)Z
    .registers 3

    .prologue
    .line 4188
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isTetheringSupported()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3008
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v2, "ro.tether.denied"

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v0

    .line 3009
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3010
    const-string/jumbo v3, "tether_supported"

    .line 3009
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v0

    .line 3011
    if-eqz v0, :cond_4d

    .line 3012
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_tethering"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3016
    :goto_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3018
    :try_start_39
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_4f

    move-result v4

    .line 3020
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    if-eqz v0, :cond_4c

    if-eqz v4, :cond_4c

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->hasTetherableConfiguration()Z

    move-result v1

    :cond_4c
    return v1

    :cond_4d
    move v0, v1

    .line 3011
    goto :goto_35

    .line 3019
    :catchall_4f
    move-exception v0

    .line 3020
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3019
    throw v0
.end method

.method private loadGlobalProxy()V
    .registers 6

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3252
    const-string/jumbo v1, "global_http_proxy_host"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3253
    const-string/jumbo v2, "global_http_proxy_port"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3255
    const-string/jumbo v3, "global_http_proxy_exclusion_list"

    .line 3254
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3256
    const-string/jumbo v4, "global_proxy_pac_url"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3257
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6a

    .line 3259
    :cond_31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 3260
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 3264
    :goto_3c
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_64

    .line 3265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid proxy properties, ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3266
    return-void

    .line 3262
    :cond_5e
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3c

    .line 3269
    :cond_64
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3270
    :try_start_67
    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_6b

    monitor-exit v1

    .line 3273
    :cond_6a
    return-void

    .line 3269
    :catchall_6b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3407
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    return-void
.end method

.method private logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 5619
    new-array v2, v3, [I

    .line 5623
    if-eqz p1, :cond_42

    .line 5624
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v0, Landroid/net/Network;->netId:I

    .line 5625
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    .line 5627
    :goto_f
    if-eqz p2, :cond_3f

    .line 5628
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v0, Landroid/net/Network;->netId:I

    .line 5629
    iget-object v5, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 5630
    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v0

    .line 5631
    :goto_21
    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v5}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v3

    move v5, v3

    move v3, v4

    move v4, v0

    .line 5634
    :goto_2e
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(I[IIZZ)V

    invoke-virtual {v6, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    .line 5635
    return-void

    :cond_39
    move v0, v3

    .line 5630
    goto :goto_21

    :cond_3b
    move v5, v3

    move v3, v4

    move v4, v0

    .line 5631
    goto :goto_2e

    :cond_3f
    move v5, v3

    move v4, v3

    goto :goto_2e

    :cond_42
    move v1, v3

    goto :goto_f
.end method

.method private logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 6

    .prologue
    .line 5638
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v1, Landroid/net/metrics/NetworkEvent;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-direct {v1, v2, p2}, Landroid/net/metrics/NetworkEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    .line 5639
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3411
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 3415
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3416
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .prologue
    .line 4866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Switching to new default network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4867
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4869
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_3c

    .line 4873
    :goto_23
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4874
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 4875
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4876
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 4877
    return-void

    .line 4870
    :catch_3c
    move-exception v0

    .line 4871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception setting default network :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_23
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v0, :cond_f

    .line 1566
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1567
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    move-object p1, v0

    .line 1570
    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1571
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1572
    const-string/jumbo v1, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1573
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1574
    const-string/jumbo v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1575
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 1577
    :cond_3a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 1578
    const-string/jumbo v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    :cond_4a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 1581
    const-string/jumbo v1, "extraInfo"

    .line 1582
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 1581
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    :cond_5a
    const-string/jumbo v1, "inetCondition"

    iget v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1585
    return-object v0
.end method

.method private makeTethering()Lcom/android/server/connectivity/Tethering;
    .registers 9

    .prologue
    .line 863
    new-instance v7, Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-direct {v7}, Lcom/android/server/connectivity/tethering/TetheringDependencies;-><init>()V

    .line 864
    new-instance v0, Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 865
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v6, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v6}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    .line 864
    invoke-direct/range {v0 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    return-object v0
.end method

.method private maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1032
    if-eqz p1, :cond_55

    .line 1036
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    monitor-enter v3

    .line 1037
    :try_start_7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v4, :cond_56

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_6c

    move-result v0

    if-eqz v0, :cond_56

    move v0, v1

    :goto_1c
    monitor-exit v3

    .line 1045
    if-eqz v0, :cond_6f

    const-string/jumbo v0, "BLOCKED"

    .line 1046
    :goto_22
    const-string/jumbo v3, "Returning %s NetworkInfo to uid=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1047
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1048
    return-void

    .line 1033
    :cond_55
    return-void

    .line 1039
    :cond_56
    :try_start_56
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_6c

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v2

    .line 1040
    goto :goto_1c

    :cond_6a
    monitor-exit v3

    .line 1042
    return-void

    .line 1036
    :catchall_6c
    move-exception v0

    monitor-exit v3

    throw v0

    .line 1045
    :cond_6f
    const-string/jumbo v0, "UNBLOCKED"

    goto :goto_22
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 920
    :try_start_1
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyIfacesChangedForNetworkStats()V
    .registers 2

    .prologue
    .line 5474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdateIfaces()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 5477
    :goto_5
    return-void

    .line 5475
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .prologue
    .line 5239
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v0, :cond_13

    .line 5240
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5241
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    .line 5246
    :cond_13
    :goto_13
    return-void

    .line 5243
    :cond_14
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged()V

    goto :goto_13
.end method

.method private onUserAdded(I)V
    .registers 6

    .prologue
    .line 3909
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3910
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3911
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1c

    .line 3912
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 3913
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    .line 3911
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_1c
    monitor-exit v2

    .line 3916
    return-void

    .line 3909
    :catchall_1e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private onUserRemoved(I)V
    .registers 6

    .prologue
    .line 3919
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3920
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3921
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1c

    .line 3922
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 3923
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1e

    .line 3921
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_1c
    monitor-exit v2

    .line 3926
    return-void

    .line 3919
    :catchall_1e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private onUserStart(I)V
    .registers 7

    .prologue
    .line 3866
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3867
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3868
    if-eqz v0, :cond_11

    .line 3869
    const-string/jumbo v0, "Starting user already has a VPN"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3a

    monitor-exit v1

    .line 3870
    return-void

    .line 3872
    :cond_11
    :try_start_11
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {v0, v2, v3, v4, p1}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;I)V

    .line 3873
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->setVpn(ILcom/android/server/connectivity/Vpn;)V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_3a

    monitor-exit v1

    .line 3875
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3876
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 3878
    :cond_39
    return-void

    .line 3866
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUserStop(I)V
    .registers 4

    .prologue
    .line 3897
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3898
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3899
    if-nez v0, :cond_11

    .line 3900
    const-string/jumbo v0, "Stopped user has no VPN"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    monitor-exit v1

    .line 3901
    return-void

    .line 3903
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 3904
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1b

    monitor-exit v1

    .line 3906
    return-void

    .line 3897
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUserUnlocked(I)V
    .registers 3

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3931
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 3935
    :goto_15
    return-void

    .line 3933
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    goto :goto_15
.end method

.method private processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 7

    .prologue
    .line 4881
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4882
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4883
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4884
    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    .line 4885
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 4886
    const v2, 0x80004

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_a

    .line 4890
    :cond_3d
    if-eqz p2, :cond_45

    .line 4891
    const v0, 0x80006

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4894
    :cond_45
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4895
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4896
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 4897
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4f

    .line 4898
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    .line 4899
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_4f

    .line 4902
    :cond_7a
    return-void
.end method

.method private proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .registers 6

    .prologue
    .line 3195
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 3196
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 3199
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 4828
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4829
    return-void
.end method

.method private registerSettingsCallbacks()V
    .registers 4

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 910
    const-string/jumbo v1, "http_proxy"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 911
    const/16 v2, 0x9

    .line 909
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 914
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 915
    const-string/jumbo v1, "mobile_data_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 916
    const/16 v2, 0x1e

    .line 914
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 917
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .registers 7

    .prologue
    .line 4227
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4228
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4229
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 4228
    const/16 v3, 0x1b

    .line 4229
    const/4 v4, 0x0

    .line 4228
    invoke-virtual {v1, v3, v2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4229
    iget v2, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    int-to-long v2, v2

    .line 4227
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4230
    return-void
.end method

.method private rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 10

    .prologue
    .line 5201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5202
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    if-ge p2, v0, :cond_12

    .line 5203
    sget-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 5221
    :cond_11
    return-void

    .line 5205
    :cond_12
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 5206
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5205
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5210
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 5211
    const/4 v1, 0x0

    array-length v3, v0

    move v2, v1

    :goto_2c
    if-ge v2, v3, :cond_11

    aget-object v6, v0, v2

    .line 5216
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    if-eq v6, v1, :cond_40

    sget-object v1, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    .line 5212
    :goto_39
    invoke-direct {p0, v6, v1, v4, v5}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 5211
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2c

    .line 5217
    :cond_40
    sget-object v1, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    goto :goto_39
.end method

.method private rematchForAvoidBadWifiUpdate()V
    .registers 5

    .prologue
    .line 2687
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2688
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2689
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2690
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_f

    .line 2693
    :cond_28
    return-void
.end method

.method private rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V
    .registers 26

    .prologue
    .line 4933
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v4, :cond_7

    return-void

    .line 4934
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v6

    .line 4935
    const/4 v5, 0x0

    .line 4936
    const/4 v4, 0x0

    .line 4938
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v14

    .line 4939
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v15

    .line 4945
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4946
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 4947
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v18, v0

    .line 4949
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object v12, v4

    move v13, v5

    move v10, v6

    :goto_34
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4954
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v4}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v4

    if-eqz v4, :cond_50

    move-object v4, v12

    move v5, v13

    move v6, v10

    :goto_4c
    move-object v12, v4

    move v13, v5

    move v10, v6

    goto :goto_34

    .line 4956
    :cond_50
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService;->getNetworkForRequest(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 4957
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v6

    .line 4958
    const/4 v4, 0x0

    .line 4960
    if-eqz v6, :cond_73

    .line 4962
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4963
    iget-object v6, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v6, v6, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4961
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v4

    .line 4966
    :cond_73
    move-object/from16 v0, p1

    if-ne v0, v5, :cond_7e

    if-eqz v4, :cond_7e

    .line 4971
    const/4 v10, 0x1

    move-object v4, v12

    move v5, v13

    move v6, v10

    .line 4972
    goto :goto_4c

    .line 4977
    :cond_7e
    if-eqz v4, :cond_127

    .line 4985
    if-eqz v5, :cond_9c

    .line 4987
    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4989
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4990
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v9, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    .line 4986
    invoke-direct/range {v4 .. v9}, Lcom/android/server/ConnectivityService;->isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v4

    .line 4985
    if-nez v4, :cond_9c

    .line 4991
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    if-ge v4, v15, :cond_122

    .line 4993
    :cond_9c
    if-eqz v5, :cond_b6

    .line 4995
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v5, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 4996
    iget-object v6, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    int-to-long v9, v4

    move-wide/from16 v7, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    .line 4997
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5001
    :cond_b6
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    .line 5002
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/ConnectivityService;->setNetworkForRequest(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5003
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    move-result v4

    if-nez v4, :cond_fc

    .line 5004
    sget-object v4, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BUG: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " already has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    :cond_fc
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5007
    const/4 v10, 0x1

    .line 5013
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 5014
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/ConnectivityService;->isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z

    move-result v4

    if-eqz v4, :cond_384

    .line 5015
    const/4 v13, 0x1

    .line 5017
    if-eqz v5, :cond_389

    .line 5018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/server/connectivity/LingerMonitor;->noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    move-object v4, v5

    move v6, v10

    move v5, v13

    goto/16 :goto_4c

    :cond_122
    move-object v4, v12

    move v5, v13

    move v6, v10

    .line 4991
    goto/16 :goto_4c

    .line 5022
    :cond_127
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v4

    if-eqz v4, :cond_384

    .line 5031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " stopped satisfying"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5032
    const-string/jumbo v6, " request "

    .line 5031
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5032
    iget-object v6, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    .line 5031
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5034
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 5035
    move-object/from16 v0, p1

    if-ne v5, v0, :cond_190

    .line 5036
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService;->clearNetworkForRequest(I)V

    .line 5037
    iget-object v4, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    .line 5050
    :goto_182
    const v4, 0x80004

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v11, v0, v4, v5}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    move-object v4, v12

    move v5, v13

    move v6, v10

    goto/16 :goto_4c

    .line 5039
    :cond_190
    sget-object v4, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BUG: Removing request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5040
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    .line 5039
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5041
    const-string/jumbo v6, " without updating mNetworkForRequestId or factories!"

    .line 5039
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    .line 5053
    :cond_1c4
    if-eqz v13, :cond_1d3

    .line 5055
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5057
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/ConnectivityService;->logDefaultNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5059
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->scheduleReleaseNetworkTransitionWakelock()V

    .line 5062
    :cond_1d3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-nez v4, :cond_1ff

    .line 5063
    sget-object v4, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    .line 5064
    const-string/jumbo v5, "BUG: %s changed requestable capabilities during rematch: %s -> %s"

    .line 5063
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 5065
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v18, v6, v7

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 5063
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    :cond_1ff
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    if-eq v4, v15, :cond_22d

    .line 5068
    sget-object v4, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    .line 5069
    const-string/jumbo v5, "BUG: %s changed score during rematch: %d -> %d"

    .line 5068
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 5070
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 5068
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    :cond_22d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v4

    if-eq v14, v4, :cond_256

    .line 5079
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v15, v1, v4}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 5086
    :goto_23e
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_242
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_242

    .line 5081
    :cond_256
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_23e

    .line 5090
    :cond_25f
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_263
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_277

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5091
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    goto :goto_263

    .line 5095
    :cond_277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 5097
    if-eqz v13, :cond_2b2

    .line 5102
    if-eqz v12, :cond_292

    .line 5103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v5, v12, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 5104
    const/4 v6, 0x1

    .line 5103
    invoke-virtual {v4, v5, v12, v6}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 5106
    :cond_292
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v4, :cond_315

    const/16 v4, 0x64

    :goto_29a
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 5107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5108
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5111
    :cond_2b2
    if-eqz v10, :cond_328

    .line 5116
    :try_start_2b4
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    .line 5117
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 5119
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 5120
    invoke-interface {v5, v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 5121
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2d7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ef

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    .line 5122
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 5123
    invoke-interface {v5, v4, v6}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 5124
    invoke-static {v4, v7}, Lcom/android/internal/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ed
    .catch Landroid/os/RemoteException; {:try_start_2b4 .. :try_end_2ed} :catch_2ee

    goto :goto_2d7

    .line 5126
    :catch_2ee
    move-exception v4

    .line 5143
    :cond_2ef
    const/4 v4, 0x0

    :goto_2f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v5

    if-ge v4, v5, :cond_317

    .line 5144
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v5

    .line 5145
    iget v6, v5, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_312

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v6

    if-eqz v6, :cond_312

    .line 5147
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v5, v5, Landroid/net/NetworkRequest;->legacyType:I

    move-object/from16 v0, p1

    invoke-virtual {v6, v5, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5143
    :cond_312
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f0

    .line 5106
    :cond_315
    const/4 v4, 0x0

    goto :goto_29a

    .line 5155
    :cond_317
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v4

    if-eqz v4, :cond_328

    .line 5156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    const/16 v5, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5159
    :cond_328
    sget-object v4, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_383

    .line 5160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33a
    :goto_33a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_383

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 5161
    sget-object v6, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v6

    if-eqz v6, :cond_33a

    .line 5162
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_362

    .line 5170
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    goto :goto_33a

    .line 5172
    :cond_362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reaping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5173
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_33a

    .line 5178
    :cond_383
    return-void

    :cond_384
    move-object v4, v12

    move v5, v13

    move v6, v10

    goto/16 :goto_4c

    :cond_389
    move-object v4, v5

    move v6, v10

    move v5, v13

    goto/16 :goto_4c
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .prologue
    .line 1713
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1714
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1716
    if-eqz v0, :cond_1d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1717
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    .line 1716
    if-eqz v1, :cond_1d

    .line 1720
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 1725
    :cond_1d
    :goto_1d
    return-void

    .line 1721
    :catch_1e
    move-exception v0

    .line 1722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in removeDataActivityTracking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 4

    .prologue
    .line 5671
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getIntSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    if-gez v0, :cond_11

    .line 5672
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0

    .line 5674
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5658
    if-eqz p1, :cond_1a

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5659
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getIntSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 5661
    return v3

    .line 5663
    :cond_19
    return v2

    .line 5666
    :cond_1a
    return v3
.end method

.method private scheduleReleaseNetworkTransitionWakelock()V
    .registers 5

    .prologue
    .line 3065
    monitor-enter p0

    .line 3066
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_23

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    .line 3067
    return-void

    :cond_b
    monitor-exit p0

    .line 3071
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3072
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3073
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3074
    return-void

    .line 3065
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 2667
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2668
    const-wide/16 v2, 0x1f40

    .line 2666
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2669
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .registers 20

    .prologue
    .line 1593
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1594
    const-string/jumbo v2, "deviceType"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1595
    const-string/jumbo v2, "isActive"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1596
    const-string/jumbo v2, "tsNanos"

    move-wide/from16 v0, p3

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1599
    :try_start_24
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1600
    const-string/jumbo v5, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1599
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_37

    .line 1602
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1604
    return-void

    .line 1601
    :catchall_37
    move-exception v2

    .line 1602
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1601
    throw v2
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1589
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1590
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3

    .prologue
    .line 1561
    const-string/jumbo v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1562
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 4765
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4767
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4768
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_26
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_26} :catch_27

    .line 4775
    :goto_26
    return-void

    .line 4769
    :catch_27
    move-exception v0

    .line 4770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " was not sent, it had been canceled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4771
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4772
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    goto :goto_26
.end method

.method private sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 5406
    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 5407
    invoke-virtual {v1, p3}, Landroid/net/NetworkInfo;->setType(I)V

    .line 5408
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v2, :cond_1b

    .line 5409
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5410
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 5443
    :cond_1a
    :goto_1a
    return-void

    .line 5412
    :cond_1b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5413
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5414
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5415
    const-string/jumbo v3, "networkType"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5416
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 5417
    const-string/jumbo v3, "isFailover"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5418
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 5420
    :cond_50
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 5421
    const-string/jumbo v3, "reason"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5423
    :cond_60
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 5424
    const-string/jumbo v3, "extraInfo"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5427
    :cond_70
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 5428
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 5429
    if-eqz v0, :cond_9b

    .line 5430
    const-string/jumbo v1, "otherNetwork"

    .line 5431
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5430
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5436
    :cond_88
    :goto_88
    const-string/jumbo v1, "inetCondition"

    .line 5437
    iget v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 5436
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5438
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5439
    if-eqz v0, :cond_1a

    .line 5440
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_1a

    .line 5433
    :cond_9b
    const-string/jumbo v1, "noConnectivity"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_88
.end method

.method private sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 7

    .prologue
    .line 4754
    const v0, 0x80002

    if-ne p3, v0, :cond_28

    iget-boolean v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    .line 4755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4756
    const-string/jumbo v1, "android.net.extra.NETWORK"

    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4757
    const-string/jumbo v1, "android.net.extra.NETWORK_REQUEST"

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4758
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    .line 4759
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 4762
    :cond_28
    return-void
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    .registers 7

    .prologue
    .line 3357
    if-nez p1, :cond_e

    new-instance p1, Landroid/net/ProxyInfo;

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3358
    :cond_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 3359
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sending Proxy Broadcast for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3360
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3361
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3363
    const-string/jumbo v1, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3366
    :try_start_45
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_50

    .line 3368
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3370
    return-void

    .line 3367
    :catchall_50
    move-exception v0

    .line 3368
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3367
    throw v0
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1607
    monitor-enter p0

    .line 1608
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_d

    .line 1609
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 1611
    :cond_d
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1617
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1618
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1620
    const-string/jumbo v0, "networkInfo"

    .line 1619
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1621
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_64

    .line 1622
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1629
    :goto_3e
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;
    :try_end_41
    .catchall {:try_start_2 .. :try_end_41} :catchall_7e

    move-result-object v4

    .line 1632
    :try_start_42
    const-string/jumbo v5, "networkType"

    const/4 v6, -0x1

    .line 1631
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1633
    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1631
    :goto_54
    invoke-interface {v4, v5, v0}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_57} :catch_76
    .catchall {:try_start_42 .. :try_end_57} :catchall_7e

    move-object v0, v1

    .line 1638
    :goto_58
    :try_start_58
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v4, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_79

    .line 1640
    :try_start_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_7e

    monitor-exit p0

    .line 1643
    return-void

    .line 1625
    :cond_64
    :try_start_64
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1626
    const/16 v4, 0x17

    invoke-virtual {v1, v4}, Landroid/app/BroadcastOptions;->setMaxManifestReceiverApiLevel(I)V

    .line 1627
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_7e

    move-result-object v1

    goto :goto_3e

    .line 1633
    :cond_72
    :try_start_72
    const-string/jumbo v0, "?"
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_75} :catch_76
    .catchall {:try_start_72 .. :try_end_75} :catchall_7e

    goto :goto_54

    .line 1634
    :catch_76
    move-exception v0

    move-object v0, v1

    goto :goto_58

    .line 1639
    :catchall_79
    move-exception v0

    .line 1640
    :try_start_7a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    throw v0
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_7e

    .line 1607
    :catchall_7e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_81
    move-object v0, v1

    goto :goto_58
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V
    .registers 7

    .prologue
    .line 4746
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 4747
    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x83000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_a

    .line 4750
    :cond_20
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .prologue
    .line 4736
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 4737
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 4739
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4736
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4740
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;I)V

    goto :goto_11

    .line 4742
    :cond_1c
    return-void
.end method

.method private setDefaultDnsSystemProperties(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4609
    const/4 v0, 0x0

    .line 4610
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 4611
    add-int/lit8 v1, v1, 0x1

    .line 4612
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->setNetDnsProperty(ILjava/lang/String;)V

    goto :goto_6

    .line 4614
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    :goto_1e
    iget v2, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    if-gt v0, v2, :cond_2b

    .line 4615
    const-string/jumbo v2, ""

    invoke-direct {p0, v0, v2}, Lcom/android/server/ConnectivityService;->setNetDnsProperty(ILjava/lang/String;)V

    .line 4614
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 4617
    :cond_2b
    iput v1, p0, Lcom/android/server/ConnectivityService;->mNumDnsEntries:I

    .line 4618
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3634
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3635
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3636
    if-eqz v0, :cond_a

    .line 3637
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 3640
    :cond_a
    if-eqz p1, :cond_13

    .line 3641
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 3642
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 3644
    :cond_13
    return-void
.end method

.method private setNetDnsProperty(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 4621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "net.dns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4624
    :try_start_14
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    .line 4628
    :goto_19
    return-void

    .line 4625
    :catch_1a
    move-exception v0

    .line 4626
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error setting unsupported net.dns property: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method private setNetworkForRequest(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .prologue
    .line 4391
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4392
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 4394
    return-void

    .line 4391
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1677
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 1682
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1684
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1685
    const-string/jumbo v2, "data_activity_timeout_mobile"

    .line 1686
    const/16 v5, 0xa

    .line 1684
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1699
    :goto_20
    if-lez v0, :cond_2b

    if-eqz v4, :cond_2b

    if-eq v1, v3, :cond_2b

    .line 1701
    :try_start_26
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v4, v0, v1}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_48

    .line 1707
    :cond_2b
    :goto_2b
    return-void

    .line 1688
    :cond_2c
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1690
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1691
    const-string/jumbo v1, "data_activity_timeout_wifi"

    .line 1692
    const/16 v5, 0xf

    .line 1690
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v1, v2

    .line 1693
    goto :goto_20

    :cond_45
    move v0, v1

    move v1, v3

    .line 1696
    goto :goto_20

    .line 1702
    :catch_48
    move-exception v0

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in setupDataActivityTracking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private showValidationNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .registers 10

    .prologue
    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 2734
    invoke-static {}, Lcom/android/server/ConnectivityService;->-getcom-android-server-connectivity-NetworkNotificationManager$NotificationTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 2742
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    return-void

    .line 2736
    :pswitch_2a
    const-string/jumbo v0, "android.net.conn.PROMPT_UNVALIDATED"

    .line 2746
    :goto_2d
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2747
    const-string/jumbo v0, "netId"

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2748
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2749
    const-string/jumbo v0, "com.android.settings"

    .line 2750
    const-string/jumbo v1, "com.android.settings.wifi.WifiNoInternetDialog"

    .line 2749
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2753
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    .line 2752
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 2754
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 2755
    return-void

    .line 2739
    :pswitch_66
    const-string/jumbo v0, "android.net.conn.PROMPT_LOST_VALIDATION"

    goto :goto_2d

    .line 2734
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_66
        :pswitch_2a
    .end packed-switch
.end method

.method private startAlwaysOnVpn(I)Z
    .registers 6

    .prologue
    .line 3660
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3661
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3662
    if-nez v0, :cond_2c

    .line 3665
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_32

    .line 3666
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 3669
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_32

    move-result v0

    monitor-exit v1

    return v0

    .line 3660
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 4832
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v1

    if-eqz v1, :cond_31

    .line 4833
    :goto_7
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 4834
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 4836
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4833
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4837
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dead network still had at least "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 4841
    :cond_31
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 4842
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .registers 3

    .prologue
    .line 3647
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_d

    .line 3648
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3650
    :cond_d
    return-void
.end method

.method private static toBool(I)Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 5642
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2407
    invoke-static {}, Lcom/android/server/ConnectivityService;->-getcom-android-server-ConnectivityService$UnneededForSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a0

    .line 2415
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid reason. Cannot happen."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    return v5

    .line 2409
    :pswitch_18
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    .line 2419
    :goto_1c
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-nez v1, :cond_28

    if-lez v0, :cond_2e

    .line 2420
    :cond_28
    return v4

    .line 2412
    :pswitch_29
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    goto :goto_1c

    .line 2423
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2424
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2425
    return v4

    .line 2427
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 2431
    :cond_40
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2432
    sget-object v2, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    if-ne p2, v2, :cond_62

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isBackgroundRequest()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 2439
    :cond_62
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2440
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2441
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2440
    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    .line 2439
    if-eqz v2, :cond_4a

    .line 2442
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 2450
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForRequestId:Landroid/util/SparseArray;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 2451
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    move-result v2

    .line 2450
    if-ge v0, v2, :cond_4a

    .line 2452
    :cond_9e
    return v4

    .line 2455
    :cond_9f
    return v5

    .line 2407
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_18
    .end packed-switch
.end method

.method private updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .registers 11

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0x11

    const/16 v4, 0x10

    .line 4654
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v0, :cond_44

    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p3}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_44

    .line 4659
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p3}, Landroid/net/NetworkCapabilities;->describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v0

    .line 4660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 4661
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BUG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " lost immutable capabilities:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    :cond_44
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4667
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_69

    .line 4668
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4672
    :goto_50
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v0, :cond_6d

    .line 4673
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4677
    :goto_57
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 4678
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 4683
    :goto_60
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    return-void

    .line 4670
    :cond_69
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_50

    .line 4675
    :cond_6d
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_57

    .line 4680
    :cond_71
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_60

    .line 4685
    :cond_75
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v0

    .line 4686
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v2

    .line 4687
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_9a

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9a

    .line 4689
    :try_start_91
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-interface {v0, v3, v2}, Landroid/os/INetworkManagementService;->setNetworkPermission(ILjava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9a} :catch_b1

    .line 4695
    :cond_9a
    :goto_9a
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4696
    monitor-enter p2

    .line 4697
    :try_start_9d
    iput-object v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_9f
    .catchall {:try_start_9d .. :try_end_9f} :catchall_ca

    monitor-exit p2

    .line 4699
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    if-ne v2, p1, :cond_cd

    .line 4700
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 4699
    if-eqz v0, :cond_cd

    .line 4705
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 4712
    :goto_b0
    return-void

    .line 4690
    :catch_b1
    move-exception v0

    .line 4691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in setNetworkPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_9a

    .line 4696
    :catchall_ca
    move-exception v0

    monitor-exit p2

    throw v0

    .line 4709
    :cond_cd
    invoke-direct {p0, p2, p1}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4710
    const v0, 0x80006

    invoke-virtual {p0, p2, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_b0
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .registers 8

    .prologue
    .line 4589
    if-eqz p2, :cond_9

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4590
    return-void

    .line 4593
    :cond_9
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 4594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting DNS servers for network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4596
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 4597
    invoke-static {v1}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v3

    .line 4596
    invoke-interface {v0, p3, v2, v3}, Landroid/os/INetworkManagementService;->setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_4f

    .line 4601
    :goto_3c
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4602
    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    if-ne v0, p3, :cond_4b

    .line 4603
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 4605
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->flushVmDnsCache()V

    .line 4606
    return-void

    .line 4598
    :catch_4f
    move-exception v0

    .line 4599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in setDnsConfigurationForNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4

    .prologue
    .line 5225
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v0, :cond_5

    return-void

    .line 5228
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 5230
    :cond_c
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x64

    .line 5232
    :goto_12
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    if-ne v0, v1, :cond_19

    return-void

    .line 5230
    :cond_17
    const/4 v0, 0x0

    goto :goto_12

    .line 5234
    :cond_19
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 5235
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    .line 5236
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;)V
    .registers 10

    .prologue
    .line 4513
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v0}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4514
    if-eqz p2, :cond_63

    .line 4515
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllInterfaceNames(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    move-object v1, v0

    .line 4519
    :goto_c
    iget-object v0, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4521
    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4522
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 4523
    const/4 v3, 0x1

    invoke-direct {p0, v0, p4, v3}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_49} :catch_4a

    goto :goto_12

    .line 4524
    :catch_4a
    move-exception v0

    .line 4525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception adding interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_12

    .line 4516
    :cond_63
    if-eqz p1, :cond_c5

    .line 4517
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    move-object v1, v0

    goto :goto_c

    .line 4528
    :cond_6d
    iget-object v0, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4530
    :try_start_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4531
    const/4 v2, 0x0

    invoke-direct {p0, v0, p4, v2}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 4532
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_aa} :catch_ab

    goto :goto_73

    .line 4533
    :catch_ab
    move-exception v0

    .line 4534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception removing interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_73

    .line 4537
    :cond_c4
    return-void

    :cond_c5
    move-object v1, v0

    goto/16 :goto_c
.end method

.method private updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)V
    .registers 8

    .prologue
    .line 2207
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    .line 2208
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    if-lez v0, :cond_32

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unlingering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlinger()V

    .line 2211
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2219
    :cond_31
    :goto_31
    return-void

    .line 2212
    :cond_32
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_31

    .line 2213
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    .line 2214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lingering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->linger()V

    .line 2216
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2217
    const v1, 0x80003

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_31
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .registers 6

    .prologue
    .line 4444
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 4445
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    .line 4449
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    if-eqz v2, :cond_f

    .line 4450
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;)V

    .line 4453
    :cond_f
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;)V

    .line 4454
    invoke-direct {p0, v0, p2}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 4459
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4461
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    .line 4462
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 4465
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateClat(Landroid/os/INetworkManagementService;)V

    .line 4466
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4467
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 4472
    :goto_32
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 4473
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 4474
    const v0, 0x80007

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4477
    :cond_41
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4478
    return-void

    .line 4469
    :cond_47
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/ConnectivityService;->updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_32
.end method

.method private updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 7

    .prologue
    .line 1732
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1733
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    .line 1734
    if-nez p2, :cond_d

    if-nez v1, :cond_d

    .line 1736
    return-void

    .line 1738
    :cond_d
    if-eqz p2, :cond_16

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1740
    return-void

    .line 1742
    :cond_16
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    move-result v2

    if-nez v2, :cond_45

    .line 1743
    if-eqz v1, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected mtu value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1744
    :cond_44
    return-void

    .line 1748
    :cond_45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1749
    const-string/jumbo v0, "Setting MTU size with null iface."

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1750
    return-void

    .line 1755
    :cond_52
    :try_start_52
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, v1}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_57} :catch_58

    .line 1759
    :goto_57
    return-void

    .line 1756
    :catch_58
    move-exception v0

    .line 1757
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception in setMtu()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 5249
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 5251
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    .line 5252
    monitor-enter p1

    .line 5253
    :try_start_b
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 5254
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_29

    monitor-exit p1

    .line 5256
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5258
    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-ne v0, v2, :cond_2c

    .line 5259
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eq v0, v1, :cond_28

    .line 5261
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 5264
    :cond_28
    return-void

    .line 5252
    :catchall_29
    move-exception v0

    monitor-exit p1

    throw v0

    .line 5267
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " EVENT_NETWORK_INFO_CHANGED, going from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5268
    if-nez v4, :cond_e9

    const-string/jumbo v0, "null"

    .line 5267
    :goto_45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5269
    const-string/jumbo v5, " to "

    .line 5267
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5272
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-nez v0, :cond_9b

    .line 5273
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v0, :cond_6d

    .line 5274
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v0, :cond_9b

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    .line 5272
    if-eqz v0, :cond_9b

    .line 5277
    :cond_6d
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5281
    :try_start_74
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 5282
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v0, Landroid/net/Network;->netId:I

    .line 5283
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    .line 5284
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v0, :cond_ef

    .line 5285
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->allowBypass:Z

    xor-int/lit8 v0, v0, 0x1

    .line 5282
    :goto_96
    invoke-interface {v5, v6, v7, v0}, Landroid/os/INetworkManagementService;->createVirtualNetwork(IZZ)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_99} :catch_101

    .line 5295
    :goto_99
    iput-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    .line 5298
    :cond_9b
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v0, :cond_130

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v0, :cond_130

    .line 5299
    iput-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    .line 5301
    invoke-direct {p0, p1, v8}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 5302
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 5304
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 5305
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5307
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 5309
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5310
    :try_start_bf
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_d2

    .line 5311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 5312
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v0, :cond_d2

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_d2

    .line 5313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_d2
    .catchall {:try_start_bf .. :try_end_d2} :catchall_12d

    :cond_d2
    monitor-exit v1

    .line 5327
    :cond_d3
    const-string/jumbo v0, "CONNECT"

    invoke-direct {p0, p1, v0, v8}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 5330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5331
    sget-object v2, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;J)V

    .line 5334
    const v0, 0x80001

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5358
    :cond_e8
    :goto_e8
    return-void

    .line 5268
    :cond_e9
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    goto/16 :goto_45

    :cond_ef
    move v0, v1

    .line 5284
    goto :goto_96

    .line 5287
    :cond_f1
    :try_start_f1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    .line 5288
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v6

    .line 5287
    invoke-interface {v0, v5, v6}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(ILjava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_100} :catch_101

    goto :goto_99

    .line 5290
    :catch_101
    move-exception v0

    .line 5291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error creating network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5292
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 5291
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5293
    return-void

    .line 5309
    :catchall_12d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5335
    :cond_130
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v0, :cond_15b

    .line 5336
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 5337
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 5338
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5339
    :try_start_142
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    if-eqz v0, :cond_156

    .line 5340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z

    .line 5341
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v0, :cond_156

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_156

    .line 5342
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_156
    .catchall {:try_start_142 .. :try_end_156} :catchall_158

    :cond_156
    monitor-exit v1

    goto :goto_e8

    .line 5338
    :catchall_158
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5347
    :cond_15b
    if-eqz v4, :cond_17f

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_17f

    .line 5350
    :goto_165
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    if-eq v0, v3, :cond_16e

    .line 5351
    invoke-direct {p0, p1, v3}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5353
    :cond_16e
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v2, v0, :cond_184

    .line 5354
    const v0, 0x80009

    .line 5353
    :goto_175
    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5356
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_e8

    .line 5348
    :cond_17f
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v2, v0, :cond_e8

    goto :goto_165

    .line 5355
    :cond_184
    const v0, 0x8000a

    goto :goto_175
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 5362
    if-gez p2, :cond_31

    .line 5363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkScore for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " got a negative score ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5364
    const-string/jumbo v2, ").  Bumping score to min of 0"

    .line 5363
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    move p2, v0

    .line 5368
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 5369
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setCurrentScore(I)V

    .line 5371
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5373
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 5374
    return-void
.end method

.method private updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 3325
    if-nez p1, :cond_14

    move-object v1, v0

    .line 3326
    :goto_4
    if-nez p2, :cond_19

    .line 3328
    :goto_6
    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3329
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V

    .line 3331
    :cond_13
    return-void

    .line 3325
    :cond_14
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    goto :goto_4

    .line 3326
    :cond_19
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    goto :goto_6
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z
    .registers 9

    .prologue
    .line 4544
    new-instance v0, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v0}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4545
    if-eqz p2, :cond_4f

    .line 4546
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v0

    move-object v1, v0

    .line 4554
    :goto_c
    iget-object v0, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 4555
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-nez v2, :cond_12

    .line 4558
    :try_start_24
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p3, v0}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_12

    .line 4559
    :catch_2a
    move-exception v2

    .line 4560
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_12

    .line 4561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in addRoute for non-gateway: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_12

    .line 4547
    :cond_4f
    if-eqz p1, :cond_dc

    .line 4548
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    move-object v1, v0

    goto :goto_c

    .line 4565
    :cond_59
    iget-object v0, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5f
    :goto_5f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 4566
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4569
    :try_start_71
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p3, v0}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_77

    goto :goto_5f

    .line 4570
    :catch_77
    move-exception v2

    .line 4571
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_5f

    .line 4572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in addRoute for gateway: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5f

    .line 4577
    :cond_98
    iget-object v0, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 4580
    :try_start_aa
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p3, v0}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_af} :catch_b0

    goto :goto_9e

    .line 4581
    :catch_b0
    move-exception v0

    .line 4582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in removeRoute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_9e

    .line 4585
    :cond_c9
    iget-object v0, v1, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_da

    iget-object v0, v1, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_d9
    return v0

    :cond_da
    const/4 v0, 0x1

    goto :goto_d9

    :cond_dc
    move-object v1, v0

    goto/16 :goto_c
.end method

.method private updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 4090
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4091
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4092
    const-string/jumbo v2, "thresholds"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4094
    const-string/jumbo v2, "CONNECT"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_64

    .line 4096
    if-eqz p3, :cond_43

    iget-object v2, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 4097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4101
    :cond_43
    const-string/jumbo v2, "updateSignalStrengthThresholds: %s, sending %s to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4102
    aput-object p2, v3, v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 4101
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4105
    :cond_64
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 4106
    const v2, 0x8100e

    .line 4105
    invoke-virtual {v0, v2, v5, v5, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 4108
    return-void
.end method

.method private updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1771
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1772
    return-void

    .line 1775
    :cond_9
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v1

    .line 1777
    if-eqz v1, :cond_18

    .line 1778
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1781
    :cond_18
    if-eqz v0, :cond_1e

    array-length v2, v0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_46

    .line 1782
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tcpBufferSizes string: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", using defaults"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1783
    const-string/jumbo v1, "4096,87380,110208,4096,16384,110208"

    .line 1784
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1787
    :cond_46
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    return-void

    .line 1792
    :cond_4f
    :try_start_4f
    const-string/jumbo v2, "/sys/kernel/ipv4/tcp_"

    .line 1793
    const-string/jumbo v2, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    const-string/jumbo v2, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    const-string/jumbo v2, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const-string/jumbo v2, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string/jumbo v2, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const-string/jumbo v2, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-static {v2, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_8a} :catch_ba

    .line 1804
    :goto_8a
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1805
    const-string/jumbo v1, "tcp_default_init_rwnd"

    .line 1806
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v3, "net.tcp.default_init_rwnd"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1804
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1807
    const-string/jumbo v1, "sys.sysctl.tcp_def_init_rwnd"

    .line 1808
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_b9

    .line 1809
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v2, "sys.sysctl.tcp_def_init_rwnd"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    :cond_b9
    return-void

    .line 1800
    :catch_ba
    move-exception v0

    .line 1801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t set TCP buffer sizes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_8a
.end method

.method private wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    .registers 8

    .prologue
    .line 4483
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4484
    return-void

    .line 4487
    :cond_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4488
    const v1, 0x10e0063

    .line 4487
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 4489
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4490
    const v2, 0x10e0064

    .line 4489
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4494
    if-eqz v0, :cond_26

    if-nez v1, :cond_27

    .line 4495
    :cond_26
    return-void

    .line 4498
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4500
    if-eqz p3, :cond_47

    .line 4501
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getNetdService()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, v2, v0, v1}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 4509
    :goto_46
    return-void

    .line 4503
    :cond_47
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getNetdService()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, v2, v0, v1}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_50} :catch_51

    goto :goto_46

    .line 4505
    :catch_51
    move-exception v0

    .line 4506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception modifying wakeup packet monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_46
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 5481
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5483
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5484
    :try_start_e
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_18

    move-result v0

    monitor-exit v1

    return v0

    .line 5483
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public avoidBadWifi()Z
    .registers 2

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v0

    return v0
.end method

.method public checkMobileProvisioning(I)I
    .registers 3

    .prologue
    .line 3733
    const/4 v0, -0x1

    return v0
.end method

.method createMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;
    .registers 5

    .prologue
    .line 5603
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;
    .registers 6

    .prologue
    .line 5598
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x3e8

    .line 1879
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1880
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 1882
    :cond_16
    const-string/jumbo v0, "--diag"

    invoke-direct {p0, p3, v0}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1883
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1884
    return-void

    .line 1885
    :cond_23
    const-string/jumbo v0, "tethering"

    invoke-direct {p0, p3, v0}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1886
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1, v3, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1887
    return-void

    .line 1890
    :cond_32
    const-string/jumbo v0, "NetworkFactories for:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1891
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkFactoryInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    .line 1892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_42

    .line 1894
    :cond_68
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1895
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1897
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1898
    const-string/jumbo v1, "Active default network: "

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1899
    if-nez v0, :cond_101

    .line 1900
    const-string/jumbo v0, "none"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    :goto_80
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1906
    const-string/jumbo v0, "Current Networks:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1908
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_96
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1909
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1912
    const-string/jumbo v1, "Requests: REQUEST:%d LISTEN:%d BACKGROUND_REQUEST:%d total:%d"

    .line 1911
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 1913
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1914
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1915
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numBackgroundNetworkRequests()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 1916
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1911
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move v1, v2

    .line 1918
    :goto_ed
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v5

    if-ge v1, v5, :cond_10a

    .line 1919
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    add-int/lit8 v1, v1, 0x1

    goto :goto_ed

    .line 1902
    :cond_101
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto/16 :goto_80

    .line 1921
    :cond_10a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1922
    const-string/jumbo v1, "Lingered:"

    invoke-virtual {v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1924
    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->dumpLingerTimers(Ljava/io/PrintWriter;)V

    .line 1925
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1926
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_96

    .line 1928
    :cond_121
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1929
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1931
    const-string/jumbo v0, "Network Requests:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1933
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 1934
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13a

    .line 1936
    :cond_14e
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1937
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1939
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1941
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1942
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1, v3, p3}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1945
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/KeepaliveTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1947
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1948
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1950
    const-string/jumbo v0, "--short"

    invoke-direct {p0, p3, v0}, Lcom/android/server/ConnectivityService;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a1

    .line 1951
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1952
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1953
    :try_start_17e
    const-string/jumbo v0, "mValidationLogs (most recent first):"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1954
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mValidationLogs:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$ValidationLog;

    .line 1955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/server/ConnectivityService$ValidationLog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/ConnectivityService$ValidationLog;->mNetworkExtraInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1957
    iget-object v0, v0, Lcom/android/server/ConnectivityService$ValidationLog;->mLog:Landroid/util/LocalLog$ReadOnlyLocalLog;

    invoke-virtual {v0, p1, v3, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1c0
    .catchall {:try_start_17e .. :try_end_1c0} :catchall_1c1

    goto :goto_18a

    .line 1952
    :catchall_1c1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1c4
    monitor-exit v1

    .line 1962
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1963
    const-string/jumbo v0, "mNetworkRequestInfoLogs (most recent first):"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1965
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, v3, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1968
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1969
    const-string/jumbo v0, "mNetworkInfoBlockingLogs (most recent first):"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1971
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, v3, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1974
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1975
    const-string/jumbo v0, "NetTransition WakeLock activity (most recent first):"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "total acquisitions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "total releases: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cumulative duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    div-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "longest duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    div-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    iget v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    if-le v0, v1, :cond_299

    .line 1982
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v0, v4

    .line 1983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "currently holding WakeLock for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long/2addr v0, v8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    :cond_299
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, v3, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1986
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1988
    :cond_2a1
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .prologue
    .line 3482
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3484
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3485
    :try_start_e
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_18

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3484
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public factoryReset()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 5535
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5537
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_network_reset"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5538
    return-void

    .line 5541
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 5544
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 5546
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_tethering"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 5548
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5549
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_2f
    if-ge v0, v5, :cond_39

    aget-object v6, v4, v0

    .line 5550
    invoke-virtual {p0, v6, v3}, Lcom/android/server/ConnectivityService;->untether(Ljava/lang/String;Ljava/lang/String;)I

    .line 5549
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 5554
    :cond_39
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_vpn"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 5556
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 5557
    :try_start_47
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 5558
    if-eqz v0, :cond_56

    .line 5559
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/ConnectivityService;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    .line 5560
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_93

    :cond_56
    monitor-exit v3

    .line 5565
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_73

    if-nez v2, :cond_73

    .line 5566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5568
    :try_start_61
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v3, "LOCKDOWN_VPN"

    invoke-virtual {v0, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 5569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 5570
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_96

    .line 5572
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5577
    :cond_73
    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 5578
    if-eqz v0, :cond_86

    .line 5579
    iget-boolean v3, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v3, :cond_9b

    .line 5580
    const-string/jumbo v0, "[Legacy VPN]"

    const-string/jumbo v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5591
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5592
    const-string/jumbo v1, "network_avoid_bad_wifi"

    .line 5591
    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5593
    return-void

    .line 5556
    :catchall_93
    move-exception v0

    monitor-exit v3

    throw v0

    .line 5571
    :catchall_96
    move-exception v0

    .line 5572
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5571
    throw v0

    .line 5584
    :cond_9b
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 5586
    const-string/jumbo v0, "[Legacy VPN]"

    invoke-virtual {p0, v7, v0, v2}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_86
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .registers 2

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1267
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1268
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1269
    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .registers 3

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .registers 4

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1092
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1076
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1077
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1078
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1079
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V

    .line 1080
    iget-object v0, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1128
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1129
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1130
    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1121
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1122
    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1335
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Shame on UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1336
    const-string/jumbo v2, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    .line 1335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 1166
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1167
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1168
    const/4 v0, 0x0

    :goto_8
    const/16 v2, 0x11

    if-gt v0, v2, :cond_18

    .line 1170
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1171
    if-eqz v2, :cond_15

    .line 1172
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1175
    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/NetworkInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .registers 6

    .prologue
    .line 1320
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1322
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_21

    aget-object v4, v2, v0

    .line 1324
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 1325
    if-eqz v4, :cond_1e

    .line 1326
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1329
    :cond_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/NetworkState;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkState;

    return-object v0
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .registers 5

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1192
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1193
    :try_start_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v3, v0, [Landroid/net/Network;

    .line 1194
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 1195
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    aput-object v0, v3, v1
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_2a

    .line 1194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_28
    monitor-exit v2

    .line 1197
    return-object v3

    .line 1192
    :catchall_2a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3526
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3527
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v1, :cond_b

    .line 3528
    new-array v0, v0, [Lcom/android/internal/net/VpnInfo;

    return-object v0

    .line 3531
    :cond_b
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3532
    :try_start_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 3533
    :goto_14
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 3534
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;

    move-result-object v0

    .line 3535
    if-eqz v0, :cond_2d

    .line 3536
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3533
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 3539
    :cond_31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/net/VpnInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/VpnInfo;
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_3f

    monitor-exit v2

    return-object v0

    .line 3531
    :catchall_3f
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 3717
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3718
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3720
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3721
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3722
    if-nez v0, :cond_32

    .line 3723
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_38

    monitor-exit v1

    .line 3724
    return-object v4

    .line 3726
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_38

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3720
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5513
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5514
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .registers 9

    .prologue
    .line 1217
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1219
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1221
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1222
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1223
    if-eqz v2, :cond_17

    .line 1224
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v0, :cond_41

    .line 1228
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1229
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 1230
    if-eqz v0, :cond_40

    .line 1231
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 1232
    if-eqz v3, :cond_40

    .line 1233
    const/4 v0, 0x0

    array-length v4, v3

    :goto_2c
    if-ge v0, v4, :cond_40

    aget-object v5, v3, v0

    .line 1234
    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    .line 1235
    invoke-direct {p0, v6}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 1236
    if-eqz v6, :cond_3d

    .line 1237
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_52

    .line 1233
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_40
    monitor-exit v2

    .line 1245
    :cond_41
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/NetworkCapabilities;

    .line 1246
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkCapabilities;

    .line 1247
    return-object v0

    .line 1228
    :catchall_52
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 3

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 3280
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 2922
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2924
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2925
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2927
    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 4

    .prologue
    .line 3513
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3515
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3516
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 3515
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 1287
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1288
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1274
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1275
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 1276
    if-eqz v1, :cond_19

    .line 1277
    monitor-enter v1

    .line 1278
    :try_start_d
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 1277
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1281
    :cond_19
    return-object v2
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 3810
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3811
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    move-result-object v0

    .line 3812
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 3813
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3819
    :goto_31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 3820
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 3821
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3822
    const-string/jumbo v1, "0000000000"

    .line 3824
    :cond_46
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 3825
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3826
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3827
    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 3824
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3830
    :cond_62
    return-object v0

    .line 3816
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .registers 4

    .prologue
    .line 2783
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 2785
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2786
    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2787
    const/16 v1, 0xb

    .line 2786
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2788
    const/4 v0, 0x7

    return v0

    .line 2791
    :cond_15
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getMeteredMultipathPreference()I

    move-result v0

    return v0
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .registers 3

    .prologue
    .line 1313
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1314
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1180
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1182
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(IIZ)Landroid/net/NetworkState;

    move-result-object v1

    .line 1183
    iget-object v2, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1184
    iget-object v0, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    return-object v0

    .line 1186
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1135
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1137
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1141
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1142
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_24

    .line 1143
    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1144
    iget-object v0, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0

    .line 1147
    :cond_24
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(IIZ)Landroid/net/NetworkState;

    move-result-object v0

    .line 1148
    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1153
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1154
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1155
    if-eqz v0, :cond_14

    .line 1156
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v0

    .line 1157
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1158
    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0

    .line 1160
    :cond_14
    return-object v1
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3159
    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0

    .line 3160
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 3161
    if-eqz v0, :cond_f

    return-object v0

    .line 3162
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->queryUserAccess(II)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v2

    .line 3165
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 3166
    if-nez v1, :cond_23

    return-object v2

    .line 3167
    :cond_23
    monitor-enter v1

    .line 3168
    :try_start_24
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_35

    move-result-object v0

    .line 3169
    if-nez v0, :cond_2e

    monitor-exit v1

    return-object v2

    .line 3170
    :cond_2e
    :try_start_2e
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35

    monitor-exit v1

    return-object v2

    .line 3167
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .registers 4

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 1834
    const-string/jumbo v1, "android.telephony.apn-restore"

    .line 1833
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1835
    if-eqz v0, :cond_17

    .line 1836
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_17

    .line 1838
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v0

    return v0

    .line 1839
    :catch_16
    move-exception v0

    .line 1843
    :cond_17
    const v0, 0xea60

    .line 1845
    const/16 v1, 0x11

    if-gt p1, v1, :cond_2a

    .line 1846
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    if-eqz v1, :cond_2a

    .line 1847
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/net/NetworkConfig;->restoreTime:I

    .line 1849
    :cond_2a
    return v0
.end method

.method protected getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;
    .registers 2

    .prologue
    .line 1767
    new-instance v0, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    return-object v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2954
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2955
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2956
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2958
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2976
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2977
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2934
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2935
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2936
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2938
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2944
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2945
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2946
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2948
    :cond_10
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2994
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2995
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2982
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2983
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2988
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceTetherAccessPermission()V

    .line 2989
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVpn(I)Lcom/android/server/connectivity/Vpn;
    .registers 4

    .prologue
    .line 3883
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3884
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    .line 3883
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3578
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3579
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3580
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3581
    if-eqz v0, :cond_13

    .line 3582
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_13
    monitor-exit v1

    .line 3584
    return-object v2

    .line 3579
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .registers 5

    .prologue
    .line 4715
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_d

    .line 4717
    return-void

    .line 4720
    :cond_d
    invoke-virtual {p2}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 4726
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 4727
    monitor-enter p1

    .line 4728
    :try_start_13
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_1e

    monitor-exit p1

    .line 4730
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v1, :cond_1d

    .line 4731
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 4733
    :cond_1d
    return-void

    .line 4727
    :catchall_1e
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 5613
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isActiveNetworkMetered()Z
    .registers 2

    .prologue
    .line 1342
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isActiveNetworkMeteredCommon(I)Z

    move-result v0

    return v0
.end method

.method public isActiveNetworkMeteredForUid(I)Z
    .registers 3

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1351
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isActiveNetworkMeteredCommon(I)Z

    move-result v0

    return v0
.end method

.method public isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .registers 7

    .prologue
    .line 3675
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    .line 3676
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3678
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3679
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3680
    if-nez v0, :cond_32

    .line 3681
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_38

    .line 3682
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 3684
    :cond_32
    :try_start_32
    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_38

    move-result v0

    monitor-exit v1

    return v0

    .line 3678
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNetworkSupported(I)Z
    .registers 3

    .prologue
    .line 1252
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1253
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringSupported(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3001
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_server_ConnectivityService_111789(Landroid/net/Network;)V
    .registers 5

    .prologue
    .line 2675
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2676
    if-nez v0, :cond_7

    return-void

    .line 2677
    :cond_7
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 2678
    :cond_12
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x8200b

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method synthetic lambda$-com_android_server_ConnectivityService_35239()V
    .registers 1

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchForAvoidBadWifiUpdate()V

    return-void
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
    .registers 9

    .prologue
    .line 4264
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4265
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4268
    :cond_9
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4269
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->checkChangePermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 4275
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 4277
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 4279
    new-instance v1, Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    .line 4280
    sget-object v3, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    .line 4279
    const/4 v4, -0x1

    invoke-direct {v1, v0, v4, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 4281
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 4284
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4285
    return-object v1
.end method

.method public makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 5608
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    return-object v0
.end method

.method protected notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 7

    .prologue
    const v3, 0x80002

    const/4 v2, 0x0

    .line 5381
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5382
    iget-object v0, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_13

    .line 5383
    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 5385
    return-void

    .line 5388
    :cond_13
    invoke-static {p2, p1, v3, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5392
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_26

    .line 5393
    const v0, 0x80009

    invoke-static {p2, p1, v0, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5395
    :cond_26
    const v0, 0x80006

    invoke-static {p2, p1, v0, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5396
    const v0, 0x80007

    invoke-static {p2, p1, v0, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5397
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 4

    .prologue
    .line 5465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5466
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 7

    .prologue
    .line 5450
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 5451
    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v0

    .line 5452
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5456
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1f

    .line 5457
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 5450
    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5459
    :cond_1f
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_1b

    .line 5462
    :cond_23
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 4780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Finished sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4781
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4784
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    .line 4785
    return-void
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    .registers 8

    .prologue
    .line 4291
    const-string/jumbo v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4292
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4293
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4295
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 4297
    new-instance v0, Landroid/net/NetworkRequest;

    .line 4298
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    .line 4299
    sget-object v3, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    .line 4298
    const/4 v4, -0x1

    .line 4297
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 4300
    new-instance v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 4303
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4304
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    .registers 8

    .prologue
    .line 4210
    const-string/jumbo v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4211
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4212
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 4213
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 4214
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 4215
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 4217
    new-instance v1, Landroid/net/NetworkRequest;

    .line 4218
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    sget-object v3, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    .line 4217
    const/4 v4, -0x1

    invoke-direct {v1, v0, v4, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 4219
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 4220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pendingRequest for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4221
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4223
    return-object v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .prologue
    .line 3435
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3436
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3438
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3439
    :try_start_9
    invoke-virtual {p0, p3}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3440
    if-eqz v0, :cond_15

    .line 3441
    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    move-result v0

    monitor-exit v1

    return v0

    .line 3443
    :cond_15
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 3438
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .registers 21

    .prologue
    .line 4411
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4413
    new-instance v6, Landroid/net/LinkProperties;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 4414
    invoke-virtual {v6}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 4417
    new-instance v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 4418
    new-instance v4, Landroid/net/Network;

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->reserveNetId()I

    move-result v2

    invoke-direct {v4, v2}, Landroid/net/Network;-><init>(I)V

    new-instance v5, Landroid/net/NetworkInfo;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 4419
    new-instance v7, Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4420
    iget-object v9, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    new-instance v11, Landroid/net/NetworkMisc;

    move-object/from16 v0, p6

    invoke-direct {v11, v0}, Landroid/net/NetworkMisc;-><init>(Landroid/net/NetworkMisc;)V

    iget-object v12, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    move-object v2, p1

    move/from16 v8, p5

    move-object v13, p0

    .line 4417
    invoke-direct/range {v1 .. v13}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V

    .line 4421
    monitor-enter p0

    .line 4422
    :try_start_40
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iget-boolean v3, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    iput-boolean v3, v2, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_7f

    monitor-exit p0

    .line 4424
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor;->getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 4425
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 4424
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->addValidationLogs(Landroid/util/LocalLog$ReadOnlyLocalLog;Landroid/net/Network;Ljava/lang/String;)V

    .line 4426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNetworkAgent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4427
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4428
    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    return v1

    .line 4421
    :catchall_7f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 4315
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4316
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V

    .line 4317
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4318
    return-void
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .registers 7

    .prologue
    .line 4308
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    .line 4309
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4310
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    const/16 v3, 0x16

    const/4 v4, 0x0

    .line 4309
    invoke-virtual {v1, v3, v2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4311
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .registers 7

    .prologue
    .line 4234
    const-string/jumbo v0, "PendingIntent cannot be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4235
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 4236
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v2

    .line 4235
    const/16 v3, 0x1b

    .line 4236
    const/4 v4, 0x0

    .line 4235
    invoke-virtual {v1, v3, v2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4237
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 5490
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5492
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5493
    :try_start_e
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_18

    move-result v0

    monitor-exit v1

    return v0

    .line 5492
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reportInetCondition(II)V
    .registers 5

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3099
    if-nez v0, :cond_9

    return-void

    .line 3100
    :cond_9
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/16 v0, 0x32

    if-le p2, v0, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/ConnectivityService;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 3101
    return-void

    .line 3100
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .registers 8

    .prologue
    .line 3105
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 3106
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    .line 3107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3108
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    .line 3109
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3110
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x24

    invoke-virtual {v3, v4, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3109
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3111
    return-void
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 4172
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4174
    if-nez p1, :cond_7

    .line 4175
    return v3

    .line 4177
    :cond_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4178
    :try_start_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_21

    monitor-exit v1

    .line 4180
    if-eqz v0, :cond_24

    .line 4181
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x8100a

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4182
    const/4 v0, 0x1

    return v0

    .line 4177
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4184
    :cond_24
    return v3
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
    .registers 12

    .prologue
    .line 4125
    if-nez p1, :cond_22

    .line 4126
    sget-object v0, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    .line 4131
    :goto_4
    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    if-ne v0, v1, :cond_25

    .line 4132
    new-instance v1, Landroid/net/NetworkCapabilities;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v1, v2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4133
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4142
    :goto_14
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 4144
    if-gez p3, :cond_31

    .line 4145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad timeout specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4127
    :cond_22
    sget-object v0, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    goto :goto_4

    .line 4135
    :cond_25
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 4136
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 4140
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    goto :goto_14

    .line 4147
    :cond_31
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 4149
    new-instance v2, Landroid/net/NetworkRequest;

    .line 4150
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    .line 4149
    invoke-direct {v2, v1, p5, v3, v0}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 4151
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v0, p0, p2, v2, p4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 4152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNetwork for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4154
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4155
    if-lez p3, :cond_76

    .line 4156
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4157
    int-to-long v4, p3

    .line 4156
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4159
    :cond_76
    return-object v2
.end method

.method public requestRouteToHostAddress(I[B)Z
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 1383
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 1384
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1385
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1390
    :cond_13
    :try_start_13
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_16
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_16} :catch_35

    move-result-object v0

    .line 1396
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1398
    return v4

    .line 1391
    :catch_35
    move-exception v0

    .line 1392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestRouteToHostAddress got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1393
    return v4

    .line 1401
    :cond_52
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 1402
    if-nez v1, :cond_92

    .line 1403
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestRouteToHostAddress on unsupported network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1408
    :goto_79
    return v4

    .line 1406
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestRouteToHostAddress on down network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_79

    .line 1412
    :cond_92
    monitor-enter v1

    .line 1413
    :try_start_93
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_a3

    move-result-object v2

    monitor-exit v1

    .line 1416
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_a6

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_a6

    .line 1422
    return v4

    .line 1412
    :catchall_a3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1425
    :cond_a6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1430
    :try_start_ae
    monitor-enter v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_d8

    .line 1431
    :try_start_af
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1432
    iget-object v6, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_d5

    :try_start_b5
    monitor-exit v1

    .line 1434
    invoke-direct {p0, v3, v0, v6, v2}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    move-result v0

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestRouteToHostAddress ok="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_b5 .. :try_end_d1} :catchall_d8

    .line 1438
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1436
    return v0

    .line 1430
    :catchall_d5
    move-exception v0

    :try_start_d6
    monitor-exit v1

    throw v0
    :try_end_d8
    .catchall {:try_start_d6 .. :try_end_d8} :catchall_d8

    .line 1437
    :catchall_d8
    move-exception v0

    .line 1438
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1437
    throw v0
.end method

.method protected reserveNetId()I
    .registers 6

    .prologue
    const v4, 0xffff

    const/16 v0, 0x64

    .line 925
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v1

    .line 926
    :goto_8
    if-gt v0, v4, :cond_2b

    .line 927
    :try_start_a
    iget v2, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 928
    iget v3, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    if-le v3, v4, :cond_18

    const/16 v3, 0x64

    iput v3, p0, Lcom/android/server/ConnectivityService;->mNextNetId:I

    .line 930
    :cond_18
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 931
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_35

    monitor-exit v1

    .line 932
    return v2

    .line 926
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2b
    monitor-exit v1

    .line 936
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No free netIds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .registers 3

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1557
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 1558
    return-void
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .registers 9

    .prologue
    .line 2599
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2600
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 2601
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 2600
    const/16 v4, 0x1c

    invoke-virtual {v1, v4, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2602
    return-void
.end method

.method public setAirplaneMode(Z)V
    .registers 7

    .prologue
    .line 3852
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3855
    :try_start_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3856
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v4

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3857
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3858
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3859
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_30

    .line 3861
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3863
    return-void

    .line 3860
    :catchall_30
    move-exception v0

    .line 3861
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3860
    throw v0
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 3690
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3691
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3694
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3695
    return v4

    .line 3698
    :cond_e
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3699
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3700
    if-nez v0, :cond_39

    .line 3701
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has no Vpn configuration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_51

    monitor-exit v1

    .line 3702
    return v4

    .line 3704
    :cond_39
    :try_start_39
    invoke-virtual {v0, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_51

    move-result v2

    if-nez v2, :cond_41

    monitor-exit v1

    .line 3705
    return v4

    .line 3707
    :cond_41
    :try_start_41
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3708
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Z)Z
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_51

    monitor-exit v1

    .line 3709
    return v4

    :cond_4e
    monitor-exit v1

    .line 3712
    const/4 v0, 0x1

    return v0

    .line 3698
    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .registers 5

    .prologue
    .line 2606
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2607
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2608
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 11

    .prologue
    .line 3203
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3205
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3206
    :try_start_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_ce

    if-ne p1, v0, :cond_c

    monitor-exit v4

    return-void

    .line 3207
    :cond_c
    if-eqz p1, :cond_18

    :try_start_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_ce

    move-result v0

    if-eqz v0, :cond_18

    monitor-exit v4

    return-void

    .line 3208
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_ce

    move-result v0

    if-eqz v0, :cond_26

    monitor-exit v4

    return-void

    .line 3210
    :cond_26
    :try_start_26
    const-string/jumbo v3, ""

    .line 3211
    const/4 v2, 0x0

    .line 3212
    const-string/jumbo v1, ""

    .line 3213
    const-string/jumbo v0, ""

    .line 3214
    if-eqz p1, :cond_ca

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 3215
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 3214
    if-eqz v5, :cond_ca

    .line 3216
    :cond_4a
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 3218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid proxy properties, ignoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_26 .. :try_end_6b} :catchall_ce

    monitor-exit v4

    .line 3219
    return-void

    .line 3221
    :cond_6d
    :try_start_6d
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 3222
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 3223
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    .line 3224
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v1

    .line 3225
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 3226
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3231
    :cond_9a
    :goto_9a
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a3
    .catchall {:try_start_6d .. :try_end_a3} :catchall_ce

    move-result-wide v6

    .line 3234
    :try_start_a4
    const-string/jumbo v8, "global_http_proxy_host"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3235
    const-string/jumbo v3, "global_http_proxy_port"

    invoke-static {v5, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3236
    const-string/jumbo v2, "global_http_proxy_exclusion_list"

    invoke-static {v5, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3238
    const-string/jumbo v1, "global_proxy_pac_url"

    invoke-static {v5, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_bc
    .catchall {:try_start_a4 .. :try_end_bc} :catchall_d1

    .line 3240
    :try_start_bc
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-nez v0, :cond_c5

    .line 3244
    iget-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 3246
    :cond_c5
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    :try_end_c8
    .catchall {:try_start_bc .. :try_end_c8} :catchall_ce

    monitor-exit v4

    .line 3248
    return-void

    .line 3229
    :cond_ca
    const/4 v5, 0x0

    :try_start_cb
    iput-object v5, p0, Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    :try_end_cd
    .catchall {:try_start_cb .. :try_end_cd} :catchall_ce

    goto :goto_9a

    .line 3205
    :catchall_ce
    move-exception v0

    monitor-exit v4

    throw v0

    .line 3239
    :catchall_d1
    move-exception v0

    .line 3240
    :try_start_d2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3239
    throw v0
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_ce
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .registers 8

    .prologue
    .line 3836
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 3837
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3838
    return-void

    .line 3840
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3843
    add-int/lit8 v0, p2, 0x1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    .line 3844
    :try_start_13
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 3846
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3848
    return-void

    .line 3845
    :catchall_1c
    move-exception v0

    .line 3846
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3845
    throw v0
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .registers 4

    .prologue
    .line 5499
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5500
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5502
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5503
    :try_start_e
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1d

    move-result v0

    monitor-exit v1

    .line 5505
    if-eqz v0, :cond_1c

    .line 5506
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 5508
    :cond_1c
    return v0

    .line 5502
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUsbTethering(ZLjava/lang/String;)I
    .registers 4

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 2965
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2966
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    return v0

    .line 2968
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method setVpn(ILcom/android/server/connectivity/Vpn;)V
    .registers 5

    .prologue
    .line 3891
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3892
    :try_start_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 3894
    return-void

    .line 3891
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    .registers 6

    .prologue
    .line 3463
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 3465
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3466
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 3467
    if-eqz v0, :cond_f

    .line 3468
    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;Z)Z
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit v1

    .line 3471
    return-void

    .line 3465
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .registers 5

    .prologue
    .line 2673
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2674
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v1, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/-$Lambda$Ganck_s9Kl5o2K6eVDoQTKLc-6g;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2680
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 6

    .prologue
    .line 3495
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 3496
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 3497
    if-nez v0, :cond_12

    .line 3498
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing active network connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3500
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3501
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3502
    :try_start_1d
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_28

    monitor-exit v2

    .line 3504
    return-void

    .line 3501
    :catchall_28
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    .registers 17

    .prologue
    .line 5520
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 5521
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 5522
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 5524
    const/16 v8, 0x1194

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 5521
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V

    .line 5525
    return-void
.end method

.method public startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 7

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3030
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3031
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 3032
    return-void

    .line 3034
    :cond_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->startTethering(ILandroid/os/ResultReceiver;Z)V

    .line 3035
    return-void
.end method

.method public stopKeepalive(Landroid/net/Network;I)V
    .registers 7

    .prologue
    .line 5529
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 5530
    const v2, 0x8100c

    const/4 v3, 0x0

    .line 5529
    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5531
    return-void
.end method

.method public stopTethering(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3040
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    .line 3041
    return-void
.end method

.method systemReady()V
    .registers 4

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->loadGlobalProxy()V

    .line 1648
    monitor-enter p0

    .line 1649
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 1650
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_17

    .line 1651
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_48

    :cond_17
    monitor-exit p0

    .line 1656
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 1663
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1665
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1667
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    .line 1668
    return-void

    .line 1648
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tether(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 2898
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2899
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 2900
    return v0

    .line 2902
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .registers 5

    .prologue
    .line 4328
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4329
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4330
    return-void
.end method

.method public untether(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 2911
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2912
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 2913
    return v0

    .line 2915
    :cond_12
    const/4 v0, 0x3

    return v0
.end method

.method public updateLockdownVpn()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 3591
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 3592
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    return v7

    .line 3597
    :cond_14
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 3598
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_b9

    .line 3599
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 3600
    if-nez v0, :cond_32

    .line 3601
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Lockdown VPN configured but cannot be read from keystore"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    return v7

    .line 3604
    :cond_32
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 3606
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VPN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 3605
    invoke-static {v1, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 3607
    if-nez v5, :cond_74

    .line 3608
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Lockdown VPN configured invalid profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 3610
    return v8

    .line 3612
    :cond_74
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3613
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v6

    .line 3614
    :try_start_7f
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpn(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v4

    .line 3615
    if-nez v4, :cond_a7

    .line 3616
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VPN for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not ready yet. Skipping lockdown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_7f .. :try_end_a5} :catchall_b6

    monitor-exit v6

    .line 3617
    return v7

    .line 3619
    :cond_a7
    :try_start_a7
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_b4
    .catchall {:try_start_a7 .. :try_end_b4} :catchall_b6

    monitor-exit v6

    .line 3625
    :goto_b5
    return v8

    .line 3613
    :catchall_b6
    move-exception v0

    monitor-exit v6

    throw v0

    .line 3622
    :cond_b9
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_b5
.end method

.method updateMobileDataAlwaysOn()V
    .registers 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 889
    return-void
.end method
