.class Landroid/net/dhcp/DhcpClient$DhcpBoundState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpBoundState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 946
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method

.method private logTimeToBoundState()V
    .registers 7

    .prologue
    .line 990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 991
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->-get12(Landroid/net/dhcp/DhcpClient;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_25

    .line 992
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string/jumbo v3, "RenewingBoundState"

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v2, v3, v0}, Landroid/net/dhcp/DhcpClient;->-wrap11(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V

    .line 996
    :goto_24
    return-void

    .line 994
    :cond_25
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string/jumbo v3, "InitialBoundState"

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v4}, Landroid/net/dhcp/DhcpClient;->-get12(Landroid/net/dhcp/DhcpClient;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v2, v3, v0}, Landroid/net/dhcp/DhcpClient;->-wrap11(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V

    goto :goto_24
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 949
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 950
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap0(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    .line 959
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    .line 960
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get21(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 963
    :cond_2f
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;)V

    .line 964
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->logTimeToBoundState()V

    .line 965
    return-void
.end method

.method public exit()V
    .registers 5

    .prologue
    .line 969
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->exit()V

    .line 970
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/net/dhcp/DhcpClient;->-set0(Landroid/net/dhcp/DhcpClient;J)J

    .line 971
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 975
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 976
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 985
    const/4 v0, 0x0

    return v0

    .line 978
    :pswitch_a
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 979
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get24(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 983
    :goto_1d
    const/4 v0, 0x1

    return v0

    .line 981
    :cond_1f
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get7(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1d

    .line 976
    nop

    :pswitch_data_2c
    .packed-switch 0x30068
        :pswitch_a
    .end packed-switch
.end method
