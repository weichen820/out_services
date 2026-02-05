.class public Landroid/net/netlink/ConntrackMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "ConntrackMessage.java"


# static fields
.field public static final CTA_IP_V4_DST:S = 0x2s

.field public static final CTA_IP_V4_SRC:S = 0x1s

.field public static final CTA_PROTO_DST_PORT:S = 0x3s

.field public static final CTA_PROTO_NUM:S = 0x1s

.field public static final CTA_PROTO_SRC_PORT:S = 0x2s

.field public static final CTA_TIMEOUT:S = 0x7s

.field public static final CTA_TUPLE_IP:S = 0x1s

.field public static final CTA_TUPLE_ORIG:S = 0x1s

.field public static final CTA_TUPLE_PROTO:S = 0x2s

.field public static final CTA_TUPLE_REPLY:S = 0x2s

.field public static final IPCTNL_MSG_CT_NEW:S = 0x0s

.field public static final NFNL_SUBSYS_CTNETLINK:S = 0x1s

.field public static final STRUCT_SIZE:I = 0x14


# instance fields
.field protected mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 109
    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 110
    new-instance v0, Landroid/net/netlink/StructNfGenMsg;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Landroid/net/netlink/StructNfGenMsg;-><init>(B)V

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    .line 111
    return-void
.end method

.method public static newIPv4TimeoutUpdateRequest(ILjava/net/Inet4Address;ILjava/net/Inet4Address;II)[B
    .registers 16

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 77
    new-instance v0, Landroid/net/netlink/StructNlAttr;

    new-array v1, v8, [Landroid/net/netlink/StructNlAttr;

    .line 78
    new-instance v2, Landroid/net/netlink/StructNlAttr;

    new-array v3, v8, [Landroid/net/netlink/StructNlAttr;

    .line 79
    new-instance v4, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v4, v7, p1}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    aput-object v4, v3, v6

    .line 80
    new-instance v4, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v4, v8, p3}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    aput-object v4, v3, v7

    .line 78
    invoke-direct {v2, v7, v3}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    aput-object v2, v1, v6

    .line 81
    new-instance v2, Landroid/net/netlink/StructNlAttr;

    new-array v3, v9, [Landroid/net/netlink/StructNlAttr;

    .line 82
    new-instance v4, Landroid/net/netlink/StructNlAttr;

    int-to-byte v5, p0

    invoke-direct {v4, v7, v5}, Landroid/net/netlink/StructNlAttr;-><init>(SB)V

    aput-object v4, v3, v6

    .line 83
    new-instance v4, Landroid/net/netlink/StructNlAttr;

    int-to-short v5, p2

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v4, v8, v5, v6}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    aput-object v4, v3, v7

    .line 84
    new-instance v4, Landroid/net/netlink/StructNlAttr;

    int-to-short v5, p4

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v4, v9, v5, v6}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    aput-object v4, v3, v8

    .line 81
    invoke-direct {v2, v8, v3}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    aput-object v2, v1, v7

    .line 77
    invoke-direct {v0, v7, v1}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    .line 86
    new-instance v1, Landroid/net/netlink/StructNlAttr;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x7

    invoke-direct {v1, v3, p5, v2}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    .line 88
    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 89
    add-int/lit8 v2, v2, 0x14

    new-array v2, v2, [B

    .line 90
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    new-instance v4, Landroid/net/netlink/ConntrackMessage;

    invoke-direct {v4}, Landroid/net/netlink/ConntrackMessage;-><init>()V

    .line 94
    iget-object v5, v4, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    array-length v6, v2

    iput v6, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 95
    iget-object v5, v4, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 v6, 0x100

    iput-short v6, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 96
    iget-object v5, v4, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 v6, 0x105

    iput-short v6, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 97
    iget-object v5, v4, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iput v7, v5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 98
    invoke-virtual {v4, v3}, Landroid/net/netlink/ConntrackMessage;->pack(Ljava/nio/ByteBuffer;)V

    .line 100
    invoke-virtual {v0, v3}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 101
    invoke-virtual {v1, v3}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 103
    return-object v2
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 115
    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNfGenMsg;->pack(Ljava/nio/ByteBuffer;)V

    .line 116
    return-void
.end method
