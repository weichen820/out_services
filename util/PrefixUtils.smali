.class public Landroid/net/util/PrefixUtils;
.super Ljava/lang/Object;
.source "PrefixUtils.java"


# static fields
.field public static final DEFAULT_WIFI_P2P_PREFIX:Landroid/net/IpPrefix;

.field private static final MIN_NON_FORWARDABLE_PREFIXES:[Landroid/net/IpPrefix;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/net/IpPrefix;

    .line 35
    const-string/jumbo v1, "127.0.0.0/8"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "169.254.0.0/16"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "::/3"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "fe80::/64"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "fc00::/7"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "ff02::/8"

    invoke-static {v1}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 34
    sput-object v0, Landroid/net/util/PrefixUtils;->MIN_NON_FORWARDABLE_PREFIXES:[Landroid/net/IpPrefix;

    .line 43
    const-string/jumbo v0, "192.168.49.0/24"

    invoke-static {v0}, Landroid/net/util/PrefixUtils;->pfx(Ljava/lang/String;)Landroid/net/IpPrefix;

    move-result-object v0

    sput-object v0, Landroid/net/util/PrefixUtils;->DEFAULT_WIFI_P2P_PREFIX:Landroid/net/IpPrefix;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNonForwardablePrefixes(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Landroid/net/util/PrefixUtils;->MIN_NON_FORWARDABLE_PREFIXES:[Landroid/net/IpPrefix;

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public static asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;
    .registers 4

    .prologue
    .line 70
    new-instance v0, Landroid/net/IpPrefix;

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public static getNonForwardablePrefixes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    invoke-static {v0}, Landroid/net/util/PrefixUtils;->addNonForwardablePrefixes(Ljava/util/Set;)V

    .line 48
    return-object v0
.end method

.method public static ipAddressAsPrefix(Ljava/net/InetAddress;)Landroid/net/IpPrefix;
    .registers 3

    .prologue
    .line 74
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_c

    .line 75
    const/16 v0, 0x20

    .line 77
    :goto_6
    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, p0, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    .line 76
    :cond_c
    const/16 v0, 0x80

    goto :goto_6
.end method

.method public static localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 57
    if-nez p0, :cond_8

    return-object v1

    .line 59
    :cond_8
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 60
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_10

    .line 61
    invoke-static {v0}, Landroid/net/util/PrefixUtils;->asIpPrefix(Landroid/net/LinkAddress;)Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 66
    :cond_2e
    return-object v1
.end method

.method private static pfx(Ljava/lang/String;)Landroid/net/IpPrefix;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Landroid/net/IpPrefix;

    invoke-direct {v0, p0}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
