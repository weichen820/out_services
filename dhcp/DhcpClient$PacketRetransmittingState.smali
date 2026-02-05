.class abstract Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PacketRetransmittingState"
.end annotation


# instance fields
.field protected mTimeout:I

.field private mTimer:I

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3

    .prologue
    .line 758
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    .line 758
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 765
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 766
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initTimer()V

    .line 767
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->maybeInitTimeout()V

    .line 768
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30065

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 769
    return-void
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 792
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->exit()V

    .line 793
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get10(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 794
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get22(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 795
    return-void
.end method

.method protected initTimer()V
    .registers 2

    .prologue
    .line 802
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 803
    return-void
.end method

.method protected jitterTimer(I)I
    .registers 5

    .prologue
    .line 806
    div-int/lit8 v0, p1, 0xa

    .line 807
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get15(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int v0, v1, v0

    .line 808
    add-int/2addr v0, p1

    return v0
.end method

.method protected maybeInitTimeout()V
    .registers 5

    .prologue
    .line 823
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    if-lez v0, :cond_15

    .line 824
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 825
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get22(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 827
    :cond_15
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 773
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 774
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 786
    const/4 v0, 0x0

    return v0

    .line 776
    :pswitch_b
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->sendPacket()Z

    .line 777
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    .line 778
    return v1

    .line 780
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/dhcp/DhcpPacket;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->receivePacket(Landroid/net/dhcp/DhcpPacket;)V

    .line 781
    return v1

    .line 783
    :pswitch_1a
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->timeout()V

    .line 784
    return v1

    .line 774
    :pswitch_data_1e
    .packed-switch 0x30065
        :pswitch_b
        :pswitch_12
        :pswitch_1a
    .end packed-switch
.end method

.method protected abstract receivePacket(Landroid/net/dhcp/DhcpPacket;)V
.end method

.method protected scheduleKick()V
    .registers 6

    .prologue
    const v4, 0x1f400

    .line 812
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 813
    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    invoke-virtual {p0, v2}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->jitterTimer(I)I

    move-result v2

    int-to-long v2, v2

    .line 814
    add-long/2addr v0, v2

    .line 815
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get10(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 816
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 817
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    if-le v0, v4, :cond_24

    .line 818
    iput v4, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 820
    :cond_24
    return-void
.end method

.method protected abstract sendPacket()Z
.end method

.method protected timeout()V
    .registers 1

    .prologue
    .line 799
    return-void
.end method
