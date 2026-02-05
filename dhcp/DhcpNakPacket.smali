.class Landroid/net/dhcp/DhcpNakPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpNakPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 17

    .prologue
    .line 32
    sget-object v3, Landroid/net/dhcp/DhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 33
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 32
    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 34
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 13

    .prologue
    .line 45
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 46
    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 47
    iget-object v3, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 50
    iget-boolean v8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    const/4 v7, 0x2

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

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 60
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 61
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 62
    invoke-static {p1}, Landroid/net/dhcp/DhcpNakPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 63
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

    const-string/jumbo v1, " NAK, reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_24

    const-string/jumbo v0, "(none)"

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    goto :goto_1b
.end method
