.class Landroid/net/dhcp/DhcpRequestPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpRequestPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;[BZ)V
    .registers 15

    .prologue
    .line 33
    sget-object v4, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 34
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 47
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 49
    sget-object v2, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    sget-object v3, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

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

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 60
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 61
    sget-object v0, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 62
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    const/16 v1, 0x32

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 64
    :cond_20
    sget-object v0, Landroid/net/dhcp/DhcpRequestPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 65
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 67
    :cond_31
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 68
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v1, 0x37

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpRequestPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 69
    invoke-static {p1}, Landroid/net/dhcp/DhcpRequestPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " REQUEST, desired IP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from host \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "\', param list length "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    .line 38
    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_3c
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    array-length v0, v0

    goto :goto_33
.end method
