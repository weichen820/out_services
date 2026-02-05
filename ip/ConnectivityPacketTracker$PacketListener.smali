.class final Landroid/net/ip/ConnectivityPacketTracker$PacketListener;
.super Landroid/net/util/BlockingSocketReader;
.source "ConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/ConnectivityPacketTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PacketListener"
.end annotation


# instance fields
.field private final mHwAddr:[B

.field private final mIfIndex:I

.field final synthetic this$0:Landroid/net/ip/ConnectivityPacketTracker;


# direct methods
.method constructor <init>(Landroid/net/ip/ConnectivityPacketTracker;I[BI)V
    .registers 5

    .prologue
    .line 103
    iput-object p1, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    .line 104
    invoke-direct {p0, p4}, Landroid/net/util/BlockingSocketReader;-><init>(I)V

    .line 105
    iput p2, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mIfIndex:I

    .line 106
    iput-object p3, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mHwAddr:[B

    .line 107
    return-void
.end method

.method private addLogEntry(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 145
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->-get0(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/ip/-$Lambda$EIaFPv5OO8Upo9X60vMtrcUNUEQ;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Landroid/net/ip/-$Lambda$EIaFPv5OO8Upo9X60vMtrcUNUEQ;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method


# virtual methods
.method protected createSocket()Ljava/io/FileDescriptor;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 116
    :try_start_1
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v1, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_9} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_1d

    move-result-object v1

    .line 117
    :try_start_a
    sget v0, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-static {v1, v0}, Landroid/net/NetworkUtils;->attachControlPacketFilter(Ljava/io/FileDescriptor;I)V

    .line 118
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v3, Landroid/system/OsConstants;->ETH_P_ALL:I

    int-to-short v3, v3

    iget v4, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mIfIndex:I

    invoke-direct {v0, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    invoke-static {v1, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_1c} :catch_29
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_29

    .line 124
    return-object v1

    .line 119
    :catch_1d
    move-exception v0

    move-object v1, v2

    .line 120
    :goto_1f
    const-string/jumbo v3, "Failed to create packet tracking socket: "

    invoke-virtual {p0, v3, v0}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    invoke-static {v1}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 122
    return-object v2

    .line 119
    :catch_29
    move-exception v0

    goto :goto_1f
.end method

.method protected handlePacket([BI)V
    .registers 6

    .prologue
    .line 130
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->mHwAddr:[B

    .line 129
    invoke-static {v0, p1, p2}, Landroid/net/util/ConnectivityPacketSummary;->summarize([B[BI)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-nez v0, :cond_9

    return-void

    .line 134
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "\n["

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Llibcore/util/HexEncoding;->encode([BII)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "]"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method synthetic lambda$-android_net_ip_ConnectivityPacketTracker$PacketListener_4824(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->-get1(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->this$0:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-static {v0}, Landroid/net/ip/ConnectivityPacketTracker;->-get2(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    .line 142
    return-void
.end method
