.class Landroid/net/dhcp/DhcpDiscoverPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpDiscoverPacket.java"


# direct methods
.method constructor <init>(IS[BZ)V
    .registers 14

    .prologue
    .line 30
    sget-object v3, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 31
    return-void
.end method

.method constructor <init>(IS[BZZ)V
    .registers 16

    .prologue
    .line 34
    sget-object v3, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZZ)V

    .line 36
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 48
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 49
    sget-object v2, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    sget-object v3, Landroid/net/dhcp/DhcpDiscoverPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 50
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    .line 49
    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 51
    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 52
    return-object v6
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    .prologue
    .line 59
    const/16 v0, 0x35

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 60
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 61
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 62
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v1, 0x37

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 63
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpPacket;->mRapidCommit:Z

    if-eqz v0, :cond_22

    .line 64
    const/16 v0, 0x50

    invoke-static {p1, v0}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlv(Ljava/nio/ByteBuffer;B)V

    .line 66
    :cond_22
    invoke-static {p1}, Landroid/net/dhcp/DhcpDiscoverPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " DISCOVER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "broadcast "

    .line 40
    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_24
    const-string/jumbo v0, "unicast "

    goto :goto_1b
.end method
