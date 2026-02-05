.class public Lcom/android/server/IpSecService;
.super Landroid/net/IIpSecService$Stub;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IpSecService$ManagedResource;,
        Lcom/android/server/IpSecService$ManagedResourceArray;,
        Lcom/android/server/IpSecService$SpiRecord;,
        Lcom/android/server/IpSecService$TransformRecord;,
        Lcom/android/server/IpSecService$UdpSocketRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIRECTIONS:[I

.field static final FREE_PORT_MIN:I = 0x400

.field private static final INADDR_ANY:Ljava/net/InetAddress;

.field private static final MAX_PORT_BIND_ATTEMPTS:I = 0xa

.field private static final NETD_FETCH_TIMEOUT:I = 0x1388

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field static final PORT_MAX:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "IpSecService"

.field private static mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$SpiRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$TransformRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$UdpSocketRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[I
    .registers 1

    sget-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    const-string/jumbo v0, "IpSecService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/IpSecService;->DBG:Z

    .line 65
    const/4 v0, 0x1

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 64
    sput-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    .line 73
    const/4 v0, 0x4

    :try_start_13
    new-array v0, v0, [B

    fill-array-data v0, :array_30

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_1e} :catch_29

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0xfaded0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    return-void

    .line 74
    :catch_29
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :array_30
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-direct {p0}, Landroid/net/IIpSecService$Stub;-><init>()V

    .line 89
    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 93
    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    .line 92
    iput-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 97
    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    .line 96
    iput-object v0, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 390
    iput-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    .line 391
    return-void
.end method

.method private bindToRandomPort(Ljava/io/FileDescriptor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    const/16 v0, 0xa

    move v1, v0

    :goto_3
    if-lez v1, :cond_52

    .line 513
    :try_start_5
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v0, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 514
    sget-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 515
    invoke-static {v2}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 516
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 517
    const-string/jumbo v2, "IpSecService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Binding to port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v2, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {p1, v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_41} :catch_42

    .line 519
    return-void

    .line 520
    :catch_42
    move-exception v0

    .line 522
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EADDRINUSE:I

    if-ne v2, v3, :cond_4d

    .line 511
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 525
    :cond_4d
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 528
    :cond_52
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed 10 attempts to bind to a port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private connectNativeNetdService()V
    .registers 2

    .prologue
    .line 409
    new-instance v0, Lcom/android/server/IpSecService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService$1;-><init>(Lcom/android/server/IpSecService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 417
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/IpSecService;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;)V

    .line 395
    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    .line 396
    return-object v0
.end method

.method private declared-synchronized releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/IpSecService$ManagedResource;",
            ">(",
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<TT;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 479
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v0

    .line 481
    if-nez v0, :cond_2f

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not available to be deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 486
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Lcom/android/server/IpSecService$ManagedResource;->release()V

    .line 487
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->remove(I)V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    monitor-exit p0

    .line 488
    return-void
.end method


# virtual methods
.method public declared-synchronized applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 665
    :try_start_1
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-virtual {v1, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/IpSecService$TransformRecord;

    move-object v8, v0

    .line 667
    if-nez v8, :cond_31

    .line 668
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 672
    :cond_31
    :try_start_31
    iget v1, v8, Lcom/android/server/IpSecService$ManagedResource;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v2

    if-ne v1, v2, :cond_41

    iget v1, v8, Lcom/android/server/IpSecService$ManagedResource;->uid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingUid()I

    move-result v2

    if-eq v1, v2, :cond_4a

    .line 673
    :cond_41
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_4a
    invoke-virtual {v8}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_2e

    move-result-object v10

    .line 678
    :try_start_4e
    sget-object v11, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v1, 0x0

    array-length v12, v11

    move v9, v1

    :goto_53
    if-ge v9, v12, :cond_94

    aget v4, v11, v9

    .line 679
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    .line 681
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 684
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_8b

    .line 685
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 687
    :goto_6d
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 688
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 690
    :goto_7b
    invoke-virtual {v8, v4}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord(I)Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v7

    move v3, p2

    .line 679
    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 678
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_53

    .line 686
    :cond_8b
    const-string/jumbo v5, ""

    goto :goto_6d

    .line 689
    :cond_8f
    const-string/jumbo v6, ""
    :try_end_92
    .catch Landroid/os/ServiceSpecificException; {:try_start_4e .. :try_end_92} :catch_93
    .catchall {:try_start_4e .. :try_end_92} :catchall_2e

    goto :goto_7b

    .line 692
    :catch_93
    move-exception v1

    :cond_94
    monitor-exit p0

    .line 695
    return-void
.end method

.method public closeUdpEncapsulationSocket(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "UdpEncapsulationSocket"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    .line 578
    return-void
.end method

.method public declared-synchronized createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/net/IpSecTransformResponse;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 590
    :try_start_1
    sget-object v2, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 591
    sget-object v2, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    array-length v2, v2

    new-array v0, v2, [Lcom/android/server/IpSecService$SpiRecord;

    move-object/from16 v22, v0

    .line 593
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 594
    const/4 v2, 0x0

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v17

    .line 596
    if-eqz v17, :cond_10d

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapLocalResourceId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v2

    check-cast v2, Lcom/android/server/IpSecService$UdpSocketRecord;

    .line 598
    invoke-virtual {v2}, Lcom/android/server/IpSecService$UdpSocketRecord;->getPort()I

    move-result v18

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v19

    move-object/from16 v21, v2

    .line 602
    :goto_31
    sget-object v23, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v2, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v20, v2

    :goto_3b
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_eb

    aget v5, v23, v20

    .line 603
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getAuthentication(I)Landroid/net/IpSecAlgorithm;

    move-result-object v13

    .line 604
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getEncryption(I)Landroid/net/IpSecAlgorithm;

    move-result-object v16

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getSpiResourceId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v2

    check-cast v2, Lcom/android/server/IpSecService$SpiRecord;

    aput-object v2, v22, v5

    .line 607
    aget-object v2, v22, v5

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_10a

    move-result v10

    .line 609
    :try_start_67
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v4

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_c6

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 617
    :goto_7d
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v7

    if-eqz v7, :cond_ca

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 620
    :goto_8b
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v8

    if-eqz v8, :cond_ce

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v8

    .line 624
    :goto_99
    if-eqz v13, :cond_d1

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v11

    .line 625
    :goto_9f
    if-eqz v13, :cond_d5

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v12

    .line 626
    :goto_a5
    if-eqz v13, :cond_d7

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v13

    .line 627
    :goto_ab
    if-eqz v16, :cond_d9

    invoke-virtual/range {v16 .. v16}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v14

    .line 628
    :goto_b1
    if-eqz v16, :cond_dd

    invoke-virtual/range {v16 .. v16}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v15

    .line 629
    :goto_b7
    if-eqz v16, :cond_df

    invoke-virtual/range {v16 .. v16}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v16

    .line 609
    :goto_bd
    invoke-interface/range {v2 .. v19}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;[BILjava/lang/String;[BIIII)V

    .line 602
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto/16 :goto_3b

    .line 616
    :cond_c6
    const-string/jumbo v6, ""

    goto :goto_7d

    .line 619
    :cond_ca
    const-string/jumbo v7, ""

    goto :goto_8b

    .line 622
    :cond_ce
    const-wide/16 v8, 0x0

    goto :goto_99

    .line 624
    :cond_d1
    const-string/jumbo v11, ""

    goto :goto_9f

    .line 625
    :cond_d5
    const/4 v12, 0x0

    goto :goto_a5

    .line 626
    :cond_d7
    const/4 v13, 0x0

    goto :goto_ab

    .line 627
    :cond_d9
    const-string/jumbo v14, ""
    :try_end_dc
    .catch Landroid/os/ServiceSpecificException; {:try_start_67 .. :try_end_dc} :catch_e2
    .catchall {:try_start_67 .. :try_end_dc} :catchall_10a

    goto :goto_b1

    .line 628
    :cond_dd
    const/4 v15, 0x0

    goto :goto_b7

    .line 629
    :cond_df
    const/16 v16, 0x0

    goto :goto_bd

    .line 633
    :catch_e2
    move-exception v2

    .line 635
    :try_start_e3
    new-instance v2, Landroid/net/IpSecTransformResponse;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/net/IpSecTransformResponse;-><init>(I)V
    :try_end_e9
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_10a

    monitor-exit p0

    return-object v2

    .line 639
    :cond_eb
    :try_start_eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 640
    new-instance v4, Lcom/android/server/IpSecService$TransformRecord;

    move-object/from16 v5, p0

    move v6, v3

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v9, v22

    move-object/from16 v10, v21

    invoke-direct/range {v4 .. v10}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Landroid/net/IpSecConfig;[Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$UdpSocketRecord;)V

    .line 639
    invoke-virtual {v2, v3, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V

    .line 641
    new-instance v2, Landroid/net/IpSecTransformResponse;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/net/IpSecTransformResponse;-><init>(II)V
    :try_end_108
    .catchall {:try_start_eb .. :try_end_108} :catchall_10a

    monitor-exit p0

    return-object v2

    :catchall_10a
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_10d
    move-object/from16 v21, v2

    goto/16 :goto_31
.end method

.method public deleteTransportModeTransform(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "IpSecTransform"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    .line 653
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string/jumbo v0, "IpSecService Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetdNativeService Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "alive"

    :goto_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 720
    return-void

    .line 718
    :cond_35
    const-string/jumbo v0, "dead"

    goto :goto_26
.end method

.method getNetdInstance()Landroid/net/INetd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    .line 421
    if-nez v0, :cond_f

    .line 422
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Failed to Get Netd Instance"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_f
    return-object v0
.end method

.method declared-synchronized isNetdAlive()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 429
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_10
    .catchall {:try_start_2 .. :try_end_5} :catchall_13

    move-result-object v0

    .line 430
    if-nez v0, :cond_a

    monitor-exit p0

    .line 431
    return v1

    .line 433
    :cond_a
    :try_start_a
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_10
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    move-result v0

    monitor-exit p0

    return v0

    .line 434
    :catch_10
    move-exception v0

    monitor-exit p0

    .line 435
    return v1

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 540
    if-eqz p1, :cond_18

    const/16 v0, 0x400

    if-lt p1, v0, :cond_c

    const v0, 0xffff

    if-le p1, v0, :cond_18

    .line 541
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 542
    const-string/jumbo v1, "Specified port number must be a valid non-reserved UDP port"

    .line 541
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 544
    :cond_18
    :try_start_18
    sget-object v0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    move-result v2

    .line 545
    const/4 v4, 0x0

    .line 547
    :try_start_1f
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v0, v1, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 549
    if-eqz p1, :cond_68

    .line 550
    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding to port "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {v4, v0, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 558
    :goto_4a
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    .line 559
    sget v1, Landroid/system/OsConstants;->UDP_ENCAP:I

    .line 560
    sget v3, Landroid/system/OsConstants;->UDP_ENCAP_ESPINUDP:I

    .line 556
    invoke-static {v4, v0, v1, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 562
    iget-object v6, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 563
    new-instance v0, Lcom/android/server/IpSecService$UdpSocketRecord;

    move-object v1, p0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/IpSecService$UdpSocketRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Ljava/io/FileDescriptor;I)V

    .line 562
    invoke-virtual {v6, v2, v0}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V

    .line 564
    new-instance v0, Landroid/net/IpSecUdpEncapResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, p1, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(IIILjava/io/FileDescriptor;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_66} :catch_6c
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_66} :catch_6c
    .catchall {:try_start_1f .. :try_end_66} :catchall_15

    monitor-exit p0

    return-object v0

    .line 553
    :cond_68
    :try_start_68
    invoke-direct {p0, v4}, Lcom/android/server/IpSecService;->bindToRandomPort(Ljava/io/FileDescriptor;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catch Landroid/system/ErrnoException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_15

    goto :goto_4a

    .line 565
    :catch_6c
    move-exception v0

    .line 566
    :try_start_6d
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 570
    new-instance v0, Landroid/net/IpSecUdpEncapResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_15

    monitor-exit p0

    return-object v0
.end method

.method public releaseSecurityParameterIndex(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "SecurityParameterIndex"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    .line 494
    return-void
.end method

.method public removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 707
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_c

    .line 711
    :goto_b
    return-void

    .line 708
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public declared-synchronized reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 444
    :try_start_1
    sget-object v0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 446
    const/4 v11, 0x0

    .line 447
    const-string/jumbo v3, ""
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_4f

    .line 450
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    move v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecAllocateSpi(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 457
    const-string/jumbo v0, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allocated SPI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 460
    new-instance v4, Lcom/android/server/IpSecService$SpiRecord;

    move-object v5, p0

    move v6, v1

    move-object/from16 v7, p4

    move v8, p1

    move-object v9, v3

    move-object v10, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 458
    invoke-virtual {v0, v1, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V
    :try_end_41
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_41} :catch_52
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_41} :catch_49
    .catchall {:try_start_b .. :try_end_41} :catchall_4f

    .line 468
    :try_start_41
    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v11}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_4f

    monitor-exit p0

    return-object v0

    .line 465
    :catch_49
    move-exception v0

    .line 466
    :try_start_4a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 461
    :catch_52
    move-exception v0

    .line 463
    :try_start_53
    new-instance v0, Landroid/net/IpSecSpiResponse;

    .line 464
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 463
    invoke-direct {v0, v1, v2, v11}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_4f

    monitor-exit p0

    return-object v0
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 401
    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "IpSecService is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_f
    return-void

    .line 403
    :cond_10
    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "IpSecService not ready: failed to connect to NetD Native Service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
