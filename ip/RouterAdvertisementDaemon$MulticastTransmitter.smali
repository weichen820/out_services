.class final Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MulticastTransmitter"
.end annotation


# instance fields
.field private final mRandom:Ljava/util/Random;

.field private final mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .registers 4

    .prologue
    .line 673
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 674
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    .line 675
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 673
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    return-void
.end method

.method private getNextMulticastTransmitDelayMs()J
    .registers 5

    .prologue
    .line 726
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelaySec()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextMulticastTransmitDelaySec()I
    .registers 5

    .prologue
    const/16 v3, 0x12c

    .line 708
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 709
    :try_start_9
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-get5(Landroid/net/ip/RouterAdvertisementDaemon;)I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_31

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_18

    .line 711
    const v0, 0x15180

    monitor-exit v1

    return v0

    .line 713
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->isEmpty()Z
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_31

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit v1

    .line 716
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    .line 717
    if-gtz v1, :cond_2f

    if-eqz v0, :cond_34

    .line 718
    :cond_2f
    const/4 v0, 0x3

    return v0

    .line 708
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    .line 721
    :cond_34
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x12c

    return v0
.end method


# virtual methods
.method public hup()V
    .registers 3

    .prologue
    .line 702
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 703
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 704
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 679
    :goto_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap0(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 681
    :try_start_8
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelayMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_f} :catch_38

    .line 686
    :goto_f
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-get2(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap2(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    .line 687
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 688
    :try_start_21
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->-wrap0(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 691
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap1(Landroid/net/ip/RouterAdvertisementDaemon;)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit v1

    goto :goto_0

    .line 687
    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0

    .line 695
    :cond_37
    return-void

    .line 682
    :catch_38
    move-exception v0

    goto :goto_f
.end method
