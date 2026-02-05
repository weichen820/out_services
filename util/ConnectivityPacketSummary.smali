.class public Landroid/net/util/ConnectivityPacketSummary;
.super Ljava/lang/Object;
.source "ConnectivityPacketSummary.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBytes:[B

.field private final mHwAddr:[B

.field private final mLength:I

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Landroid/net/util/ConnectivityPacketSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/ConnectivityPacketSummary;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private constructor <init>([B[BI)V
    .registers 7

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mHwAddr:[B

    .line 63
    iput-object p2, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    .line 64
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    array-length v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    .line 65
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 66
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    invoke-direct {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->parseEther(Ljava/util/StringJoiner;)V

    .line 71
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private static getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    const/16 v0, 0x10

    invoke-static {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 354
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_c

    :cond_8
    const-string/jumbo v0, "invalid"

    return-object v0

    .line 356
    :cond_c
    new-array v0, p1, [B

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 359
    :try_start_12
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_19
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_19} :catch_1b

    move-result-object v0

    return-object v0

    .line 361
    :catch_1b
    move-exception v0

    .line 362
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private static getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x0

    .line 367
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v2, :cond_e

    :cond_a
    const-string/jumbo v0, "invalid"

    return-object v0

    .line 369
    :cond_e
    new-array v3, v2, [B

    .line 370
    array-length v1, v3

    invoke-virtual {p0, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 371
    array-length v1, v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 373
    array-length v5, v3

    move v1, v0

    :goto_19
    if-ge v0, v5, :cond_2a

    aget-byte v6, v3, v0

    add-int/lit8 v2, v1, 0x1

    new-instance v7, Ljava/lang/Byte;

    invoke-direct {v7, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v7, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_19

    .line 375
    :cond_2a
    const-string/jumbo v0, "%02x:%02x:%02x:%02x:%02x:%02x"

    .line 376
    const-string/jumbo v0, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseARP(Ljava/util/StringJoiner;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 116
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_20

    .line 117
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    return-void

    .line 121
    :cond_20
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    if-ne v0, v4, :cond_3a

    .line 122
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_41

    .line 125
    :cond_3a
    const-string/jumbo v0, "unexpected header"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    return-void

    .line 123
    :cond_41
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3a

    .line 124
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3a

    .line 129
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    .line 131
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 133
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 134
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 136
    if-ne v0, v4, :cond_89

    .line 137
    const-string/jumbo v0, "who-has"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 143
    :goto_88
    return-void

    .line 138
    :cond_89
    const/4 v3, 0x2

    if-ne v0, v3, :cond_9b

    .line 139
    const-string/jumbo v0, "reply"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_88

    .line 141
    :cond_9b
    const-string/jumbo v1, "unknown opcode"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_88
.end method

.method private parseDHCPv4(Ljava/util/StringJoiner;)V
    .registers 5

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    :try_end_10
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_10} :catch_11

    .line 343
    :goto_10
    return-void

    .line 340
    :catch_11
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parse error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_10
.end method

.method private parseEther(Ljava/util/StringJoiner;)V
    .registers 5

    .prologue
    const/4 v2, 0x6

    .line 79
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_20

    .line 80
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 81
    return-void

    .line 84
    :cond_20
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 86
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mHwAddr:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    const-string/jumbo v1, "TX"

    :goto_40
    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 89
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 91
    const-string/jumbo v1, ">"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 93
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    .line 95
    sparse-switch v0, :sswitch_data_b0

    .line 110
    const-string/jumbo v1, "ethtype"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 113
    :goto_8c
    return-void

    .line 86
    :cond_8d
    const-string/jumbo v1, "RX"

    goto :goto_40

    .line 97
    :sswitch_91
    const-string/jumbo v0, "arp"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 98
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseARP(Ljava/util/StringJoiner;)V

    goto :goto_8c

    .line 101
    :sswitch_9b
    const-string/jumbo v0, "ipv4"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseIPv4(Ljava/util/StringJoiner;)V

    goto :goto_8c

    .line 105
    :sswitch_a5
    const-string/jumbo v0, "ipv6"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseIPv6(Ljava/util/StringJoiner;)V

    goto :goto_8c

    .line 95
    nop

    :sswitch_data_b0
    .sparse-switch
        0x800 -> :sswitch_9b
        0x806 -> :sswitch_91
        0x86dd -> :sswitch_a5
    .end sparse-switch
.end method

.method private parseICMPv6(Ljava/util/StringJoiner;)V
    .registers 5

    .prologue
    .line 213
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1e

    .line 214
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 215
    return-void

    .line 218
    :cond_1e
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    .line 219
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .line 220
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 222
    packed-switch v0, :pswitch_data_80

    .line 240
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 241
    const-string/jumbo v0, "code"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 244
    :goto_56
    return-void

    .line 224
    :pswitch_57
    const-string/jumbo v0, "rs"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 225
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V

    goto :goto_56

    .line 228
    :pswitch_61
    const-string/jumbo v0, "ra"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 229
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V

    goto :goto_56

    .line 232
    :pswitch_6b
    const-string/jumbo v0, "ns"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 233
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    goto :goto_56

    .line 236
    :pswitch_75
    const-string/jumbo v0, "na"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 237
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    goto :goto_56

    .line 222
    nop

    :pswitch_data_80
    .packed-switch 0x85
        :pswitch_57
        :pswitch_61
        :pswitch_6b
        :pswitch_75
    .end packed-switch
.end method

.method private parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V
    .registers 5

    .prologue
    .line 284
    :goto_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_32

    .line 285
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    .line 286
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .line 287
    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x2

    .line 288
    if-ltz v1, :cond_2c

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_33

    .line 289
    :cond_2c
    const-string/jumbo v0, "<malformed>"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 315
    :cond_32
    return-void

    .line 292
    :cond_33
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 294
    packed-switch v0, :pswitch_data_7c

    .line 313
    :goto_3c
    :pswitch_3c
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 296
    :pswitch_43
    const-string/jumbo v0, "slla"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 297
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_3c

    .line 300
    :pswitch_53
    const-string/jumbo v0, "tlla"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 301
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_3c

    .line 304
    :pswitch_63
    const-string/jumbo v0, "mtu"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 305
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 306
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_3c

    .line 294
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_53
        :pswitch_3c
        :pswitch_3c
        :pswitch_63
    .end packed-switch
.end method

.method private parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V
    .registers 4

    .prologue
    const/16 v1, 0x14

    .line 271
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_1f

    .line 272
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 273
    return-void

    .line 276
    :cond_1f
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 278
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 279
    return-void
.end method

.method private parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V
    .registers 4

    .prologue
    const/16 v1, 0xc

    .line 259
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_1f

    .line 260
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 261
    return-void

    .line 264
    :cond_1f
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 266
    return-void
.end method

.method private parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 248
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_1e

    .line 249
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 250
    return-void

    .line 253
    :cond_1e
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 254
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 255
    return-void
.end method

.method private parseIPv4(Ljava/util/StringJoiner;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_10

    .line 147
    const-string/jumbo v0, "runt"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    return-void

    .line 151
    :cond_10
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 152
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0xf

    mul-int/lit8 v2, v2, 0x4

    .line 153
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_32

    .line 154
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_47

    .line 155
    :cond_32
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    return-void

    .line 158
    :cond_47
    add-int/2addr v2, v1

    .line 160
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v1, 0x6

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v3

    .line 162
    and-int/lit16 v3, v3, 0x1fff

    if-eqz v3, :cond_5e

    const/4 v0, 0x1

    .line 164
    :cond_5e
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v1, 0x9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v3

    .line 167
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v1, 0xc

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 170
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 175
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v3, v1, :cond_b3

    .line 177
    const-string/jumbo v1, "udp"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 178
    if-eqz v0, :cond_af

    const-string/jumbo v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 184
    :cond_ae
    :goto_ae
    return-void

    .line 179
    :cond_af
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    goto :goto_ae

    .line 181
    :cond_b3
    const-string/jumbo v1, "proto"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    if-eqz v0, :cond_ae

    const-string/jumbo v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_ae
.end method

.method private parseIPv6(Ljava/util/StringJoiner;)V
    .registers 7

    .prologue
    .line 187
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1f

    .line 188
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 189
    return-void

    .line 192
    :cond_1f
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 194
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .line 197
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 199
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    const-string/jumbo v4, ">"

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x28

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-ne v1, v0, :cond_6c

    .line 205
    const-string/jumbo v0, "icmp6"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 206
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6(Ljava/util/StringJoiner;)V

    .line 210
    :goto_6b
    return-void

    .line 208
    :cond_6c
    const-string/jumbo v0, "proto"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_6b
.end method

.method private parseUDP(Ljava/util/StringJoiner;)V
    .registers 8

    .prologue
    const/16 v5, 0x44

    .line 318
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_21

    .line 319
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 320
    return-void

    .line 323
    :cond_21
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 324
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v1

    .line 325
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v2

    .line 326
    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 328
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 329
    if-eq v1, v5, :cond_5c

    if-ne v2, v5, :cond_65

    .line 330
    :cond_5c
    const-string/jumbo v0, "dhcp4"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 331
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseDHCPv4(Ljava/util/StringJoiner;)V

    .line 333
    :cond_65
    return-void
.end method

.method public static summarize([B[B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    array-length v0, p1

    invoke-static {p0, p1, v0}, Landroid/net/util/ConnectivityPacketSummary;->summarize([B[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static summarize([B[BI)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 55
    if-eqz p0, :cond_7

    array-length v0, p0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    :cond_7
    return-object v2

    .line 56
    :cond_8
    if-nez p1, :cond_b

    return-object v2

    .line 57
    :cond_b
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    new-instance v1, Landroid/net/util/ConnectivityPacketSummary;

    invoke-direct {v1, p0, p1, v0}, Landroid/net/util/ConnectivityPacketSummary;-><init>([B[BI)V

    invoke-virtual {v1}, Landroid/net/util/ConnectivityPacketSummary;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-object v0
.end method
