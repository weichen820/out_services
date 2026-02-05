.class final Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpReachabilityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetlinkSocketObserver"
.end annotation


# instance fields
.field private mSocket:Landroid/net/netlink/NetlinkSocket;

.field final synthetic this$0:Landroid/net/ip/IpReachabilityMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    return-void
.end method

.method private constructor <init>(Landroid/net/ip/IpReachabilityMonitor;)V
    .registers 2

    .prologue
    .line 416
    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/ip/IpReachabilityMonitor;)V

    return-void
.end method

.method private clearNetlinkSocket()V
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    if-eqz v0, :cond_9

    .line 454
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    invoke-virtual {v0}, Landroid/net/netlink/NetlinkSocket;->close()V

    .line 456
    :cond_9
    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .registers 12

    .prologue
    const/16 v6, 0x20

    .line 521
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v2}, Landroid/net/ip/IpReachabilityMonitor;->-get0(Landroid/net/ip/IpReachabilityMonitor;)I

    move-result v2

    if-eq v1, v2, :cond_13

    .line 523
    :cond_12
    return-void

    .line 526
    :cond_13
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    move-result-object v2

    .line 527
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v1, v2}, Landroid/net/ip/IpReachabilityMonitor;->-wrap0(Landroid/net/ip/IpReachabilityMonitor;Ljava/net/InetAddress;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 528
    return-void

    .line 531
    :cond_20
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v1

    iget-short v3, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 532
    iget-short v1, v0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NeighborEvent{elapsedMs="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    const-string/jumbo v4, ", "

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    const-string/jumbo v4, ", "

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    const-string/jumbo v4, "["

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    move-result-object v4

    invoke-static {v4}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    const-string/jumbo v4, "], "

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    const-string/jumbo v4, ", "

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    invoke-static {v1}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v4

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string/jumbo v4, "}"

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 547
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 548
    :try_start_91
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor;->-get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 550
    const/16 v0, 0x1d

    if-ne v3, v0, :cond_ec

    .line 551
    const/4 v0, 0x0

    .line 553
    :goto_a2
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catchall {:try_start_91 .. :try_end_af} :catchall_ee

    :cond_af
    monitor-exit v5

    .line 557
    if-ne v1, v6, :cond_d1

    .line 558
    const-string/jumbo v0, "IpReachabilityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ALERT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0, v4}, Landroid/net/ip/IpReachabilityMonitor;->-wrap1(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)V

    .line 562
    :cond_d1
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor;->-get4(Landroid/net/ip/IpReachabilityMonitor;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_eb

    if-eq v1, v6, :cond_e2

    .line 563
    const/4 v0, 0x2

    if-ne v1, v0, :cond_eb

    .line 564
    :cond_e2
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor;->-get4(Landroid/net/ip/IpReachabilityMonitor;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 566
    :cond_eb
    return-void

    :cond_ec
    move v0, v1

    .line 552
    goto :goto_a2

    .line 547
    :catchall_ee
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .registers 10

    .prologue
    .line 490
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_37

    .line 491
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 492
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v2

    if-nez v2, :cond_38

    .line 494
    :cond_16
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 495
    const-string/jumbo v0, "IpReachabilityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unparsable netlink msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_37
    :goto_37
    return-void

    .line 499
    :cond_38
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v1

    iget v1, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 500
    if-eqz v1, :cond_5e

    .line 501
    const-string/jumbo v0, "IpReachabilityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "non-kernel source portId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 505
    :cond_5e
    instance-of v1, v0, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v1, :cond_7d

    .line 506
    const-string/jumbo v1, "IpReachabilityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "netlink error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :cond_7d
    instance-of v1, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    if-eqz v1, :cond_0

    .line 515
    check-cast v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {p0, v0, p2, p3}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    goto/16 :goto_0
.end method

.method private recvKernelReply()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 478
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_7} :catch_11
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 481
    :catch_9
    move-exception v0

    .line 482
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v1, v2, :cond_12

    .line 483
    throw v0

    .line 479
    :catch_11
    move-exception v0

    .line 486
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private setupNetlinkSocket()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    .line 461
    new-instance v0, Landroid/net/netlink/NetlinkSocket;

    sget v1, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-direct {v0, v1}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    .line 463
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    .line 464
    sget v1, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    const/4 v2, 0x0

    .line 463
    invoke-direct {v0, v2, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    .line 465
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    invoke-virtual {v1, v0}, Landroid/net/netlink/NetlinkSocket;->bind(Landroid/system/NetlinkSocketAddress;)V

    .line 474
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 422
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z

    .line 425
    :try_start_7
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->setupNetlinkSocket()V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_a} :catch_20
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_a} :catch_20

    .line 431
    :cond_a
    :goto_a
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0}, Landroid/net/ip/IpReachabilityMonitor;->-get3(Landroid/net/ip/IpReachabilityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 434
    :try_start_12
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->recvKernelReply()Ljava/nio/ByteBuffer;
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_12 .. :try_end_15} :catch_30

    move-result-object v0

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 440
    if-eqz v0, :cond_a

    .line 443
    invoke-direct {p0, v0, v2, v3}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_a

    .line 426
    :catch_20
    move-exception v0

    .line 427
    const-string/jumbo v1, "IpReachabilityMonitor"

    const-string/jumbo v2, "Failed to suitably initialize a netlink socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0, v4}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z

    goto :goto_a

    .line 435
    :catch_30
    move-exception v0

    .line 436
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v1}, Landroid/net/ip/IpReachabilityMonitor;->-get3(Landroid/net/ip/IpReachabilityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string/jumbo v1, "IpReachabilityMonitor"

    const-string/jumbo v2, "ErrnoException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    :cond_42
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    .line 448
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    invoke-static {v0, v4}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z

    .line 450
    return-void
.end method
