.class Landroid/net/dhcp/DhcpOfferPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpOfferPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 17

    .prologue
    .line 36
    sget-object v5, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 37
    iput-object p4, p0, Landroid/net/dhcp/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    .line 38
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 59
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 60
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    if-eqz v0, :cond_20

    sget-object v2, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 61
    :goto_c
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    if-eqz v0, :cond_23

    sget-object v3, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 64
    :goto_12
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    const/4 v7, 0x2

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    .line 63
    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 65
    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 66
    return-object v6

    .line 60
    :cond_20
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    goto :goto_c

    .line 61
    :cond_23
    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    goto :goto_12
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    .prologue
    .line 73
    const/16 v0, 0x35

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 74
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 75
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    const/16 v1, 0x33

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 78
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_29

    .line 80
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    const/16 v1, 0x3a

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 83
    :cond_29
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 84
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 85
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    const/16 v1, 0x1c

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 87
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 88
    invoke-static {p1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 41
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    const-string/jumbo v0, ", DNS servers: "

    .line 44
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    if-eqz v1, :cond_38

    .line 45
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_12

    :cond_38
    move-object v1, v0

    .line 50
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " OFFER, ip "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mask "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string/jumbo v1, ", gateways "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, " lease time "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, ", domain "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
