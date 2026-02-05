.class public Landroid/net/ip/IpManager$InitialConfiguration;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitialConfiguration"
.end annotation


# instance fields
.field public final directlyConnectedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field public final dnsServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public gateway:Ljava/net/Inet4Address;

.field public final ipAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-0(Landroid/net/LinkAddress;)Z
    .registers 2

    .prologue
    .line 452
    invoke-static {p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-1(Landroid/net/IpPrefix;)Z
    .registers 2

    .prologue
    .line 457
    invoke-static {p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-2(Landroid/net/LinkAddress;)Z
    .registers 2

    .prologue
    .line 458
    invoke-static {p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isIPv6GUA(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-3(Landroid/net/IpPrefix;)Z
    .registers 2

    .prologue
    .line 463
    invoke-static {p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-4(Ljava/lang/Class;Landroid/net/LinkAddress;)Z
    .registers 3

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 411
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 408
    return-void
.end method

.method public static copy(Landroid/net/ip/IpManager$InitialConfiguration;)Landroid/net/ip/IpManager$InitialConfiguration;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 415
    if-nez p0, :cond_4

    .line 416
    return-object v0

    .line 418
    :cond_4
    new-instance v0, Landroid/net/ip/IpManager$InitialConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$InitialConfiguration;-><init>()V

    .line 419
    iget-object v1, v0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 420
    iget-object v1, v0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 421
    iget-object v1, v0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 422
    return-object v0
.end method

.method private static isCompliantIPv6PrefixLength(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 518
    const/16 v1, 0x30

    if-gt v1, p0, :cond_a

    .line 519
    const/16 v1, 0x40

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    .line 518
    :cond_a
    return v0
.end method

.method private static isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z
    .registers 3

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z
    .registers 3

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIPv6GUA(Landroid/net/LinkAddress;)Z
    .registers 2

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z
    .registers 2

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/ip/IpManager$InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z
    .registers 2

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/ip/IpManager$InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method static synthetic lambda$-android_net_ip_IpManager$InitialConfiguration_16901(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .registers 3

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_net_ip_IpManager$InitialConfiguration_17204(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .registers 3

    .prologue
    .line 446
    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_net_ip_IpManager$InitialConfiguration_19284(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .registers 3

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_net_ip_IpManager$InitialConfiguration_19537(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .registers 3

    .prologue
    .line 496
    invoke-static {p1, p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 484
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 485
    return v3

    .line 488
    :cond_b
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 489
    new-instance v2, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    invoke-direct {v2, v3, v0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-static {p1, v2}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 490
    return v3

    .line 494
    :cond_29
    if-eqz p2, :cond_49

    .line 495
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 496
    new-instance v2, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    invoke-direct {v2, v4, v0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-static {p2, v2}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 497
    return v3

    .line 502
    :cond_49
    return v4
.end method

.method public isValid()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 434
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 435
    return v5

    .line 439
    :cond_a
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 440
    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v3, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 441
    return v5

    .line 445
    :cond_2b
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 446
    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v3, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 447
    return v5

    .line 452
    :cond_4c
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v1, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$0:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v1}, Landroid/net/ip/IpManager;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 453
    return v5

    .line 457
    :cond_5b
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v1, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$1:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 458
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v1, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$2:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v1}, Landroid/net/ip/IpManager;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    .line 457
    if-eqz v0, :cond_74

    .line 459
    return v5

    .line 463
    :cond_74
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v1, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$3:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v1}, Landroid/net/ip/IpManager;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 464
    return v5

    .line 467
    :cond_83
    iget-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Ljava/net/Inet4Address;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_a3

    .line 468
    return v5

    .line 471
    :cond_a3
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 428
    const-string/jumbo v0, "InitialConfiguration(IPs: {%s}, prefixes: {%s}, DNS: {%s}, v4 gateway: %s)"

    .line 427
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 429
    const-string/jumbo v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 430
    const-string/jumbo v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->gateway:Ljava/net/Inet4Address;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 427
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
