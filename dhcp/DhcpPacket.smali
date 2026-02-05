.class public abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_OPTION_RAPID_COMMIT:B = 0x50t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field private static final MAX_MTU:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field private static final MIN_MTU:I = 0x500

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"

.field static testOverrideHostname:Ljava/lang/String;

.field static testOverrideVendorId:Ljava/lang/String;


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field protected mRapidCommit:Z

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 41
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 42
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    .line 321
    sput-object v1, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    .line 322
    sput-object v1, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    .line 32
    return-void

    .line 43
    :array_1a
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .registers 19

    .prologue
    .line 342
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 341
    invoke-direct/range {v0 .. v9}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZZ)V

    .line 343
    return-void
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZZ)V
    .registers 10

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    .line 328
    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    .line 329
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 330
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 331
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 332
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 333
    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    .line 334
    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    .line 335
    iput-boolean p9, p0, Landroid/net/dhcp/DhcpPacket;->mRapidCommit:Z

    .line 336
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B)V
    .registers 3

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 547
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .registers 4

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 555
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 556
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .registers 4

    .prologue
    .line 617
    if-eqz p2, :cond_10

    .line 618
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 619
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 622
    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .registers 4

    .prologue
    .line 606
    if-eqz p2, :cond_10

    .line 607
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 608
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 611
    :cond_10
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .registers 6

    .prologue
    .line 629
    :try_start_0
    const-string/jumbo v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_b

    .line 633
    return-void

    .line 630
    :catch_b
    move-exception v0

    .line 631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String is not US-ASCII: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .registers 4

    .prologue
    .line 577
    if-eqz p2, :cond_9

    .line 578
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 580
    :cond_9
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0xff

    .line 586
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    .line 588
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 589
    if-le v0, v4, :cond_38

    .line 590
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DHCP option too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 591
    const-string/jumbo v2, " vs. "

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_38
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 595
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 597
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 598
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_43

    .line 600
    :cond_57
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .registers 7

    .prologue
    const/16 v3, 0xff

    .line 562
    if-eqz p2, :cond_38

    .line 563
    array-length v0, p2

    if-le v0, v3, :cond_2d

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCP option too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 565
    array-length v2, p2

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 565
    const-string/jumbo v2, " vs. "

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_2d
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 569
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 571
    :cond_38
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .registers 2

    .prologue
    .line 639
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 640
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1243
    new-instance v1, Landroid/net/dhcp/DhcpAckPacket;

    .line 1244
    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    .line 1243
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1245
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1246
    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1247
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1248
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1249
    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1250
    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1251
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1252
    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpAckPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 1203
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1202
    invoke-static/range {v0 .. v6}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[BZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildDiscoverPacket(IIS[BZ[BZ)Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 1208
    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZZ)V

    .line 1210
    iput-object p5, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1211
    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpDiscoverPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 1260
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p2

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1262
    const-string/jumbo v1, "requested address not available"

    iput-object v1, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1263
    iput-object p3, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1264
    const/16 v1, 0x44

    const/16 v2, 0x43

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpNakPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .line 1223
    new-instance v1, Landroid/net/dhcp/DhcpOfferPacket;

    .line 1224
    sget-object v6, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    .line 1223
    invoke-direct/range {v1 .. v8}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1225
    move-object/from16 v0, p9

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1226
    move-object/from16 v0, p10

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1227
    iput-object p6, v1, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1228
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1229
    move-object/from16 v0, p11

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1230
    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1231
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1232
    const/16 v2, 0x44

    const/16 v3, 0x43

    invoke-virtual {v1, p0, v2, v3}, Landroid/net/dhcp/DhcpOfferPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 16

    .prologue
    .line 1274
    new-instance v0, Landroid/net/dhcp/DhcpRequestPacket;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1276
    iput-object p6, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1277
    iput-object p7, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1278
    iput-object p9, v0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1279
    iput-object p8, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1280
    const/16 v1, 0x43

    const/16 v2, 0x44

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/dhcp/DhcpRequestPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1281
    return-object v0
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .registers 11

    .prologue
    const/4 v0, 0x0

    const v5, 0xffff

    .line 504
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 508
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 509
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 512
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 514
    sub-int v1, p4, p3

    div-int/lit8 v1, v1, 0x2

    new-array v3, v1, [S

    .line 515
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 517
    array-length v2, v3

    move v1, p2

    :goto_1d
    if-ge v0, v2, :cond_29

    aget-short v4, v3, v0

    .line 518
    invoke-static {v4}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v4

    add-int/2addr v1, v4

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 521
    :cond_29
    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    .line 524
    if-eq p4, v0, :cond_4d

    .line 525
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    int-to-short v0, v0

    .line 528
    if-gez v0, :cond_39

    .line 529
    add-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    .line 532
    :cond_39
    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v1

    .line 535
    :goto_3c
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v5

    and-int/2addr v0, v5

    add-int/2addr v0, v1

    .line 536
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v5

    add-int/2addr v0, v1

    and-int/2addr v0, v5

    .line 537
    not-int v0, v0

    .line 538
    int-to-short v0, v0

    invoke-static {v0}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v0

    return v0

    :cond_4d
    move v0, v1

    goto :goto_3c
.end method

.method static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    .prologue
    .line 769
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 770
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 771
    const/16 v27, 0x0

    .line 772
    const/16 v26, 0x0

    .line 773
    const/16 v25, 0x0

    .line 774
    const/16 v24, 0x0

    .line 775
    const/16 v23, 0x0

    .line 776
    const/16 v22, 0x0

    .line 777
    const/16 v21, 0x0

    .line 778
    const/16 v20, 0x0

    .line 779
    const/4 v6, 0x0

    .line 781
    const/16 v19, 0x0

    .line 782
    const/16 v18, 0x0

    .line 788
    const/16 v17, 0x0

    .line 789
    const/4 v14, 0x0

    .line 790
    const/4 v13, 0x0

    .line 791
    const/4 v12, 0x0

    .line 792
    const/4 v11, 0x0

    .line 795
    const/4 v10, -0x1

    .line 797
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 800
    if-nez p1, :cond_8f

    .line 801
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x116

    if-ge v2, v3, :cond_59

    .line 802
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    .line 803
    const-string/jumbo v4, "L2 packet too short, %d < %d"

    .line 802
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 803
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/16 v6, 0x116

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 802
    invoke-direct {v2, v3, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 806
    :cond_59
    const/4 v2, 0x6

    new-array v2, v2, [B

    .line 807
    const/4 v3, 0x6

    new-array v3, v3, [B

    .line 809
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 810
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 812
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 814
    sget v3, Landroid/system/OsConstants;->ETH_P_IP:I

    if-eq v2, v3, :cond_8f

    .line 815
    new-instance v3, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    .line 816
    const-string/jumbo v5, "Unexpected L2 type 0x%04x, expected 0x%04x"

    .line 815
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 816
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 815
    invoke-direct {v3, v4, v5, v6}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 820
    :cond_8f
    const/4 v2, 0x1

    move/from16 v0, p1

    if-gt v0, v2, :cond_15c

    .line 821
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x108

    if-ge v2, v3, :cond_be

    .line 822
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    .line 823
    const-string/jumbo v4, "L3 packet too short, %d < %d"

    .line 822
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 823
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/16 v6, 0x108

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 822
    invoke-direct {v2, v3, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 826
    :cond_be
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 827
    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 828
    const/4 v4, 0x4

    if-eq v3, v4, :cond_de

    .line 829
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    .line 830
    sget v4, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    const-string/jumbo v5, "Invalid IP version %d"

    .line 829
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 830
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 829
    invoke-direct {v2, v4, v5, v6}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 834
    :cond_de
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 835
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 836
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 837
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 838
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 839
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 840
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 841
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 843
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 844
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    .line 846
    const/16 v4, 0x11

    if-eq v3, v4, :cond_117

    .line 847
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    .line 848
    sget v4, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    const-string/jumbo v5, "Protocol not UDP: %d"

    .line 847
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 848
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    .line 847
    invoke-direct {v2, v4, v5, v6}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 854
    :cond_117
    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v3, v2, -0x5

    .line 855
    const/4 v2, 0x0

    :goto_11c
    if-ge v2, v3, :cond_124

    .line 856
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_11c

    .line 860
    :cond_124
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 861
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 862
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 863
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 868
    invoke-static {v2, v3}, Landroid/net/dhcp/DhcpPacket;->isPacketToOrFromClient(SS)Z

    move-result v4

    if-nez v4, :cond_15c

    .line 869
    invoke-static {v2, v3}, Landroid/net/dhcp/DhcpPacket;->isPacketServerToServer(SS)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 868
    if-eqz v4, :cond_15c

    .line 874
    new-instance v4, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v5, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    .line 875
    const-string/jumbo v6, "Unexpected UDP ports %d->%d"

    .line 874
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 875
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    .line 874
    invoke-direct {v4, v5, v6, v7}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 880
    :cond_15c
    const/4 v2, 0x2

    move/from16 v0, p1

    if-gt v0, v2, :cond_169

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0xec

    if-ge v2, v3, :cond_18b

    .line 881
    :cond_169
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    .line 882
    const-string/jumbo v4, "Invalid type or BOOTP packet too short, %d < %d"

    .line 881
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 883
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/16 v6, 0xec

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 881
    invoke-direct {v2, v3, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 886
    :cond_18b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 887
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 888
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 889
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 890
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 891
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 892
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 893
    const v7, 0x8000

    and-int/2addr v5, v7

    if-eqz v5, :cond_213

    const/4 v5, 0x1

    .line 894
    :goto_1ad
    const/4 v7, 0x4

    new-array v9, v7, [B

    .line 897
    :try_start_1b0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 898
    invoke-static {v9}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    check-cast v7, Ljava/net/Inet4Address;

    .line 899
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 900
    invoke-static {v9}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    check-cast v8, Ljava/net/Inet4Address;

    .line 901
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 902
    invoke-static {v9}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v15

    check-cast v15, Ljava/net/Inet4Address;

    .line 903
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 904
    invoke-static {v9}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    check-cast v16, Ljava/net/Inet4Address;
    :try_end_1dc
    .catch Ljava/net/UnknownHostException; {:try_start_1b0 .. :try_end_1dc} :catch_215

    .line 916
    const/16 v9, 0x10

    if-le v2, v9, :cond_1e3

    .line 917
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    array-length v2, v2

    .line 920
    :cond_1e3
    new-array v9, v2, [B

    .line 921
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 924
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v28

    rsub-int/lit8 v2, v2, 0x10

    add-int v2, v2, v28

    add-int/lit8 v2, v2, 0x40

    add-int/lit16 v2, v2, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 929
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v28, 0x4

    move/from16 v0, v28

    if-ge v2, v0, :cond_22b

    .line 930
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    const-string/jumbo v4, "not a DHCP message"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 893
    :cond_213
    const/4 v5, 0x0

    goto :goto_1ad

    .line 905
    :catch_215
    move-exception v2

    .line 906
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    .line 907
    const-string/jumbo v4, "Invalid IPv4 address: %s"

    .line 906
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 907
    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 906
    invoke-direct {v2, v3, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 933
    :cond_22b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 934
    const v28, 0x63825363

    move/from16 v0, v28

    if-eq v2, v0, :cond_255

    .line 935
    new-instance v3, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    .line 936
    const-string/jumbo v5, "Bad magic cookie 0x%08x, should be 0x%08x"

    .line 935
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 937
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const v2, 0x63825363

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 935
    invoke-direct {v3, v4, v5, v6}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 941
    :cond_255
    const/4 v2, 0x1

    move-object/from16 v28, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    move-object/from16 v32, v27

    move-object/from16 v23, v18

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v17

    .line 943
    :goto_274
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    if-ge v11, v12, :cond_405

    if-eqz v2, :cond_405

    .line 944
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v17

    .line 946
    const/4 v11, -0x1

    move/from16 v0, v17

    if-ne v0, v11, :cond_2c7

    .line 947
    const/4 v2, 0x0

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v27, v32

    :goto_2a8
    move-object/from16 v28, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    move-object/from16 v32, v27

    move-object/from16 v23, v18

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    move-object/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v17

    goto :goto_274

    .line 948
    :cond_2c7
    if-nez v17, :cond_2e8

    :cond_2c9
    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v27, v32

    goto :goto_2a8

    .line 951
    :cond_2e8
    :try_start_2e8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v12, v11, 0xff

    .line 952
    const/4 v13, 0x0

    .line 954
    sparse-switch v17, :sswitch_data_4b4

    .line 1039
    const/4 v11, 0x0

    move/from16 v35, v11

    move v11, v13

    move/from16 v13, v35

    :goto_2f8
    if-ge v13, v12, :cond_309

    .line 1040
    add-int/lit8 v14, v11, 0x1

    .line 1041
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 1039
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    move v11, v14

    goto :goto_2f8

    .line 956
    :sswitch_304
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v31

    .line 957
    const/4 v11, 0x4

    .line 1045
    :cond_309
    :goto_309
    if-eq v11, v12, :cond_2c9

    .line 1047
    sget v2, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    .line 1046
    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v2

    .line 1048
    new-instance v3, Landroid/net/dhcp/DhcpPacket$ParseException;

    .line 1049
    const-string/jumbo v4, "Invalid length %d for option %d, expected %d"

    .line 1048
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 1050
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 1048
    invoke-direct {v3, v2, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v3
    :try_end_334
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2e8 .. :try_end_334} :catch_334

    .line 1053
    :catch_334
    move-exception v2

    .line 1055
    sget v2, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    .line 1054
    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v2

    .line 1056
    new-instance v3, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string/jumbo v4, "BufferUnderflowException"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v2, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 960
    :sswitch_349
    const/4 v11, 0x0

    :goto_34a
    if-ge v11, v12, :cond_309

    .line 961
    :try_start_34c
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v13

    move-object/from16 v0, v34

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v11, v11, 0x4

    goto :goto_34a

    .line 965
    :sswitch_358
    const/4 v11, 0x0

    :goto_359
    if-ge v11, v12, :cond_309

    .line 966
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v13

    move-object/from16 v0, v33

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v11, v11, 0x4

    goto :goto_359

    .line 971
    :sswitch_367
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v26

    move v11, v12

    .line 972
    goto :goto_309

    .line 974
    :sswitch_370
    const/4 v11, 0x2

    .line 975
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v22

    goto :goto_309

    .line 979
    :sswitch_37a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v25

    move v11, v12

    .line 980
    goto :goto_309

    .line 982
    :sswitch_383
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v24

    .line 983
    const/4 v11, 0x4

    .line 984
    goto :goto_309

    .line 986
    :sswitch_389
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v23

    .line 987
    const/4 v11, 0x4

    .line 988
    goto/16 :goto_309

    .line 990
    :sswitch_390
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 991
    const/4 v11, 0x4

    .line 992
    goto/16 :goto_309

    .line 994
    :sswitch_39b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 995
    const/4 v10, 0x1

    move/from16 v35, v10

    move v10, v11

    move/from16 v11, v35

    .line 996
    goto/16 :goto_309

    .line 998
    :sswitch_3a7
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v32

    .line 999
    const/4 v11, 0x4

    .line 1000
    goto/16 :goto_309

    .line 1002
    :sswitch_3ae
    new-array v0, v12, [B

    move-object/from16 v27, v0

    .line 1003
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v11, v12

    .line 1005
    goto/16 :goto_309

    .line 1008
    :sswitch_3bc
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v30

    move v11, v12

    .line 1009
    goto/16 :goto_309

    .line 1011
    :sswitch_3c6
    const/4 v11, 0x2

    .line 1012
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v13

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v21

    goto/16 :goto_309

    .line 1015
    :sswitch_3d1
    const/4 v11, 0x4

    .line 1016
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto/16 :goto_309

    .line 1019
    :sswitch_3dc
    const/4 v11, 0x4

    .line 1020
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_309

    .line 1025
    :sswitch_3e7
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v29

    move v11, v12

    .line 1026
    goto/16 :goto_309

    .line 1028
    :sswitch_3f1
    new-array v11, v12, [B

    .line 1029
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v11, v12

    .line 1031
    goto/16 :goto_309

    .line 1035
    :sswitch_3fb
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    :try_end_401
    .catch Ljava/nio/BufferUnderflowException; {:try_start_34c .. :try_end_401} :catch_334

    move-result-object v28

    move v11, v12

    .line 1036
    goto/16 :goto_309

    .line 1062
    :cond_405
    packed-switch v10, :pswitch_data_502

    .line 1098
    :pswitch_408
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    .line 1099
    const-string/jumbo v4, "Unimplemented DHCP type %d"

    .line 1098
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1099
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1098
    invoke-direct {v2, v3, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 1064
    :pswitch_41d
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    .line 1065
    const-string/jumbo v4, "No DHCP message type option"

    .line 1064
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v5}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 1067
    :pswitch_42b
    new-instance v10, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v10, v3, v4, v9, v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 1102
    :goto_430
    move-object/from16 v0, v24

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1103
    move-object/from16 v0, v33

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1104
    move-object/from16 v0, v25

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1105
    move-object/from16 v0, v34

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1106
    move-object/from16 v0, v26

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1107
    move-object/from16 v0, v20

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1108
    move-object/from16 v0, v30

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1109
    move-object/from16 v0, v22

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    .line 1110
    move-object/from16 v0, v23

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1111
    move-object/from16 v0, v27

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1112
    move-object/from16 v0, v32

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1113
    move-object/from16 v0, v31

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1114
    move-object/from16 v0, v21

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    .line 1115
    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    .line 1116
    move-object/from16 v0, v18

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    .line 1117
    move-object/from16 v0, v29

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    .line 1118
    move-object/from16 v0, v28

    iput-object v0, v10, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    .line 1119
    return-object v10

    .line 1071
    :pswitch_475
    new-instance v2, Landroid/net/dhcp/DhcpOfferPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object v10, v2

    .line 1073
    goto :goto_430

    .line 1075
    :pswitch_47c
    new-instance v10, Landroid/net/dhcp/DhcpRequestPacket;

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v9

    move v15, v5

    invoke-direct/range {v10 .. v15}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    goto :goto_430

    .line 1079
    :pswitch_487
    new-instance v10, Landroid/net/dhcp/DhcpDeclinePacket;

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_430

    .line 1084
    :pswitch_493
    new-instance v2, Landroid/net/dhcp/DhcpAckPacket;

    invoke-direct/range {v2 .. v9}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    move-object v10, v2

    .line 1086
    goto :goto_430

    .line 1088
    :pswitch_49a
    new-instance v10, Landroid/net/dhcp/DhcpNakPacket;

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto :goto_430

    .line 1093
    :pswitch_4a6
    new-instance v10, Landroid/net/dhcp/DhcpInformPacket;

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object v14, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    goto/16 :goto_430

    .line 954
    nop

    :sswitch_data_4b4
    .sparse-switch
        0x1 -> :sswitch_304
        0x3 -> :sswitch_349
        0x6 -> :sswitch_358
        0xc -> :sswitch_367
        0xf -> :sswitch_37a
        0x1a -> :sswitch_370
        0x1c -> :sswitch_383
        0x2b -> :sswitch_3fb
        0x32 -> :sswitch_389
        0x33 -> :sswitch_390
        0x35 -> :sswitch_39b
        0x36 -> :sswitch_3a7
        0x37 -> :sswitch_3ae
        0x38 -> :sswitch_3bc
        0x39 -> :sswitch_3c6
        0x3a -> :sswitch_3d1
        0x3b -> :sswitch_3dc
        0x3c -> :sswitch_3e7
        0x3d -> :sswitch_3f1
    .end sparse-switch

    .line 1062
    :pswitch_data_502
    .packed-switch -0x1
        :pswitch_41d
        :pswitch_408
        :pswitch_42b
        :pswitch_475
        :pswitch_47c
        :pswitch_487
        :pswitch_493
        :pswitch_49a
        :pswitch_408
        :pswitch_4a6
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1127
    invoke-static {p0, v3, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1129
    :try_start_b
    invoke-static {v0, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    :try_end_e
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_b .. :try_end_e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v0

    return-object v0

    .line 1132
    :catch_10
    move-exception v0

    .line 1133
    new-instance v1, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0, v3}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1130
    :catch_1f
    move-exception v0

    .line 1131
    throw v0
.end method

.method private getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 648
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-object v0

    .line 649
    :cond_7
    const-string/jumbo v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVendorId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 643
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    return-object v0

    .line 644
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android-dhcp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static intAbs(S)I
    .registers 2

    .prologue
    .line 494
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static isPacketServerToServer(SS)Z
    .registers 4

    .prologue
    const/16 v1, 0x43

    const/4 v0, 0x0

    .line 738
    if-ne p0, v1, :cond_8

    if-ne p1, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static isPacketToOrFromClient(SS)Z
    .registers 4

    .prologue
    const/16 v1, 0x44

    const/4 v0, 0x1

    .line 734
    if-eq p0, v1, :cond_7

    if-ne p1, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static macToString([B)Ljava/lang/String;
    .registers 5

    .prologue
    .line 669
    const-string/jumbo v1, ""

    .line 671
    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_58

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_55

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 683
    :cond_58
    return-object v1
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 716
    new-array v2, p1, [B

    .line 717
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 718
    array-length v0, v2

    .line 719
    if-nez p2, :cond_11

    move v0, v1

    .line 724
    :goto_a
    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 725
    aget-byte v3, v2, v0

    if-nez v3, :cond_19

    .line 730
    :cond_11
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v3

    .line 724
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 698
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 699
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 702
    :try_start_7
    invoke-static {v0}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_d} :catch_e

    .line 709
    :goto_d
    return-object v0

    .line 703
    :catch_e
    move-exception v0

    move-object v0, v1

    .line 706
    goto :goto_d
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .registers 4

    .prologue
    .line 659
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 660
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getVendorId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 661
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 663
    :cond_23
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .registers 21

    .prologue
    .line 377
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v9

    .line 378
    invoke-virtual {p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v10

    .line 379
    const/4 v8, 0x0

    .line 380
    const/4 v7, 0x0

    .line 381
    const/4 v6, 0x0

    .line 382
    const/4 v5, 0x0

    .line 383
    const/4 v4, 0x0

    .line 384
    const/4 v3, 0x0

    .line 385
    const/4 v2, 0x0

    .line 387
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 388
    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 390
    if-nez p1, :cond_31

    .line 391
    sget-object v11, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget-object v11, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    sget v11, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v11, v11

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 399
    :cond_31
    const/4 v11, 0x1

    if-gt p1, v11, :cond_a9

    .line 400
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 401
    const/16 v2, 0x45

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 402
    const/16 v2, 0x10

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 403
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 404
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 406
    const/16 v2, 0x4000

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 407
    const/16 v2, 0x40

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    const/16 v2, 0x11

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 410
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 412
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 413
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 417
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 418
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 419
    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 421
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 422
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 423
    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 427
    :cond_a9
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    const/4 v9, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    iget-object v9, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v9, v9

    int-to-byte v9, v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 430
    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    iget v9, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 432
    iget-short v9, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 434
    if-eqz p8, :cond_1a9

    .line 435
    const/16 v9, -0x8000

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 440
    :goto_d8
    iget-object v9, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v9}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 441
    iget-object v9, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v9}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 442
    iget-object v9, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v9}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 443
    iget-object v9, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v9}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 444
    iget-object v9, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 446
    iget-object v10, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v10, v10

    rsub-int/lit8 v10, v10, 0x10

    .line 445
    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    add-int/lit16 v9, v9, 0x80

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 449
    const v9, 0x63825363

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 450
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 453
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13a

    .line 454
    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    :cond_13a
    const/4 v9, 0x1

    if-gt p1, v9, :cond_1a8

    .line 461
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    sub-int/2addr v9, v4

    int-to-short v9, v9

    .line 462
    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v9}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 469
    add-int/lit8 v3, v6, 0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    invoke-static {v3}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    .line 470
    add-int/lit8 v10, v6, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v10

    invoke-static {v10}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v10

    add-int/2addr v3, v10

    .line 471
    add-int/lit8 v10, v6, 0x6

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v10

    invoke-static {v10}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v10

    add-int/2addr v3, v10

    .line 472
    add-int/lit8 v10, v6, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v10

    invoke-static {v10}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v10

    add-int/2addr v3, v10

    .line 475
    add-int/lit8 v3, v3, 0x11

    .line 476
    add-int/2addr v3, v9

    .line 480
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 478
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v3, v4, v9}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v3

    int-to-short v3, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v8

    int-to-short v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v7, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 485
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v2, v8, v5}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v2

    int-to-short v2, v2

    .line 484
    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 487
    :cond_1a8
    return-void

    .line 437
    :cond_1a9
    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto/16 :goto_d8
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 364
    aput-byte v4, v0, v3

    .line 365
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 366
    return-object v0
.end method

.method public getClientMac()[B
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .registers 5

    .prologue
    .line 1187
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 1188
    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1189
    :cond_10
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_26

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_26

    .line 1190
    const-wide/32 v0, 0xea60

    return-wide v0

    .line 1192
    :cond_26
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1141
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 1142
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1143
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 1144
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1145
    return-object v5

    .line 1150
    :cond_17
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v1, :cond_81

    .line 1152
    :try_start_1b
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_20} :catch_7f

    move-result v1

    .line 1161
    :goto_21
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .line 1163
    :try_start_26
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v3, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_2d} :catch_86

    .line 1168
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 1169
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, v3, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 1172
    :cond_3f
    iget-object v0, v3, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1173
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/StaticIpConfiguration;->domains:Ljava/lang/String;

    .line 1174
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v0, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 1175
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_88

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_5c
    iput v0, v3, Landroid/net/DhcpResults;->leaseDuration:I

    .line 1177
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    const/16 v1, 0x500

    if-gt v1, v0, :cond_8a

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    const/16 v1, 0x5dc

    if-gt v0, v1, :cond_8a

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    :goto_7c
    iput v0, v3, Landroid/net/DhcpResults;->mtu:I

    .line 1179
    return-object v3

    .line 1153
    :catch_7f
    move-exception v0

    .line 1155
    return-object v5

    .line 1158
    :cond_81
    invoke-static {v0}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v1

    goto :goto_21

    .line 1164
    :catch_86
    move-exception v0

    .line 1165
    return-object v5

    .line 1176
    :cond_88
    const/4 v0, -0x1

    goto :goto_5c

    :cond_8a
    move v0, v2

    .line 1177
    goto :goto_7c
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v0}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .line 689
    return-object v0
.end method
