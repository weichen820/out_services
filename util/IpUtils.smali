.class public Landroid/net/util/IpUtils;
.super Ljava/lang/Object;
.source "IpUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 144
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "[%s]:%d"

    .line 143
    :goto_7
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 143
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1d
    const-string/jumbo v0, "%s:%d"

    goto :goto_7
.end method

.method private static checksum(Ljava/nio/ByteBuffer;III)I
    .registers 10

    .prologue
    const/4 v0, 0x0

    const v5, 0xffff

    .line 48
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 52
    invoke-virtual {p0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 53
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 56
    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 58
    sub-int v1, p3, p2

    div-int/lit8 v3, v1, 0x2

    move v1, p1

    .line 59
    :goto_17
    if-ge v0, v3, :cond_25

    .line 60
    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v4

    add-int/2addr v1, v4

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 62
    :cond_25
    mul-int/lit8 v0, v3, 0x2

    add-int/2addr v0, p2

    .line 65
    if-eq p3, v0, :cond_48

    .line 66
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    int-to-short v0, v0

    .line 69
    if-gez v0, :cond_34

    .line 70
    add-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    .line 73
    :cond_34
    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v1

    .line 76
    :goto_37
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v5

    and-int/2addr v0, v5

    add-int/2addr v0, v1

    .line 77
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v5

    add-int/2addr v0, v1

    and-int/2addr v0, v5

    .line 78
    not-int v0, v0

    .line 79
    int-to-short v0, v0

    invoke-static {v0}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v0

    return v0

    :cond_48
    move v0, v1

    goto :goto_37
.end method

.method private static intAbs(S)I
    .registers 2

    .prologue
    .line 38
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static ipChecksum(Ljava/nio/ByteBuffer;I)S
    .registers 4

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    .line 107
    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Landroid/net/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method private static ipversion(Ljava/nio/ByteBuffer;I)B
    .registers 3

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, -0x10

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method

.method public static isValidUdpOrTcpPort(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 149
    if-lez p0, :cond_8

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I
    .registers 6

    .prologue
    .line 84
    add-int v0, p2, p3

    .line 85
    add-int/lit8 v1, p1, 0xc

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    add-int/lit8 v1, p1, 0xe

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    add-int/lit8 v1, p1, 0x10

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    add-int/lit8 v1, p1, 0x12

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    return v0
.end method

.method private static pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I
    .registers 7

    .prologue
    .line 94
    add-int v1, p2, p3

    .line 95
    const/16 v0, 0x8

    :goto_4
    const/16 v2, 0x28

    if-ge v0, v2, :cond_16

    .line 96
    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    invoke-static {v2}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v2

    add-int/2addr v1, v2

    .line 95
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 98
    :cond_16
    return v1
.end method

.method public static tcpChecksum(Ljava/nio/ByteBuffer;III)S
    .registers 5

    .prologue
    .line 139
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {p0, v0, p1, p2, p3}, Landroid/net/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v0

    return v0
.end method

.method private static transportChecksum(Ljava/nio/ByteBuffer;IIII)S
    .registers 8

    .prologue
    .line 112
    if-gez p4, :cond_1c

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transport length < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1c
    invoke-static {p0, p2}, Landroid/net/util/IpUtils;->ipversion(Ljava/nio/ByteBuffer;I)B

    move-result v0

    .line 117
    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    .line 118
    invoke-static {p0, p2, p1, p4}, Landroid/net/util/IpUtils;->pseudoChecksumIPv4(Ljava/nio/ByteBuffer;III)I

    move-result v0

    .line 125
    :goto_27
    add-int v1, p3, p4

    invoke-static {p0, v0, p3, v1}, Landroid/net/util/IpUtils;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v0

    .line 126
    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p1, v1, :cond_34

    if-nez v0, :cond_34

    .line 127
    const/4 v0, -0x1

    .line 129
    :cond_34
    int-to-short v0, v0

    return v0

    .line 119
    :cond_36
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3e

    .line 120
    invoke-static {p0, p2, p1, p4}, Landroid/net/util/IpUtils;->pseudoChecksumIPv6(Ljava/nio/ByteBuffer;III)I

    move-result v0

    goto :goto_27

    .line 122
    :cond_3e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Checksum must be IPv4 or IPv6"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static udpChecksum(Ljava/nio/ByteBuffer;II)S
    .registers 5

    .prologue
    .line 133
    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Landroid/net/util/IpUtils;->intAbs(S)I

    move-result v0

    .line 134
    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {p0, v1, p1, p2, v0}, Landroid/net/util/IpUtils;->transportChecksum(Ljava/nio/ByteBuffer;IIII)S

    move-result v0

    return v0
.end method
