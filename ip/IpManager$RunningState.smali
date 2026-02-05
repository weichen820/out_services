.class Landroid/net/ip/IpManager$RunningState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field private mDhcpActionInFlight:Z

.field private mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .registers 2

    .prologue
    .line 1502
    iput-object p1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private createPacketTracker()Landroid/net/ip/ConnectivityPacketTracker;
    .registers 4

    .prologue
    .line 1580
    :try_start_0
    new-instance v0, Landroid/net/ip/ConnectivityPacketTracker;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get13(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get3(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/ip/ConnectivityPacketTracker;-><init>(Ljava/net/NetworkInterface;Landroid/util/LocalLog;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 1581
    :catch_12
    move-exception v0

    .line 1582
    const/4 v0, 0x0

    return-object v0
.end method

.method private ensureDhcpAction()V
    .registers 5

    .prologue
    .line 1587
    iget-boolean v0, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    if-nez v0, :cond_25

    .line 1588
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPreDhcpAction()V

    .line 1589
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    .line 1590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1591
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    int-to-long v2, v2

    .line 1590
    add-long/2addr v0, v2

    .line 1592
    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1594
    :cond_25
    return-void
.end method

.method private stopDhcpAction()V
    .registers 2

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1598
    iget-boolean v0, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    if-eqz v0, :cond_17

    .line 1599
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onPostDhcpAction()V

    .line 1600
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ip/IpManager$RunningState;->mDhcpActionInFlight:Z

    .line 1602
    :cond_17
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .prologue
    .line 1510
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get4(Landroid/net/ip/IpManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1512
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v2, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v2}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget-object v3, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v3}, Landroid/net/ip/IpManager;->-get13(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;

    move-result-object v3

    .line 1513
    iget-object v4, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v4, v4, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    iget-object v5, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v5}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Z

    move-result v5

    .line 1512
    invoke-static {v2, v3, v4, v5, v0}, Landroid/net/apf/ApfFilter;->maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;ZZ)Landroid/net/apf/ApfFilter;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    .line 1516
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-nez v0, :cond_47

    .line 1517
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    .line 1520
    :cond_47
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->createPacketTracker()Landroid/net/ip/ConnectivityPacketTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    .line 1521
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    if-eqz v0, :cond_56

    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-virtual {v0}, Landroid/net/ip/ConnectivityPacketTracker;->start()V

    .line 1523
    :cond_56
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    if-eqz v0, :cond_7c

    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap4(Landroid/net/ip/IpManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7c

    .line 1524
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap8(Landroid/net/ip/IpManager;I)V

    .line 1525
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1526
    return-void

    .line 1529
    :cond_7c
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    if-eqz v0, :cond_a2

    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap3(Landroid/net/ip/IpManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a2

    .line 1530
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap8(Landroid/net/ip/IpManager;I)V

    .line 1531
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1532
    return-void

    .line 1535
    :cond_a2
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpManager$InitialConfiguration;

    .line 1536
    if-eqz v0, :cond_c8

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-wrap0(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$InitialConfiguration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c8

    .line 1538
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap8(Landroid/net/ip/IpManager;I)V

    .line 1539
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1540
    return-void

    .line 1543
    :cond_c8
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    if-eqz v0, :cond_ee

    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap5(Landroid/net/ip/IpManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_ee

    .line 1544
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    .line 1545
    const/4 v1, 0x6

    .line 1544
    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap8(Landroid/net/ip/IpManager;I)V

    .line 1546
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1547
    return-void

    .line 1549
    :cond_ee
    return-void
.end method

.method public exit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1553
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    .line 1555
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1556
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->stop()V

    .line 1557
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;

    .line 1560
    :cond_1a
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1561
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    const v1, 0x30002

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1562
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->doQuit()V

    .line 1565
    :cond_37
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    if-eqz v0, :cond_42

    .line 1566
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    invoke-virtual {v0}, Landroid/net/ip/ConnectivityPacketTracker;->stop()V

    .line 1567
    iput-object v2, p0, Landroid/net/ip/IpManager$RunningState;->mPacketTracker:Landroid/net/ip/ConnectivityPacketTracker;

    .line 1570
    :cond_42
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1571
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter;->shutdown()V

    .line 1572
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v2}, Landroid/net/ip/IpManager;->-set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;

    .line 1575
    :cond_58
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap14(Landroid/net/ip/IpManager;)V

    .line 1576
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1606
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_162

    .line 1722
    return v4

    .line 1608
    :sswitch_9
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1725
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get11(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$MessageHandlingLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-virtual {v1}, Landroid/net/ip/IpManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpManager$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1726
    return v5

    .line 1612
    :sswitch_24
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const-string/jumbo v1, "ALERT: START received in StartedState. Please fix caller."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 1620
    :sswitch_2f
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1621
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get8(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpReachabilityMonitor;->probeAll()V

    goto :goto_14

    .line 1629
    :sswitch_41
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1630
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    const v1, 0x30006

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto :goto_14

    .line 1635
    :sswitch_56
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v5}, Landroid/net/ip/IpManager;->-wrap1(Landroid/net/ip/IpManager;Z)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1636
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_14

    .line 1641
    :sswitch_6a
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1643
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v5}, Landroid/net/ip/IpManager;->-wrap1(Landroid/net/ip/IpManager;Z)Z

    goto :goto_14

    .line 1647
    :sswitch_79
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/ProxyInfo;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 1649
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v5}, Landroid/net/ip/IpManager;->-wrap1(Landroid/net/ip/IpManager;Z)Z

    goto :goto_14

    .line 1653
    :sswitch_88
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-set5(Landroid/net/ip/IpManager;Z)Z

    .line 1654
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 1655
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfFilter;->setMulticastFilter(Z)V

    goto/16 :goto_14

    .line 1657
    :cond_ae
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get12(Landroid/net/ip/IpManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setFallbackMulticastFilter(Z)V

    goto/16 :goto_14

    .line 1663
    :sswitch_bd
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    goto/16 :goto_14

    .line 1667
    :sswitch_c2
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    if-lez v0, :cond_d1

    .line 1668
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->ensureDhcpAction()V

    goto/16 :goto_14

    .line 1670
    :cond_d1
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager;->sendMessage(I)V

    goto/16 :goto_14

    .line 1675
    :sswitch_d9
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap6(Landroid/net/ip/IpManager;)V

    goto/16 :goto_14

    .line 1679
    :sswitch_e0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkAddress;

    .line 1680
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-wrap2(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1681
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get6(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    const v1, 0x30009

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto/16 :goto_14

    .line 1683
    :cond_fa
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const-string/jumbo v1, "Failed to set IPv4 address."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1684
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    .line 1685
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v3}, Landroid/net/ip/IpManager;->-get9(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 1684
    invoke-static {v0, v1, v2}, Landroid/net/ip/IpManager;->-wrap7(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    .line 1686
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get19(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_14

    .line 1701
    :sswitch_123
    invoke-direct {p0}, Landroid/net/ip/IpManager$RunningState;->stopDhcpAction()V

    .line 1703
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_19c

    .line 1711
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const-string/jumbo v1, "Unknown CMD_POST_DHCP_ACTION status: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 1705
    :pswitch_13f
    iget-object v1, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpResults;

    invoke-static {v1, v0}, Landroid/net/ip/IpManager;->-wrap10(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V

    goto/16 :goto_14

    .line 1708
    :pswitch_14a
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-wrap9(Landroid/net/ip/IpManager;)V

    goto/16 :goto_14

    .line 1717
    :sswitch_151
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    const-string/jumbo v1, "Unexpected CMD_ON_QUIT."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1718
    iget-object v0, p0, Landroid/net/ip/IpManager$RunningState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v3}, Landroid/net/ip/IpManager;->-set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    goto/16 :goto_14

    .line 1606
    :sswitch_data_162
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_24
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_41
        0x5 -> :sswitch_56
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_79
        0x8 -> :sswitch_88
        0xa -> :sswitch_bd
        0x30003 -> :sswitch_c2
        0x30004 -> :sswitch_123
        0x30005 -> :sswitch_151
        0x30007 -> :sswitch_d9
        0x30008 -> :sswitch_e0
    .end sparse-switch

    .line 1703
    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_13f
        :pswitch_14a
    .end packed-switch
.end method
