.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 2795
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2796
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2797
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 2801
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_f8

    .line 2891
    :cond_5
    :goto_5
    return-void

    .line 2804
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->-wrap19(Lcom/android/server/ConnectivityService;I)V

    goto :goto_5

    .line 2808
    :sswitch_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;)V

    goto :goto_5

    .line 2812
    :sswitch_14
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/ProxyInfo;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_5

    .line 2816
    :sswitch_1e
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto :goto_5

    .line 2820
    :sswitch_28
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap24(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto :goto_5

    .line 2824
    :sswitch_32
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_5

    .line 2829
    :sswitch_3c
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_5

    .line 2834
    :sswitch_46
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_5

    .line 2838
    :sswitch_4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2839
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_5

    .line 2843
    :sswitch_56
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto :goto_5

    .line 2847
    :sswitch_62
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->-wrap18(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto :goto_5

    .line 2851
    :sswitch_6e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 2852
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto :goto_5

    .line 2856
    :sswitch_84
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_5

    .line 2860
    :sswitch_8f
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_5

    .line 2864
    :sswitch_9a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_5

    .line 2869
    :sswitch_a1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 2874
    :sswitch_ac
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2875
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2876
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2877
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_5

    .line 2881
    :sswitch_c5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2882
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_d3

    .line 2887
    :sswitch_e5
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->-wrap20(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    goto/16 :goto_5

    .line 2801
    :sswitch_data_f8
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_e
        0x10 -> :sswitch_14
        0x11 -> :sswitch_1e
        0x12 -> :sswitch_32
        0x13 -> :sswitch_3c
        0x14 -> :sswitch_4c
        0x15 -> :sswitch_3c
        0x16 -> :sswitch_62
        0x17 -> :sswitch_28
        0x18 -> :sswitch_6
        0x19 -> :sswitch_c5
        0x1a -> :sswitch_46
        0x1b -> :sswitch_56
        0x1c -> :sswitch_6e
        0x1d -> :sswitch_8f
        0x1e -> :sswitch_9a
        0x1f -> :sswitch_46
        0x23 -> :sswitch_84
        0x24 -> :sswitch_e5
        0x8100b -> :sswitch_a1
        0x8100c -> :sswitch_ac
    .end sparse-switch
.end method
