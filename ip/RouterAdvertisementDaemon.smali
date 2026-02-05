.class public Landroid/net/ip/RouterAdvertisementDaemon;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;,
        Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;,
        Landroid/net/ip/RouterAdvertisementDaemon$RaParams;,
        Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;
    }
.end annotation


# static fields
.field private static final ALL_NODES:[B

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEFAULT_LIFETIME:I = 0xe10

.field private static final ICMPV6_ND_ROUTER_ADVERT:B

.field private static final ICMPV6_ND_ROUTER_SOLICIT:B

.field private static final MAX_RTR_ADV_INTERVAL_SEC:I = 0x258

.field private static final MAX_URGENT_RTR_ADVERTISEMENTS:I = 0x5

.field private static final MIN_DELAY_BETWEEN_RAS_SEC:I = 0x3

.field private static final MIN_RA_HEADER_SIZE:I = 0x10

.field private static final MIN_RTR_ADV_INTERVAL_SEC:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllNodes:Ljava/net/InetSocketAddress;

.field private final mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHwAddr:[B

.field private final mIfIndex:I

.field private final mIfName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

.field private final mRA:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRaLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mSocket:Ljava/io/FileDescriptor;

.field private volatile mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;


# direct methods
.method static synthetic -get0()B
    .registers 1

    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/ip/RouterAdvertisementDaemon;)I
    .registers 2

    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    return v0
.end method

.method static synthetic -get6(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/ip/RouterAdvertisementDaemon;)Z
    .registers 2

    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeSendRA(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-class v0, Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    .line 72
    const/16 v0, 0x85

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    .line 73
    const/16 v0, 0x86

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    .line 70
    return-void

    .line 95
    :array_22
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 7

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    .line 110
    const/16 v0, 0x500

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    .line 227
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfName:Ljava/lang/String;

    .line 228
    iput p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    .line 229
    iput-object p3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mHwAddr:[B

    .line 230
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->getAllNodesForScopeId(I)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 231
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    .line 232
    return-void
.end method

.method private static asByte(I)B
    .registers 2

    .prologue
    .line 350
    int-to-byte v0, p0

    return v0
.end method

.method private static asShort(I)S
    .registers 2

    .prologue
    .line 351
    int-to-short v0, p0

    return v0
.end method

.method private assembleRaLocked()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 276
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 281
    :try_start_d
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v0, :cond_58

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-boolean v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    :goto_15
    invoke-static {v4, v0}, Landroid/net/ip/RouterAdvertisementDaemon;->putHeader(Ljava/nio/ByteBuffer;Z)V

    .line 282
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mHwAddr:[B

    invoke-static {v4, v0}, Landroid/net/ip/RouterAdvertisementDaemon;->putSlla(Ljava/nio/ByteBuffer;[B)V

    .line 283
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 292
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v0, :cond_d4

    .line 293
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    invoke-static {v4, v0}, Landroid/net/ip/RouterAdvertisementDaemon;->putMtu(Ljava/nio/ByteBuffer;I)V

    .line 294
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 296
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_3b
    .catch Ljava/nio/BufferOverflowException; {:try_start_d .. :try_end_3b} :catch_b3

    move-result-object v5

    move v2, v3

    :goto_3d
    :try_start_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 297
    const/16 v6, 0xe10

    const/16 v7, 0xe10

    invoke-static {v4, v0, v6, v7}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 298
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    move v2, v1

    goto :goto_3d

    :cond_58
    move v0, v3

    .line 281
    goto :goto_15

    .line 302
    :cond_5a
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_74

    .line 303
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    const/16 v5, 0xe10

    invoke-static {v4, v0, v5}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 304
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    move v2, v1

    .line 309
    :cond_74
    :goto_74
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getPrefixes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 310
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v0, v6, v7}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 311
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    move v2, v1

    goto :goto_7e

    .line 315
    :cond_97
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getDnses()Ljava/util/Set;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d2

    .line 317
    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 318
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_ad
    .catch Ljava/nio/BufferOverflowException; {:try_start_3d .. :try_end_ad} :catch_d0

    move v0, v1

    .line 329
    :goto_ae
    if-nez v0, :cond_b2

    .line 330
    iput v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 332
    :cond_b2
    return-void

    .line 321
    :catch_b3
    move-exception v0

    move v2, v3

    .line 325
    :goto_b5
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not construct new RA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_ae

    .line 321
    :catch_d0
    move-exception v0

    goto :goto_b5

    :cond_d2
    move v0, v2

    goto :goto_ae

    :cond_d4
    move v2, v3

    goto :goto_74
.end method

.method private closeSocket()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_a

    .line 598
    :try_start_5
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_d

    .line 601
    :cond_a
    :goto_a
    iput-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 602
    return-void

    .line 599
    :catch_d
    move-exception v0

    goto :goto_a
.end method

.method private createSocket()Z
    .registers 7

    .prologue
    .line 576
    const/16 v0, -0xbd

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 578
    :try_start_6
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-static {v0, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 581
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 580
    invoke-static {v0, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 582
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfName:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    .line 583
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z

    .line 584
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->setupRaSocket(Ljava/io/FileDescriptor;I)V
    :try_end_38
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_38} :catch_3d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_38} :catch_3d
    .catchall {:try_start_6 .. :try_end_38} :catchall_5c

    .line 589
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 592
    const/4 v0, 0x1

    return v0

    .line 585
    :catch_3d
    move-exception v0

    .line 586
    :try_start_3e
    sget-object v2, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create RA daemon socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_5c

    .line 587
    const/4 v0, 0x0

    .line 589
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 587
    return v0

    .line 588
    :catchall_5c
    move-exception v0

    .line 589
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 588
    throw v0
.end method

.method private static getAllNodesForScopeId(I)Ljava/net/Inet6Address;
    .registers 5

    .prologue
    .line 343
    :try_start_0
    const-string/jumbo v0, "ff02::1"

    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    invoke-static {v0, v1, p0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    .line 344
    :catch_a
    move-exception v0

    .line 345
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to construct ff02::1 InetAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSocketValid()Z
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 606
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isSuitableDestination(Ljava/net/InetSocketAddress;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 610
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 611
    return v1

    .line 614
    :cond_b
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 615
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_27

    .line 616
    invoke-virtual {v0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v3

    .line 615
    if-eqz v3, :cond_27

    .line 617
    nop

    nop

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v0

    iget v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    if-ne v0, v3, :cond_25

    move v0, v1

    .line 615
    :goto_24
    return v0

    :cond_25
    move v0, v2

    .line 617
    goto :goto_24

    :cond_27
    move v0, v2

    .line 615
    goto :goto_24
.end method

.method private maybeNotifyMulticastTransmitter()V
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 336
    if-eqz v0, :cond_7

    .line 337
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->hup()V

    .line 339
    :cond_7
    return-void
.end method

.method private maybeSendRA(Ljava/net/InetSocketAddress;)V
    .registers 9

    .prologue
    .line 621
    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->isSuitableDestination(Ljava/net/InetSocketAddress;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_69

    .line 622
    :cond_a
    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 626
    :goto_c
    :try_start_c
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_f} :catch_48
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_f} :catch_48

    .line 627
    :try_start_f
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_45

    const/16 v1, 0x10

    if-ge v0, v1, :cond_17

    :try_start_15
    monitor-exit v6
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_16} :catch_48
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_16} :catch_48

    .line 629
    return-void

    .line 631
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    iget v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_45

    :try_start_22
    monitor-exit v6

    .line 633
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RA sendto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_44
    :goto_44
    return-void

    .line 626
    :catchall_45
    move-exception v0

    monitor-exit v6

    throw v0
    :try_end_48
    .catch Landroid/system/ErrnoException; {:try_start_22 .. :try_end_48} :catch_48
    .catch Ljava/net/SocketException; {:try_start_22 .. :try_end_48} :catch_48

    .line 634
    :catch_48
    move-exception v0

    .line 635
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 636
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendto error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_69
    move-object v5, p1

    goto :goto_c
.end method

.method private static putExpandedFlagsOption(Ljava/nio/ByteBuffer;)V
    .registers 4

    .prologue
    const/16 v0, 0x1a

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 420
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 422
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 424
    return-void
.end method

.method private static putHeader(Ljava/nio/ByteBuffer;Z)V
    .registers 6

    .prologue
    const/16 v3, 0x40

    const/4 v2, 0x0

    .line 372
    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 373
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v1

    .line 372
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 374
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v1

    .line 372
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 377
    if-eqz p1, :cond_3d

    const/16 v0, 0x8

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    .line 372
    :goto_25
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 378
    if-eqz p1, :cond_42

    const/16 v0, 0xe10

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v0

    .line 372
    :goto_31
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 381
    return-void

    .line 377
    :cond_3d
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    goto :goto_25

    .line 378
    :cond_42
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v0

    goto :goto_31
.end method

.method private static putMtu(Ljava/nio/ByteBuffer;I)V
    .registers 5

    .prologue
    const/16 v0, 0x500

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 440
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 442
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v2

    .line 440
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 443
    if-ge p1, v0, :cond_18

    move p1, v0

    .line 440
    :cond_18
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 444
    return-void
.end method

.method private static putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V
    .registers 11

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 471
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    .line 472
    const/16 v0, 0x40

    if-eq v3, v0, :cond_c

    .line 473
    return-void

    .line 478
    :cond_c
    if-gez p2, :cond_49

    move v1, v2

    .line 479
    :goto_f
    if-gez p3, :cond_47

    move v0, v2

    .line 480
    :goto_12
    if-le v0, v1, :cond_15

    move v0, v1

    .line 482
    :cond_15
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 483
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 485
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v3

    .line 483
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 486
    const/16 v5, 0xc0

    invoke-static {v5}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v5

    .line 483
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 491
    return-void

    :cond_47
    move v0, p3

    goto :goto_12

    :cond_49
    move v1, p2

    goto :goto_f
.end method

.method private static putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x19

    .line 547
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 548
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 549
    new-instance v3, Landroid/net/LinkAddress;

    const/16 v4, 0x40

    invoke-direct {v3, v0, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 550
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 553
    :cond_28
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    return-void

    .line 556
    :cond_2f
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    .line 557
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 559
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v2

    .line 557
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 562
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 569
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_53

    .line 571
    :cond_67
    return-void
.end method

.method private static putRio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;)V
    .registers 10

    .prologue
    const/16 v7, 0x40

    const/16 v1, 0x8

    const/16 v6, 0x18

    const/4 v5, 0x0

    .line 509
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v2

    .line 510
    if-le v2, v7, :cond_e

    .line 511
    return-void

    .line 515
    :cond_e
    if-nez v2, :cond_43

    const/4 v0, 0x1

    .line 514
    :goto_11
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    .line 517
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 518
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 520
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v4

    .line 518
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 521
    invoke-static {v6}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v4

    .line 518
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 522
    const/16 v4, 0xe10

    .line 518
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 525
    if-lez v2, :cond_42

    .line 526
    if-gt v2, v7, :cond_49

    move v0, v1

    :goto_3f
    invoke-virtual {p0, v3, v5, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 528
    :cond_42
    return-void

    .line 515
    :cond_43
    if-gt v2, v1, :cond_47

    const/4 v0, 0x2

    goto :goto_11

    :cond_47
    const/4 v0, 0x3

    goto :goto_11

    .line 526
    :cond_49
    const/16 v0, 0x10

    goto :goto_3f
.end method

.method private static putSlla(Ljava/nio/ByteBuffer;[B)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 393
    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    .line 395
    :cond_7
    return-void

    .line 399
    :cond_8
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    return-void
.end method


# virtual methods
.method public buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .registers 6

    .prologue
    .line 235
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    if-eqz p1, :cond_13

    .line 237
    :try_start_5
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putPrefixes(Ljava/util/Set;)V

    .line 238
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putDnses(Ljava/util/Set;)V

    .line 241
    :cond_13
    if-eqz p2, :cond_23

    .line 243
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removePrefixes(Ljava/util/Set;)V

    .line 244
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removeDnses(Ljava/util/Set;)V

    .line 247
    :cond_23
    iput-object p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 248
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2d

    monitor-exit v1

    .line 251
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeNotifyMulticastTransmitter()V

    .line 252
    return-void

    .line 235
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->createSocket()Z

    move-result v0

    if-nez v0, :cond_9

    .line 256
    const/4 v0, 0x0

    return v0

    .line 259
    :cond_9
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 260
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 263
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->closeSocket()V

    .line 270
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 271
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 272
    return-void
.end method
