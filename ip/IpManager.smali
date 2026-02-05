.class public Landroid/net/ip/IpManager;
.super Lcom/android/internal/util/StateMachine;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$Callback;,
        Landroid/net/ip/IpManager$InitialConfiguration;,
        Landroid/net/ip/IpManager$LoggingCallbackWrapper;,
        Landroid/net/ip/IpManager$MessageHandlingLogger;,
        Landroid/net/ip/IpManager$ProvisioningConfiguration;,
        Landroid/net/ip/IpManager$RunningState;,
        Landroid/net/ip/IpManager$StartedState;,
        Landroid/net/ip/IpManager$StoppedState;,
        Landroid/net/ip/IpManager$StoppingState;,
        Landroid/net/ip/IpManager$WaitForProvisioningCallback;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I = null

.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final CMD_CONFIRM:I = 0x3

.field private static final CMD_SET_MULTICAST_FILTER:I = 0x8

.field private static final CMD_START:I = 0x2

.field private static final CMD_STOP:I = 0x1

.field private static final CMD_UPDATE_HTTP_PROXY:I = 0x7

.field private static final CMD_UPDATE_TCP_BUFFER_SIZES:I = 0x6

.field private static final DBG:Z = false

.field public static final DUMP_ARG:Ljava/lang/String; = "ipmanager"

.field public static final DUMP_ARG_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final EVENT_DHCPACTION_TIMEOUT:I = 0xa

.field private static final EVENT_NETLINK_LINKPROPERTIES_CHANGED:I = 0x5

.field private static final EVENT_PRE_DHCP_ACTION_COMPLETE:I = 0x4

.field private static final EVENT_PROVISIONING_TIMEOUT:I = 0x9

.field private static final MAX_LOG_RECORDS:I = 0x1f4

.field private static final MAX_PACKET_RECORDS:I = 0x64

.field private static final NO_CALLBACKS:Z = false

.field private static final SEND_CALLBACKS:Z = true

.field private static final VDBG:Z

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApfFilter:Landroid/net/apf/ApfFilter;

.field protected final mCallback:Landroid/net/ip/IpManager$Callback;

.field private final mClatInterfaceName:Ljava/lang/String;

.field private mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

.field private final mConnectivityPacketLog:Landroid/util/LocalLog;

.field private final mContext:Landroid/content/Context;

.field private final mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mDhcpClient:Landroid/net/dhcp/DhcpClient;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

.field private mMulticastFiltering:Z

.field private final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field private final mNetd:Landroid/net/INetd;

.field private final mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private final mNwService:Landroid/os/INetworkManagementService;

.field private final mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private final mRunningState:Lcom/android/internal/util/State;

.field private mStartTimeMillis:J

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mStoppedState:Lcom/android/internal/util/State;

.field private final mStoppingState:Lcom/android/internal/util/State;

.field private final mTag:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static synthetic -android_net_ip_IpManager-mthref-0(Landroid/net/LinkAddress;)Z
    .registers 2

    .prologue
    .line 1289
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager-mthref-1(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1769
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Landroid/net/ip/IpManager;)Landroid/net/util/SharedLog;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic -get11(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    return-object v0
.end method

.method static synthetic -get12(Landroid/net/ip/IpManager;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    return v0
.end method

.method static synthetic -get13(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method static synthetic -get14(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic -get15(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get16(Landroid/net/ip/IpManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    return-wide v0
.end method

.method static synthetic -get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get18(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-object v0
.end method

.method static synthetic -get20(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/ip/IpManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic -get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object v0
.end method

.method static synthetic -get7(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object v0
.end method

.method static synthetic -get9(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method private static synthetic -getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/LinkProperties$ProvisioningChange;->values()[Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

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

.method static synthetic -set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$ProvisioningConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object p1
.end method

.method static synthetic -set5(Landroid/net/ip/IpManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    return p1
.end method

.method static synthetic -set6(Landroid/net/ip/IpManager;J)J
    .registers 4

    iput-wide p1, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    return-wide p1
.end method

.method static synthetic -set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$InitialConfiguration;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->applyInitialConfig(Landroid/net/ip/IpManager$InitialConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/IpManager;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleLinkPropertiesUpdate(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    return-void
.end method

.method static synthetic -wrap12(Landroid/net/ip/IpManager;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/net/ip/IpManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->recordMetric(I)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->resetLinkProperties()V

    return-void
.end method

.method static synthetic -wrap15(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->stopAllIP()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/net/ip/IpManager;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/net/ip/IpManager;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/net/ip/IpManager;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIpReachabilityMonitor()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/net/ip/IpManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->doImmediateProvisioningFailure(I)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/net/ip/IpManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleIPv4Failure()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/ip/IpManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    .line 103
    sget-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    .line 102
    sput-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V
    .registers 10

    .prologue
    .line 596
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 595
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 597
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 595
    invoke-direct/range {v0 .. v5}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;Landroid/net/INetd;)V

    .line 598
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V
    .registers 11

    .prologue
    .line 606
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;Landroid/net/INetd;)V

    .line 607
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;Landroid/net/INetd;)V
    .registers 11

    .prologue
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/ip/IpManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 556
    new-instance v0, Landroid/net/ip/IpManager$StoppedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StoppedState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    .line 557
    new-instance v0, Landroid/net/ip/IpManager$StoppingState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StoppingState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    .line 558
    new-instance v0, Landroid/net/ip/IpManager$StartedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$StartedState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    .line 559
    new-instance v0, Landroid/net/ip/IpManager$RunningState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpManager$RunningState;-><init>(Landroid/net/ip/IpManager;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    .line 575
    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    .line 615
    iput-object p1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    .line 616
    iput-object p2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    .line 618
    new-instance v0, Landroid/net/ip/IpManager$LoggingCallbackWrapper;

    invoke-direct {v0, p0, p3}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;-><init>(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    .line 619
    iput-object p4, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    .line 620
    iput-object p5, p0, Landroid/net/ip/IpManager;->mNetd:Landroid/net/INetd;

    .line 622
    new-instance v0, Landroid/net/util/SharedLog;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v1}, Landroid/net/util/SharedLog;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    .line 623
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    .line 624
    new-instance v0, Landroid/net/ip/IpManager$MessageHandlingLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;-><init>(Landroid/net/ip/IpManager$MessageHandlingLogger;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    .line 626
    new-instance v0, Landroid/net/ip/IpManager$2;

    .line 627
    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 628
    new-instance v2, Landroid/net/ip/IpManager$1;

    invoke-direct {v2, p0}, Landroid/net/ip/IpManager$1;-><init>(Landroid/net/ip/IpManager;)V

    .line 626
    invoke-direct {v0, p0, v1, v2}, Landroid/net/ip/IpManager$2;-><init>(Landroid/net/ip/IpManager;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    .line 671
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 672
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 674
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 675
    new-instance v3, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$2;

    invoke-direct {v3, p0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$2;-><init>(Ljava/lang/Object;)V

    .line 674
    invoke-direct {v0, v1, v2, v3}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 677
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".EVENT_PROVISIONING_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    .line 677
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 679
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".EVENT_DHCPACTION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    .line 679
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    .line 684
    invoke-direct {p0}, Landroid/net/ip/IpManager;->configureAndStartStateMachine()V

    .line 688
    invoke-direct {p0}, Landroid/net/ip/IpManager;->startStateMachineUpdaters()V

    .line 689
    return-void
.end method

.method private static addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1137
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1138
    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_4

    .line 1141
    :cond_20
    return-void
.end method

.method static all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1761
    invoke-static {p1}, Landroid/net/ip/IpManager;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1752
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1753
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1754
    const/4 v0, 0x1

    return v0

    .line 1757
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private applyInitialConfig(Landroid/net/ip/IpManager$InitialConfiguration;)Z
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1283
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_16

    .line 1284
    const-string/jumbo v0, "tried to add %s to %s but INetd was null"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v6

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1285
    return v6

    .line 1289
    :cond_16
    iget-object v0, p1, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v1, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$4:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->findAll(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1291
    :try_start_2e
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetd:Landroid/net/INetd;

    .line 1292
    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    .line 1291
    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_41
    .catch Landroid/os/ServiceSpecificException; {:try_start_2e .. :try_end_41} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_41} :catch_42

    goto :goto_22

    .line 1293
    :catch_42
    move-exception v1

    .line 1294
    const-string/jumbo v2, "failed to add %s to %s: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-direct {p0, v2, v3}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1295
    return v6

    .line 1299
    :cond_55
    return v7
.end method

.method private assembleLinkProperties()Landroid/net/LinkProperties;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1064
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 1065
    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1078
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 1079
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1080
    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_20

    .line 1082
    :cond_30
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1088
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_72

    .line 1089
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1090
    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_47

    .line 1092
    :cond_57
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1093
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget v0, v0, Landroid/net/DhcpResults;->mtu:I

    if-eqz v0, :cond_72

    .line 1096
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    iget v0, v0, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1101
    :cond_72
    iget-object v0, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 1102
    iget-object v0, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 1104
    :cond_7f
    iget-object v0, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_88

    .line 1105
    iget-object v0, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1109
    :cond_88
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    if-eqz v0, :cond_c2

    .line 1110
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v2, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    .line 1113
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Landroid/net/ip/IpManager$InitialConfiguration;->isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1114
    iget-object v0, v2, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 1115
    new-instance v4, Landroid/net/RouteInfo;

    iget-object v5, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v4, v0, v6, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_a6

    .line 1118
    :cond_bd
    iget-object v0, v2, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    .line 1120
    :cond_c2
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1128
    return-object v1
.end method

.method public static buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .registers 1

    .prologue
    .line 725
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;-><init>()V

    return-object v0
.end method

.method private clearIPv4Address()V
    .registers 6

    .prologue
    .line 1171
    :try_start_0
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1172
    new-instance v1, Landroid/net/LinkAddress;

    const-string/jumbo v2, "0.0.0.0/0"

    invoke-direct {v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1173
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 1177
    :goto_17
    return-void

    .line 1174
    :catch_18
    move-exception v0

    .line 1175
    const-string/jumbo v1, "Failed to clear IPv4 address on interface %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method private compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 947
    iget-object v1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    if-eqz v1, :cond_a

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    .line 948
    :cond_a
    invoke-static {p1, v0}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpManager$InitialConfiguration;)Z

    move-result v1

    .line 949
    invoke-static {p2, v0}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpManager$InitialConfiguration;)Z

    move-result v0

    .line 951
    if-nez v1, :cond_5d

    if-eqz v0, :cond_5d

    .line 952
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 971
    :goto_18
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 972
    :goto_24
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 973
    :goto_30
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 988
    :cond_3c
    iget-object v4, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v4}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1002
    if-nez v3, :cond_4c

    if-eqz v1, :cond_4e

    xor-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_4e

    .line 1003
    :cond_4c
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1011
    :cond_4e
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v1

    if-eqz v1, :cond_5c

    if-eqz v2, :cond_5c

    xor-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_5c

    .line 1012
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1015
    :cond_5c
    return-object v0

    .line 953
    :cond_5d
    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    .line 954
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_18

    .line 955
    :cond_64
    if-nez v1, :cond_6d

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6d

    .line 956
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_18

    .line 968
    :cond_6d
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_18

    :cond_70
    move v1, v2

    .line 971
    goto :goto_24

    :cond_72
    move v3, v2

    .line 972
    goto :goto_30
.end method

.method private configureAndStartStateMachine()V
    .registers 3

    .prologue
    .line 692
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 693
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 694
    iget-object v0, p0, Landroid/net/ip/IpManager;->mRunningState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 695
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 697
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 699
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 700
    return-void
.end method

.method private dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .registers 5

    .prologue
    .line 1019
    invoke-static {}, Landroid/net/ip/IpManager;->-getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 1034
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 1037
    :goto_12
    return-void

    .line 1022
    :pswitch_13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 1023
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    goto :goto_12

    .line 1028
    :pswitch_1d
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 1029
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    goto :goto_12

    .line 1019
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1d
    .end packed-switch
.end method

.method private doImmediateProvisioningFailure(I)V
    .registers 6

    .prologue
    .line 1228
    const-string/jumbo v0, "onProvisioningFailure(): %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1229
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->recordMetric(I)V

    .line 1230
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 1231
    return-void
.end method

.method static find(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1773
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1774
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1775
    return-object v1

    .line 1778
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method static findAll(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/function/Predicate",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1782
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private getNetworkInterface()V
    .registers 5

    .prologue
    .line 894
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    .line 899
    :goto_8
    return-void

    .line 895
    :catch_9
    move-exception v0

    .line 897
    const-string/jumbo v1, "Failed to get interface object: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method private handleIPv4Failure()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1198
    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    .line 1199
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 1201
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 1203
    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    .line 1204
    return-void
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .registers 5

    .prologue
    .line 1180
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0, p1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 1181
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 1182
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v1

    .line 1187
    iget-object v2, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v2, p1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 1188
    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1189
    return-void
.end method

.method private handleLinkPropertiesUpdate(Z)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1145
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1146
    iget-object v2, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1147
    return v0

    .line 1149
    :cond_e
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v2

    .line 1150
    if-eqz p1, :cond_17

    .line 1151
    invoke-direct {p0, v2, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1153
    :cond_17
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-eq v2, v1, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private handleProvisioningFailure()V
    .registers 4

    .prologue
    .line 1207
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1208
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 1217
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v2, :cond_e

    .line 1218
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1221
    :cond_e
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1222
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_1a

    .line 1223
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1225
    :cond_1a
    return-void
.end method

.method static isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpManager$InitialConfiguration;)Z
    .registers 4

    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 928
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 930
    :cond_e
    if-nez p1, :cond_12

    .line 931
    const/4 v0, 0x0

    return v0

    .line 936
    :cond_12
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/ip/IpManager$InitialConfiguration;->isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1769
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ;->$INST$0:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$-android_net_ip_IpManager_68288(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1765
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method static not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate",
            "<TT;>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1765
    new-instance v0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method private recordMetric(I)V
    .registers 7

    .prologue
    .line 917
    iget-wide v0, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Start time undefined!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    sub-long/2addr v0, v2

    .line 919
    iget-object v2, p0, Landroid/net/ip/IpManager;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    new-instance v4, Landroid/net/metrics/IpManagerEvent;

    invoke-direct {v4, p1, v0, v1}, Landroid/net/metrics/IpManagerEvent;-><init>(IJ)V

    invoke-virtual {v2, v3, v4}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 920
    return-void
.end method

.method private resetLinkProperties()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 906
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 907
    iput-object v1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 908
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    .line 909
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    .line 910
    iput-object v1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 912
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 913
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method private setIPv4Address(Landroid/net/LinkAddress;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1157
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1158
    invoke-virtual {v0, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1160
    :try_start_a
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_11} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 1166
    return v4

    .line 1162
    :catch_12
    move-exception v0

    .line 1163
    const-string/jumbo v1, "IPv4 configuration failed: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    return v3
.end method

.method private setIPv6AddrGenModeIfSupported()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1259
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1265
    :cond_b
    :goto_b
    return-void

    .line 1260
    :catch_c
    move-exception v0

    .line 1261
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v2, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v1, v2, :cond_b

    .line 1262
    const-string/jumbo v1, "Unable to set IPv6 addrgen mode: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method private setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .registers 4

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    if-eqz v0, :cond_9

    .line 1044
    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfFilter;->setLinkProperties(Landroid/net/LinkProperties;)V

    .line 1046
    :cond_9
    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v0, :cond_12

    .line 1047
    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpReachabilityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 1050
    :cond_12
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p1}, Landroid/net/ip/IpManager;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 1051
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1053
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_28

    .line 1056
    iget-object v1, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1059
    :cond_28
    return-object v0
.end method

.method private startIPv4()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1236
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-eqz v0, :cond_22

    .line 1237
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1238
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    .line 1254
    :goto_20
    return v1

    .line 1240
    :cond_21
    return v2

    .line 1244
    :cond_22
    iget-object v0, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v3}, Landroid/net/dhcp/DhcpClient;->makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    .line 1245
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->registerForPreDhcpNotification()V

    .line 1246
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRapidCommit:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mDiscoverSent:Z

    if-eqz v0, :cond_56

    .line 1247
    :cond_3d
    iget-object v3, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    .line 1248
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRapidCommit:Z

    if-eqz v0, :cond_54

    move v0, v1

    .line 1249
    :goto_46
    iget-object v4, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-boolean v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mDiscoverSent:Z

    if-eqz v4, :cond_4d

    move v2, v1

    .line 1247
    :cond_4d
    const v4, 0x3000a

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    goto :goto_20

    :cond_54
    move v0, v2

    .line 1248
    goto :goto_46

    .line 1251
    :cond_56
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    const v2, 0x30001

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_20
.end method

.method private startIPv6()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1270
    :try_start_2
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 1272
    invoke-direct {p0}, Landroid/net/ip/IpManager;->setIPv6AddrGenModeIfSupported()V

    .line 1273
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_14} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_14} :catch_15

    .line 1279
    return v3

    .line 1274
    :catch_15
    move-exception v0

    .line 1275
    const-string/jumbo v1, "Unable to change interface settings: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    return v4
.end method

.method private startIpReachabilityMonitor()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1304
    :try_start_3
    new-instance v0, Landroid/net/ip/IpReachabilityMonitor;

    .line 1305
    iget-object v1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    .line 1306
    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    .line 1307
    iget-object v3, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    .line 1308
    new-instance v4, Landroid/net/ip/IpManager$3;

    invoke-direct {v4, p0}, Landroid/net/ip/IpManager$3;-><init>(Landroid/net/ip/IpManager;)V

    .line 1314
    iget-object v5, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 1304
    invoke-direct/range {v0 .. v5}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;)V

    iput-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_17} :catch_1d

    .line 1324
    :goto_17
    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v0, :cond_2b

    move v0, v6

    :goto_1c
    return v0

    .line 1315
    :catch_1d
    move-exception v0

    .line 1320
    const-string/jumbo v1, "IpReachabilityMonitor failure: %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    iput-object v8, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    goto :goto_17

    :cond_2b
    move v0, v7

    .line 1324
    goto :goto_1c
.end method

.method private startStateMachineUpdaters()V
    .registers 5

    .prologue
    .line 704
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d

    .line 709
    :goto_7
    iget-object v0, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 710
    return-void

    .line 705
    :catch_d
    move-exception v0

    .line 706
    const-string/jumbo v1, "Couldn\'t register NetlinkTracker: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method private stopAllIP()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1339
    :try_start_2
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_11

    .line 1345
    :goto_9
    :try_start_9
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_1d

    .line 1349
    :goto_10
    return-void

    .line 1340
    :catch_11
    move-exception v0

    .line 1341
    const-string/jumbo v1, "Failed to disable IPv6: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 1346
    :catch_1d
    move-exception v0

    .line 1347
    const-string/jumbo v1, "Failed to clear addresses: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpManager;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method


# virtual methods
.method public buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public completedPreDhcpAction()V
    .registers 2

    .prologue
    .line 760
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 761
    return-void
.end method

.method public confirmConfiguration()V
    .registers 2

    .prologue
    .line 756
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 757
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 792
    if-eqz p3, :cond_16

    array-length v1, p3

    if-lez v1, :cond_16

    const-string/jumbo v1, "confirm"

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 794
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->confirmConfiguration()V

    .line 795
    return-void

    .line 799
    :cond_16
    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    .line 800
    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 801
    if-eqz v2, :cond_1e

    .line 802
    iget-object v0, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 804
    :cond_1e
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " APF dump:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 807
    if-eqz v1, :cond_e7

    .line 808
    invoke-virtual {v1, v3}, Landroid/net/apf/ApfFilter;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 819
    :goto_47
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 821
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " current ProvisioningConfiguration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 824
    const-string/jumbo v0, "N/A"

    invoke-static {v2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 827
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " StateMachine dump:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 830
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v0, p1, v3, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 831
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 833
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " connectivity packet log:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 836
    const-string/jumbo v0, "Debug with python and scapy via:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    const-string/jumbo v0, "shell$ python"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    const-string/jumbo v0, ">>> from scapy import all as scapy"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    const-string/jumbo v0, ">>> scapy.Ether(\"<paste_hex_string>\".decode(\"hex\")).show2()"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 842
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 843
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConnectivityPacketLog:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    invoke-virtual {v0, p1, v3, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 844
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 845
    return-void

    .line 810
    :cond_e7
    const-string/jumbo v1, "No active ApfFilter; "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    if-nez v2, :cond_f7

    .line 812
    const-string/jumbo v0, "IpManager not yet started."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 813
    :cond_f7
    if-eqz v0, :cond_fd

    iget v1, v0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v1, :cond_105

    .line 814
    :cond_fd
    const-string/jumbo v0, "Hardware does not support APF."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 816
    :cond_105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ApfFilter not yet started, APF capabilities: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_47
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 860
    const-string/jumbo v1, "%s/%d %d %d %s [%s]"

    .line 859
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    .line 861
    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    if-nez v0, :cond_64

    const/4 v0, -0x1

    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 862
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    iget-object v0, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 859
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/net/ip/IpManager;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    iget-object v2, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    invoke-virtual {v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->reset()V

    .line 871
    return-object v0

    .line 861
    :cond_64
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    goto :goto_10
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 854
    sget-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UNKNOWN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$-android_net_ip_IpManager_26807()V
    .registers 3

    .prologue
    .line 675
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "OBSERVED AvoidBadWifi changed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected onQuitting()V
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onQuit()V

    .line 715
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 879
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    .line 880
    :goto_6
    if-nez v0, :cond_d

    .line 881
    iget-object v1, p0, Landroid/net/ip/IpManager;->mMsgStateLogger:Landroid/net/ip/IpManager$MessageHandlingLogger;

    invoke-virtual {v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->reset()V

    .line 883
    :cond_d
    return v0

    .line 879
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .registers 3

    .prologue
    .line 780
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 781
    return-void
.end method

.method public setMulticastFilter(Z)V
    .registers 4

    .prologue
    .line 788
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 789
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 770
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 771
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->stop()V

    .line 720
    iget-object v0, p0, Landroid/net/ip/IpManager;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->shutdown()V

    .line 721
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->quit()V

    .line 722
    return-void
.end method

.method public startProvisioning()V
    .registers 2

    .prologue
    .line 748
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    .line 749
    return-void
.end method

.method public startProvisioning(Landroid/net/StaticIpConfiguration;)V
    .registers 3

    .prologue
    .line 742
    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    .line 745
    return-void
.end method

.method public startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .registers 4

    .prologue
    .line 729
    invoke-virtual {p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 730
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->doImmediateProvisioningFailure(I)V

    .line 731
    return-void

    .line 734
    :cond_b
    invoke-direct {p0}, Landroid/net/ip/IpManager;->getNetworkInterface()V

    .line 736
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    .line 737
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 738
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 752
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 753
    return-void
.end method
