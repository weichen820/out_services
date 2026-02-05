.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1012
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1013
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1017
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1c8

    .line 1125
    :goto_9
    return-void

    .line 1020
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    goto :goto_9

    .line 1025
    :pswitch_10
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1028
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_7b

    .line 1029
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v3

    .line 1030
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v2

    .line 1036
    :goto_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get11(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1037
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v1, :cond_40

    move v0, v1

    .line 1039
    :cond_40
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v5, 0x0

    .line 1037
    invoke-interface {v4, v0, v5, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_48} :catch_1c4

    .line 1042
    :goto_48
    if-eqz v3, :cond_5b

    .line 1043
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1045
    :cond_5b
    if-eqz v2, :cond_6e

    .line 1046
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1048
    :cond_6e
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1049
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9

    .line 1032
    :cond_7b
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v3

    .line 1033
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v2

    goto :goto_2b

    .line 1053
    :pswitch_90
    const-string/jumbo v0, "unknown"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1055
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v9

    .line 1057
    :try_start_aa
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get11(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1058
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    .line 1059
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1058
    const/4 v4, 0x0

    .line 1059
    const/4 v5, 0x0

    .line 1058
    invoke-interface {v1, v4, v5, v2}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_c3} :catch_1c1

    .line 1062
    :goto_c3
    if-eqz v0, :cond_e4

    .line 1063
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1064
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1065
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 1064
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1067
    :cond_e4
    if-eqz v9, :cond_105

    .line 1068
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1069
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1070
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 1069
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1074
    :cond_105
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1075
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_9

    .line 1079
    :pswitch_10f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1080
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1082
    if-eqz v0, :cond_16e

    move-object v1, v0

    .line 1081
    :goto_118
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1083
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v1

    .line 1084
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-get7(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .line 1086
    :try_start_12f
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get11(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1087
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->-get0(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_143} :catch_1bf

    .line 1091
    :goto_143
    if-eqz v1, :cond_156

    .line 1092
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get3(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1094
    :cond_156
    if-eqz v3, :cond_169

    .line 1095
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1097
    :cond_169
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_9

    .line 1082
    :cond_16e
    const-string/jumbo v1, "unknown"

    goto :goto_118

    .line 1101
    :pswitch_172
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1102
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    goto/16 :goto_9

    .line 1106
    :pswitch_17b
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_19e

    move v1, v0

    .line 1107
    :goto_180
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1109
    :goto_18a
    if-ge v6, v2, :cond_1a0

    .line 1111
    :try_start_18c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IMaintenanceActivityListener;

    invoke-interface {v0, v1}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_18c .. :try_end_19b} :catch_1bd
    .catchall {:try_start_18c .. :try_end_19b} :catchall_1ab

    .line 1109
    :goto_19b
    add-int/lit8 v6, v6, 0x1

    goto :goto_18a

    :cond_19e
    move v1, v6

    .line 1106
    goto :goto_180

    .line 1117
    :cond_1a0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_9

    .line 1116
    :catchall_1ab
    move-exception v0

    .line 1117
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get8(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1116
    throw v0

    .line 1122
    :pswitch_1b6
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    goto/16 :goto_9

    .line 1113
    :catch_1bd
    move-exception v0

    goto :goto_19b

    .line 1089
    :catch_1bf
    move-exception v0

    goto :goto_143

    .line 1060
    :catch_1c1
    move-exception v1

    goto/16 :goto_c3

    .line 1040
    :catch_1c4
    move-exception v0

    goto/16 :goto_48

    .line 1017
    nop

    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_90
        :pswitch_10f
        :pswitch_172
        :pswitch_17b
        :pswitch_1b6
    .end packed-switch
.end method
