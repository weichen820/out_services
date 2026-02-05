.class Landroid/net/ip/IpManager$2;
.super Lcom/android/server/net/NetlinkTracker;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;Landroid/net/INetd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    .line 626
    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetlinkTracker;-><init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    .line 1
    return-void
.end method

.method private logMsg(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 666
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get20(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/ip/-$Lambda$EIaFPv5OO8Upo9X60vMtrcUNUEQ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Landroid/net/ip/-$Lambda$EIaFPv5OO8Upo9X60vMtrcUNUEQ;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 668
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 636
    invoke-super {p0, p1}, Lcom/android/server/net/NetlinkTracker;->interfaceAdded(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get1(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 638
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    .line 643
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interfaceAdded("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$2;->logMsg(Ljava/lang/String;)V

    .line 645
    return-void

    .line 639
    :cond_36
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get7(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 640
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 649
    invoke-super {p0, p1}, Lcom/android/server/net/NetlinkTracker;->interfaceRemoved(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get1(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 656
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    .line 661
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interfaceRemoved("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager$2;->logMsg(Ljava/lang/String;)V

    .line 663
    return-void

    .line 657
    :cond_36
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get7(Landroid/net/ip/IpManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 658
    return-void
.end method

.method synthetic lambda$-android_net_ip_IpManager$2_26526(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 667
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get10(Landroid/net/ip/IpManager;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OBSERVED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method
