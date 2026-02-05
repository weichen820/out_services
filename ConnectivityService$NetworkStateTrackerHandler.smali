.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2004
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2005
    return-void
.end method

.method private getCaptivePortalMode()I
    .registers 4

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2173
    const-string/jumbo v1, "captive_portal_mode"

    .line 2174
    const/4 v2, 0x1

    .line 2172
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 2008
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 2010
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 2012
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 2025
    :cond_c
    :goto_c
    const/4 v0, 0x1

    return v0

    .line 2016
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2017
    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_c

    .line 2021
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_c

    .line 2008
    :pswitch_data_2a
    .packed-switch 0x11000
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_e
        :pswitch_24
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z
    .registers 5

    .prologue
    .line 2178
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 2180
    const/4 v0, 0x0

    return v0

    .line 2182
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2183
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2184
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2189
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 2178
    :pswitch_data_1e
    .packed-switch 0x3e9
        :pswitch_7
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2030
    if-nez v0, :cond_11

    .line 2034
    return-void

    .line 2037
    :cond_11
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_104

    .line 2092
    :goto_16
    :pswitch_16
    return-void

    .line 2039
    :pswitch_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 2040
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2041
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    .line 2040
    if-nez v2, :cond_33

    .line 2042
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    .line 2040
    if-eqz v2, :cond_55

    .line 2043
    :cond_33
    invoke-static {}, Lcom/android/server/ConnectivityService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BUG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has CS-managed capability."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_55
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/ConnectivityService;->-wrap36(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_16

    .line 2049
    :pswitch_5f
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    goto :goto_16

    .line 2053
    :pswitch_69
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2054
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v0, v1}, Lcom/android/server/ConnectivityService;->-wrap38(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto :goto_16

    .line 2058
    :pswitch_73
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->-wrap39(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_16

    .line 2063
    :pswitch_7b
    :try_start_7b
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v0, Landroid/net/Network;->netId:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/net/UidRange;

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_8c} :catch_8d

    goto :goto_16

    .line 2064
    :catch_8d
    move-exception v0

    .line 2066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in addVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap26(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2072
    :pswitch_a7
    :try_start_a7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v0, Landroid/net/Network;->netId:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/net/UidRange;

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b8} :catch_ba

    goto/16 :goto_16

    .line 2073
    :catch_ba
    move-exception v0

    .line 2075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in removeVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap26(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2080
    :pswitch_d4
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v1, :cond_e6

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e6

    .line 2081
    const-string/jumbo v1, "ERROR: already-connected network explicitly selected."

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap26(Ljava/lang/String;)V

    .line 2083
    :cond_e6
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2084
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto/16 :goto_16

    .line 2088
    :pswitch_f9
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto/16 :goto_16

    .line 2037
    :pswitch_data_104
    .packed-switch 0x81001
        :pswitch_69
        :pswitch_17
        :pswitch_5f
        :pswitch_73
        :pswitch_7b
        :pswitch_a7
        :pswitch_16
        :pswitch_d4
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_f9
    .end packed-switch
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .registers 11

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2095
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_168

    .line 2097
    return v3

    .line 2100
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 2101
    :try_start_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_a5

    monitor-exit v1

    .line 2103
    if-eqz v0, :cond_a4

    .line 2105
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_a8

    move v2, v7

    .line 2106
    :goto_27
    iget-boolean v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " validation "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_ab

    const-string/jumbo v1, "passed"

    :goto_42
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_af

    const-string/jumbo v1, ""

    .line 2107
    :goto_4d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap25(Ljava/lang/String;)V

    .line 2109
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v2, v1, :cond_79

    .line 2110
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 2111
    iput-boolean v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2112
    iget-boolean v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v6, v2

    iput-boolean v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 2113
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v6, v1, v0, v8}, Lcom/android/server/ConnectivityService;->-wrap36(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2115
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v6

    if-eq v1, v6, :cond_79

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap34(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2117
    :cond_79
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap37(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2119
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2120
    sget-object v8, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    iget-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2123
    if-eqz v2, :cond_c8

    move v1, v7

    .line 2122
    :goto_91
    const v2, 0x81007

    .line 2121
    invoke-virtual {v8, v2, v1, v3, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2125
    if-eqz v4, :cond_a4

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a4

    .line 2126
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2168
    :cond_a4
    :goto_a4
    return v7

    .line 2100
    :catchall_a5
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_a8
    move v2, v3

    .line 2105
    goto/16 :goto_27

    .line 2107
    :cond_ab
    const-string/jumbo v1, "failed"

    goto :goto_42

    .line 2108
    :cond_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " with redirect to "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    :cond_c8
    move v1, v5

    .line 2123
    goto :goto_91

    .line 2132
    :sswitch_ca
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2133
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v0

    .line 2135
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 2136
    :try_start_d9
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_e5
    .catchall {:try_start_d9 .. :try_end_e5} :catchall_12b

    monitor-exit v2

    .line 2139
    if-eqz v3, :cond_135

    iget-boolean v2, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v0, v2, :cond_135

    .line 2140
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    .line 2141
    iput-boolean v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 2142
    iget-boolean v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v6, v0

    iput-boolean v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 2143
    iget-boolean v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v6, :cond_12e

    .line 2144
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->getCaptivePortalMode()I

    move-result v6

    if-ne v5, v6, :cond_12e

    .line 2145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Avoiding captive portal network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap25(Ljava/lang/String;)V

    .line 2146
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2147
    const v1, 0x8100f

    .line 2146
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2148
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->-wrap35(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_a4

    .line 2135
    :catchall_12b
    move-exception v0

    monitor-exit v2

    throw v0

    .line 2151
    :cond_12e
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v5, v2, v3, v6}, Lcom/android/server/ConnectivityService;->-wrap36(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2153
    :cond_135
    if-nez v0, :cond_142

    .line 2154
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    goto/16 :goto_a4

    .line 2156
    :cond_142
    if-nez v3, :cond_14c

    .line 2157
    const-string/jumbo v0, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap26(Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 2160
    :cond_14c
    iget-object v0, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    if-nez v0, :cond_a4

    .line 2161
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 2162
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/PendingIntent;

    iget-object v6, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2161
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_a4

    .line 2095
    nop

    :sswitch_data_168
    .sparse-switch
        0x82002 -> :sswitch_a
        0x8200a -> :sswitch_ca
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 2194
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2195
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2194
    if-eqz v0, :cond_19

    .line 2196
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2194
    if-eqz v0, :cond_19

    .line 2197
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    .line 2199
    :cond_19
    return-void
.end method
