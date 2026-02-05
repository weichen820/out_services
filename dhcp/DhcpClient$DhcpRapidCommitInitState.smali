.class Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRapidCommitInitState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 631
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 632
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 633
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 637
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    .line 638
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    if-nez v0, :cond_e

    .line 639
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap14(Landroid/net/dhcp/DhcpClient;)V

    .line 641
    :cond_e
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/net/dhcp/DhcpClient;->-set1(Landroid/net/dhcp/DhcpClient;J)J

    .line 642
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 654
    :cond_a
    instance-of v0, p1, Landroid/net/dhcp/DhcpOfferPacket;

    if-eqz v0, :cond_4b

    .line 655
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set2(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 656
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 657
    const-string/jumbo v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DhcpRapidCommitInitState:Got pending lease: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get8(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 673
    :cond_4a
    :goto_4a
    return-void

    .line 660
    :cond_4b
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_77

    .line 661
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 662
    const-string/jumbo v1, "DhcpClient"

    const-string/jumbo v2, "Received ACK in DhcpRapidCommitInitState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    if-eqz v0, :cond_4a

    .line 664
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 665
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string/jumbo v2, "Confirmed"

    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get0(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_4a

    .line 668
    :cond_77
    instance-of v0, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v0, :cond_4a

    .line 669
    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "Received NAK in DhcpRapidCommitInitState, returning to INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0, v2}, Landroid/net/dhcp/DhcpClient;->-set2(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 671
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_4a
.end method

.method protected sendPacket()Z
    .registers 3

    .prologue
    .line 645
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    if-eqz v0, :cond_d

    .line 646
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    .line 647
    const/4 v0, 0x1

    return v0

    .line 649
    :cond_d
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRapidCommitInitState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap4(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    return v0
.end method
