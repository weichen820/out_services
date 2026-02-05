.class public Landroid/net/ip/IpReachabilityMonitor;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpReachabilityMonitor$Callback;,
        Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "IpReachabilityMonitor"

.field private static final VDBG:Z


# instance fields
.field private final mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

.field private final mInterfaceIndex:I

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpWatchList:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mIpWatchListVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mLastProbeTimeMs:J

.field private mLinkProperties:Landroid/net/LinkProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field private final mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

.field private final mObserverThread:Ljava/lang/Thread;

.field private volatile mRunning:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Landroid/net/ip/IpReachabilityMonitor;)I
    .registers 2

    iget v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    return v0
.end method

.method static synthetic -get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/IpReachabilityMonitor;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    return v0
.end method

.method static synthetic -get4(Landroid/net/ip/IpReachabilityMonitor;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/net/ip/IpReachabilityMonitor;Ljava/net/InetAddress;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->isWatching(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->handleNeighborLost(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;)V
    .registers 11

    .prologue
    .line 197
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 161
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    .line 202
    iput-object p2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    .line 205
    :try_start_21
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I
    :try_end_2b
    .catch Ljava/net/SocketException; {:try_start_21 .. :try_end_2b} :catch_75
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_2b} :catch_75

    .line 210
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IpReachabilityMonitor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 212
    const-string/jumbo v0, "IpReachabilityMonitor"

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    .line 213
    iput-object p4, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    .line 214
    iput-object p5, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 215
    new-instance v0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    .line 216
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    .line 217
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mObserverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 218
    return-void

    .line 207
    :catch_75
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid interface \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private avoidingBadLinks()Z
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private describeWatchList()Ljava/lang/String;
    .registers 8

    .prologue
    .line 229
    const-string/jumbo v0, ", "

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 232
    :try_start_b
    const-string/jumbo v0, "iface{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v0, "v{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v0, "ntable=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const/4 v1, 0x1

    .line 236
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    if-eqz v1, :cond_87

    .line 238
    const/4 v1, 0x0

    move v2, v1

    .line 242
    :goto_5f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_4f

    .line 240
    :cond_87
    const-string/jumbo v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_5f

    .line 245
    :cond_8f
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_95
    .catchall {:try_start_b .. :try_end_95} :catchall_9b

    monitor-exit v4

    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 231
    :catchall_9b
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private getNeighborStateLocked(Ljava/net/InetAddress;)S
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 267
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0

    .line 269
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private static getProbeWakeLockDuration()J
    .registers 2

    .prologue
    .line 399
    const-wide/16 v0, 0x1964

    return-wide v0
.end method

.method private handleNeighborLost(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 319
    :try_start_4
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 321
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 322
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    const/16 v6, 0x20

    if-eq v1, v6, :cond_32

    move-object v0, v2

    :cond_30
    :goto_30
    move-object v2, v0

    goto :goto_15

    .line 326
    :cond_32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 327
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 328
    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 329
    invoke-virtual {v4, v1}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_5c

    goto :goto_42

    .line 318
    :catchall_5c
    move-exception v0

    monitor-exit v3

    throw v0

    .line 333
    :cond_5f
    :try_start_5f
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->avoidingBadLinks()Z

    move-result v1

    if-nez v1, :cond_6b

    instance-of v1, v0, Ljava/net/Inet6Address;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_30

    .line 335
    :cond_6b
    invoke-virtual {v4, v0}, Landroid/net/LinkProperties;->removeDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_30

    .line 339
    :cond_6f
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, v4}, Landroid/net/LinkProperties;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_5c

    move-result-object v0

    monitor-exit v3

    .line 342
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_9d

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FAILURE: LOST_PROVISIONING, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    const-string/jumbo v3, "IpReachabilityMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    if-eqz v3, :cond_9d

    .line 348
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    invoke-interface {v3, v2, v1}, Landroid/net/ip/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 351
    :cond_9d
    invoke-direct {p0, v0}, Landroid/net/ip/IpReachabilityMonitor;->logNudFailed(Landroid/net/LinkProperties$ProvisioningChange;)V

    .line 352
    return-void
.end method

.method private static isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 257
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 258
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    const/4 v0, 0x1

    return v0

    .line 262
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private isWatching(Ljava/net/InetAddress;)Z
    .registers 4

    .prologue
    .line 251
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_3
    iget-boolean v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 251
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logEvent(II)V
    .registers 7

    .prologue
    .line 403
    and-int/lit16 v0, p2, 0xff

    or-int/2addr v0, p1

    .line 404
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    new-instance v3, Landroid/net/metrics/IpReachabilityEvent;

    invoke-direct {v3, v0}, Landroid/net/metrics/IpReachabilityEvent;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 405
    return-void
.end method

.method private logNudFailed(Landroid/net/LinkProperties$ProvisioningChange;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/net/ip/IpReachabilityMonitor;->mLastProbeTimeMs:J

    sub-long/2addr v4, v6

    .line 409
    invoke-static {}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_27

    move v0, v1

    .line 410
    :goto_12
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne p1, v3, :cond_29

    .line 411
    :goto_16
    invoke-static {v0, v1}, Landroid/net/metrics/IpReachabilityEvent;->nudFailureEventType(ZZ)I

    move-result v0

    .line 412
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    new-instance v3, Landroid/net/metrics/IpReachabilityEvent;

    invoke-direct {v3, v0}, Landroid/net/metrics/IpReachabilityEvent;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 413
    return-void

    :cond_27
    move v0, v2

    .line 409
    goto :goto_12

    :cond_29
    move v1, v2

    .line 410
    goto :goto_16
.end method

.method private static probeNeighbor(ILjava/net/InetAddress;)I
    .registers 7

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "probing ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    const/4 v0, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 183
    invoke-static {v0, p1, v2, p0, v3}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object v0

    .line 187
    :try_start_2b
    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {v2, v0}, Landroid/net/netlink/NetlinkSocket;->sendOneShotKernelMessage(I[B)V
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_2b .. :try_end_30} :catch_32

    .line 193
    const/4 v0, 0x0

    return v0

    .line 188
    :catch_32
    move-exception v0

    .line 189
    const-string/jumbo v2, "IpReachabilityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    neg-int v0, v0

    return v0
.end method


# virtual methods
.method public clearLinkProperties()V
    .registers 3

    .prologue
    .line 307
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_3
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 309
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 310
    iget v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 313
    return-void

    .line 307
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public probeAll()V
    .registers 8

    .prologue
    .line 360
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3d

    monitor-exit v1

    .line 364
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    iget-boolean v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    if-eqz v1, :cond_22

    .line 371
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 374
    :cond_22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 375
    iget-boolean v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    if-nez v2, :cond_40

    .line 383
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLastProbeTimeMs:J

    .line 384
    return-void

    .line 360
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 378
    :cond_40
    iget v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceIndex:I

    invoke-static {v2, v0}, Landroid/net/ip/IpReachabilityMonitor;->probeNeighbor(ILjava/net/InetAddress;)I

    move-result v2

    .line 379
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v4, "put neighbor %s into NUD_PROBE state (rval=%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 380
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 379
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 381
    const/16 v0, 0x100

    invoke-direct {p0, v0, v2}, Landroid/net/ip/IpReachabilityMonitor;->logEvent(II)V

    goto :goto_26
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mRunning:Z

    .line 222
    invoke-virtual {p0}, Landroid/net/ip/IpReachabilityMonitor;->clearLinkProperties()V

    .line 223
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNetlinkSocketObserver:Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;

    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->-wrap0(Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V

    .line 224
    return-void
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .registers 8

    .prologue
    .line 273
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 275
    const-string/jumbo v0, "IpReachabilityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requested LinkProperties interface \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    const-string/jumbo v2, "\' does not match: "

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceName:Ljava/lang/String;

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 280
    :cond_38
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_3b
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 282
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 284
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    .line 285
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_51
    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 286
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 287
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    .line 288
    invoke-static {v3, v0}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 289
    invoke-direct {p0, v0}, Landroid/net/ip/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_3b .. :try_end_78} :catchall_79

    goto :goto_51

    .line 280
    :catchall_79
    move-exception v0

    monitor-exit v1

    throw v0

    .line 294
    :cond_7c
    :try_start_7c
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_84
    :goto_84
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 295
    invoke-static {v3, v0}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 296
    invoke-direct {p0, v0}, Landroid/net/ip/IpReachabilityMonitor;->getNeighborStateLocked(Ljava/net/InetAddress;)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    .line 300
    :cond_a2
    iput-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchList:Ljava/util/Map;

    .line 301
    iget v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpWatchListVersion:I
    :try_end_aa
    .catchall {:try_start_7c .. :try_end_aa} :catchall_79

    monitor-exit v1

    .line 304
    return-void
.end method
