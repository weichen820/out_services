.class Landroid/net/dhcp/DhcpInformPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpInformPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 17

    .prologue
    .line 32
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 33
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 44
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 46
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    iget-object v3, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 47
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    .line 46
    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 48
    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 49
    return-object v6
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    .prologue
    .line 56
    const/16 v0, 0x35

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 57
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 58
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 59
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    const/16 v1, 0x37

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 60
    invoke-static {p1}, Landroid/net/dhcp/DhcpInformPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " INFORM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
