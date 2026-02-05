.class public Landroid/net/netlink/RtNetlinkNeighborMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "RtNetlinkNeighborMessage.java"


# static fields
.field public static final NDA_CACHEINFO:S = 0x3s

.field public static final NDA_DST:S = 0x1s

.field public static final NDA_IFINDEX:S = 0x8s

.field public static final NDA_LLADDR:S = 0x2s

.field public static final NDA_MASTER:S = 0x9s

.field public static final NDA_PORT:S = 0x6s

.field public static final NDA_PROBES:S = 0x4s

.field public static final NDA_UNSPEC:S = 0x0s

.field public static final NDA_VLAN:S = 0x5s

.field public static final NDA_VNI:S = 0x7s


# instance fields
.field private mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

.field private mDestination:Ljava/net/InetAddress;

.field private mLinkLayerAddr:[B

.field private mNdmsg:Landroid/net/netlink/StructNdMsg;

.field private mNumProbes:I


# direct methods
.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 177
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 178
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 179
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    .line 181
    iput-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    .line 182
    return-void
.end method

.method private static findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 58
    :goto_1
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_f

    .line 59
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    .line 60
    if-nez v0, :cond_10

    .line 71
    :cond_f
    return-object v3

    .line 63
    :cond_10
    iget-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    if-ne v1, p0, :cond_19

    .line 64
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    return-object v0

    .line 66
    :cond_19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-lt v1, v2, :cond_f

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static newGetNeighborsRequest(I)[B
    .registers 5

    .prologue
    const/16 v3, 0x1c

    .line 124
    new-array v0, v3, [B

    .line 125
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 126
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    new-instance v2, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v2}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 129
    iput v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 130
    const/16 v3, 0x1e

    iput-short v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 131
    const/16 v3, 0x301

    iput-short v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 132
    iput p0, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 133
    invoke-virtual {v2, v1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 135
    new-instance v2, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v2}, Landroid/net/netlink/StructNdMsg;-><init>()V

    .line 136
    invoke-virtual {v2, v1}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    .line 138
    return-object v0
.end method

.method public static newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B
    .registers 9

    .prologue
    .line 147
    new-instance v1, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v1}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 148
    const/16 v0, 0x1c

    iput-short v0, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 149
    const/16 v0, 0x105

    iput-short v0, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 150
    iput p0, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 152
    new-instance v2, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {v2, v1}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 153
    new-instance v0, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v0}, Landroid/net/netlink/StructNdMsg;-><init>()V

    iput-object v0, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 154
    iget-object v3, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 155
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_4a

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    :goto_23
    int-to-byte v0, v0

    .line 154
    iput-byte v0, v3, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 156
    iget-object v0, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput p3, v0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    .line 157
    iget-object v0, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput-short p2, v0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .line 158
    iput-object p1, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 159
    iput-object p4, v2, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 161
    invoke-virtual {v2}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getRequiredSpace()I

    move-result v0

    new-array v0, v0, [B

    .line 162
    array-length v3, v0

    iput v3, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 163
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 164
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v2, v1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->pack(Ljava/nio/ByteBuffer;)V

    .line 166
    return-object v0

    .line 155
    :cond_4a
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    goto :goto_23
.end method

.method private static packNlAttr(S[BLjava/nio/ByteBuffer;)V
    .registers 5

    .prologue
    .line 220
    new-instance v0, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    .line 221
    iput-short p0, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 222
    iput-object p1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 223
    iget-object v1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    iput-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 224
    invoke-virtual {v0, p2}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 225
    return-void
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 77
    invoke-static {p1}, Landroid/net/netlink/StructNdMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;

    move-result-object v1

    iput-object v1, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 78
    iget-object v1, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    if-nez v1, :cond_11

    .line 79
    return-object v2

    .line 83
    :cond_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 84
    const/4 v2, 0x1

    invoke-static {v2, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_22

    .line 86
    invoke-virtual {v2}, Landroid/net/netlink/StructNlAttr;->getValueAsInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 89
    :cond_22
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    const/4 v2, 0x2

    invoke-static {v2, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_30

    .line 92
    iget-object v2, v2, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    iput-object v2, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 95
    :cond_30
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    const/4 v2, 0x4

    invoke-static {v2, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_41

    .line 98
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/netlink/StructNlAttr;->getValueAsInt(I)I

    move-result v2

    iput v2, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    .line 101
    :cond_41
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    const/4 v2, 0x3

    invoke-static {v2, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_55

    .line 104
    invoke-virtual {v2}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Landroid/net/netlink/StructNdaCacheInfo;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdaCacheInfo;

    move-result-object v2

    iput-object v2, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    .line 109
    :cond_55
    iget-object v2, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iget v2, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    add-int/lit8 v2, v2, -0x1c

    .line 108
    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v2

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_6d

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    :goto_6c
    return-object v0

    .line 113
    :cond_6d
    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6c
.end method


# virtual methods
.method public getCacheInfo()Landroid/net/netlink/StructNdaCacheInfo;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    return-object v0
.end method

.method public getDestination()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLinkLayerAddress()[B
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    return-object v0
.end method

.method public getNdHeader()Landroid/net/netlink/StructNdMsg;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    return-object v0
.end method

.method public getProbes()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    return v0
.end method

.method public getRequiredSpace()I
    .registers 3

    .prologue
    const/16 v0, 0x1c

    .line 206
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-eqz v1, :cond_15

    .line 208
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    .line 207
    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    .line 210
    :cond_15
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    if-eqz v1, :cond_23

    .line 212
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    .line 211
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_23
    return v0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 4

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 229
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    .line 231
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-eqz v0, :cond_1a

    .line 232
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    .line 234
    :cond_1a
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    if-eqz v0, :cond_24

    .line 235
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    .line 237
    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-nez v0, :cond_a1

    const-string/jumbo v0, ""

    .line 242
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RtNetlinkNeighborMessage{ nlmsghdr{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    iget-object v1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v1, :cond_a9

    const-string/jumbo v1, ""

    .line 242
    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    const-string/jumbo v2, "}, "

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    const-string/jumbo v2, "ndmsg{"

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    if-nez v1, :cond_b1

    const-string/jumbo v1, ""

    .line 242
    :goto_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    const-string/jumbo v2, "}, "

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string/jumbo v2, "destination{"

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const-string/jumbo v1, "} "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "linklayeraddr{"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "} "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, "probes{"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    iget v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, "} "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "cacheinfo{"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    if-nez v0, :cond_b9

    const-string/jumbo v0, ""

    .line 242
    :goto_8a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "} "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    const-string/jumbo v1, "}"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_a1
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 243
    :cond_a9
    iget-object v1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1a

    .line 244
    :cond_b1
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    invoke-virtual {v1}, Landroid/net/netlink/StructNdMsg;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_33

    .line 248
    :cond_b9
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    invoke-virtual {v0}, Landroid/net/netlink/StructNdaCacheInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8a
.end method
