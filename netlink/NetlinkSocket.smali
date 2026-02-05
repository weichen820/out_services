.class public Landroid/net/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field private static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "NetlinkSocket"


# instance fields
.field private mAddr:Landroid/system/NetlinkSocketAddress;

.field private final mDescriptor:Ljava/io/FileDescriptor;

.field private mLastRecvTimeoutMs:J

.field private mLastSendTimeoutMs:J


# direct methods
.method public constructor <init>(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    .line 96
    invoke-static {v0, v1, p1}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    .line 99
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    .line 100
    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    .line 101
    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v4, 0x10000

    .line 99
    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 102
    return-void
.end method

.method private checkTimeout(J)V
    .registers 6

    .prologue
    .line 139
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative timeouts not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_f
    return-void
.end method

.method public static sendOneShotKernelMessage(I[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 55
    const-string/jumbo v2, "Error in NetlinkSocket.sendOneShotKernelMessage"

    .line 57
    :try_start_4
    new-instance v2, Landroid/net/netlink/NetlinkSocket;

    invoke-direct {v2, p0}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_109
    .catchall {:try_start_4 .. :try_end_9} :catchall_105

    .line 59
    :try_start_9
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel()V

    .line 60
    array-length v5, p1

    const/4 v4, 0x0

    const-wide/16 v6, 0x12c

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    .line 61
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 63
    invoke-static {v5}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v4

    .line 64
    if-eqz v4, :cond_8c

    instance-of v3, v4, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v3, :cond_8c

    .line 65
    move-object v0, v4

    nop

    nop

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v3

    if-eqz v3, :cond_8c

    .line 66
    move-object v0, v4

    nop

    nop

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v3

    iget v3, v3, Landroid/net/netlink/StructNlMsgErr;->error:I

    .line 67
    if-eqz v3, :cond_d7

    .line 71
    const-string/jumbo v5, "NetlinkSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v5, Landroid/system/ErrnoException;

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {v5, v4, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_66} :catch_66
    .catchall {:try_start_9 .. :try_end_66} :catchall_cc

    .line 92
    :catch_66
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_6a
    :try_start_6a
    throw v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v4

    move-object v8, v3

    move-object v3, v2

    move-object v2, v4

    :goto_6f
    if-eqz v8, :cond_74

    :try_start_71
    invoke-virtual {v8}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_f6
    .catch Ljava/io/InterruptedIOException; {:try_start_71 .. :try_end_74} :catch_77
    .catch Ljava/net/SocketException; {:try_start_71 .. :try_end_74} :catch_df

    :cond_74
    :goto_74
    if-eqz v3, :cond_103

    :try_start_76
    throw v3
    :try_end_77
    .catch Ljava/io/InterruptedIOException; {:try_start_76 .. :try_end_77} :catch_77
    .catch Ljava/net/SocketException; {:try_start_76 .. :try_end_77} :catch_df

    .line 86
    :catch_77
    move-exception v2

    .line 87
    const-string/jumbo v3, "NetlinkSocket"

    const-string/jumbo v4, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    new-instance v3, Landroid/system/ErrnoException;

    const-string/jumbo v4, "Error in NetlinkSocket.sendOneShotKernelMessage"

    sget v5, Landroid/system/OsConstants;->ETIMEDOUT:I

    invoke-direct {v3, v4, v5, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    .line 77
    :cond_8c
    if-nez v4, :cond_d2

    .line 78
    const/4 v3, 0x0

    :try_start_8f
    invoke-virtual {v5, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "raw bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    :goto_aa
    const-string/jumbo v4, "NetlinkSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v4, Landroid/system/ErrnoException;

    sget v5, Landroid/system/OsConstants;->EPROTO:I

    invoke-direct {v4, v3, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 92
    :catchall_cc
    move-exception v3

    move-object v9, v3

    move-object v3, v8

    move-object v8, v2

    move-object v2, v9

    goto :goto_6f

    .line 81
    :cond_d2
    invoke-virtual {v4}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_d5} :catch_66
    .catchall {:try_start_8f .. :try_end_d5} :catchall_cc

    move-result-object v3

    goto :goto_aa

    .line 92
    :cond_d7
    if-eqz v2, :cond_dc

    :try_start_d9
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkSocket;->close()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_dc} :catch_f4
    .catch Ljava/io/InterruptedIOException; {:try_start_d9 .. :try_end_dc} :catch_77
    .catch Ljava/net/SocketException; {:try_start_d9 .. :try_end_dc} :catch_df

    :cond_dc
    :goto_dc
    if-eqz v8, :cond_104

    :try_start_de
    throw v8
    :try_end_df
    .catch Ljava/io/InterruptedIOException; {:try_start_de .. :try_end_df} :catch_77
    .catch Ljava/net/SocketException; {:try_start_de .. :try_end_df} :catch_df

    .line 89
    :catch_df
    move-exception v2

    .line 90
    const-string/jumbo v3, "NetlinkSocket"

    const-string/jumbo v4, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    new-instance v3, Landroid/system/ErrnoException;

    const-string/jumbo v4, "Error in NetlinkSocket.sendOneShotKernelMessage"

    sget v5, Landroid/system/OsConstants;->EIO:I

    invoke-direct {v3, v4, v5, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    .line 92
    :catch_f4
    move-exception v8

    goto :goto_dc

    :catch_f6
    move-exception v4

    if-nez v3, :cond_fc

    move-object v3, v4

    goto/16 :goto_74

    :cond_fc
    if-eq v3, v4, :cond_74

    :try_start_fe
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_74

    :cond_103
    throw v2
    :try_end_104
    .catch Ljava/io/InterruptedIOException; {:try_start_fe .. :try_end_104} :catch_77
    .catch Ljava/net/SocketException; {:try_start_fe .. :try_end_104} :catch_df

    .line 93
    :cond_104
    return-void

    .line 92
    :catchall_105
    move-exception v2

    move-object v3, v8

    goto/16 :goto_6f

    :catch_109
    move-exception v2

    move-object v3, v8

    goto/16 :goto_6a
.end method


# virtual methods
.method public bind(Landroid/system/NetlinkSocketAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 110
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 209
    return-void
.end method

.method public connectTo(Landroid/system/NetlinkSocketAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 115
    return-void
.end method

.method public connectToKernel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    invoke-direct {v0, v1, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/net/netlink/NetlinkSocket;->connectTo(Landroid/system/NetlinkSocketAddress;)V

    .line 119
    return-void
.end method

.method public getLocalAddress()Landroid/system/NetlinkSocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Landroid/system/NetlinkSocketAddress;

    return-object v0
.end method

.method public recvMessage()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    const/16 v2, 0x2000

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/netlink/NetlinkSocket;->recvMessage(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public recvMessage(IJ)Ljava/nio/ByteBuffer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p2, p3}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 154
    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    monitor-enter v1

    .line 155
    :try_start_6
    iget-wide v2, p0, Landroid/net/netlink/NetlinkSocket;->mLastRecvTimeoutMs:J

    cmp-long v0, v2, p2

    if-eqz v0, :cond_1b

    .line 156
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    .line 157
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 158
    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 156
    invoke-static {v0, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 159
    iput-wide p2, p0, Landroid/net/netlink/NetlinkSocket;->mLastRecvTimeoutMs:J
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_40

    :cond_1b
    monitor-exit v1

    .line 163
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 165
    if-ne v1, p1, :cond_31

    .line 166
    const-string/jumbo v2, "NetlinkSocket"

    const-string/jumbo v3, "maximum read"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_31
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 171
    return-object v0

    .line 154
    :catchall_40
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public recvMessage(J)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 135
    const/16 v0, 0x2000

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage([BII)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 181
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/netlink/NetlinkSocket;->sendMessage([BIIJ)Z

    move-result v0

    return v0
.end method

.method public sendMessage([BIIJ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p4, p5}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 194
    iget-object v1, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    monitor-enter v1

    .line 195
    :try_start_6
    iget-wide v2, p0, Landroid/net/netlink/NetlinkSocket;->mLastSendTimeoutMs:J

    cmp-long v0, v2, p4

    if-eqz v0, :cond_1b

    .line 196
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    .line 197
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 198
    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 196
    invoke-static {v0, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 199
    iput-wide p4, p0, Landroid/net/netlink/NetlinkSocket;->mLastSendTimeoutMs:J
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_26

    :cond_1b
    monitor-exit v1

    .line 203
    iget-object v0, p0, Landroid/net/netlink/NetlinkSocket;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-ne p3, v0, :cond_29

    const/4 v0, 0x1

    :goto_25
    return v0

    .line 194
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    .line 203
    :cond_29
    const/4 v0, 0x0

    goto :goto_25
.end method
