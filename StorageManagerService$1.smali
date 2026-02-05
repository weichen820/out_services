.class Lcom/android/server/StorageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 769
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 772
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 773
    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 774
    if-ltz v3, :cond_52

    :goto_10
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 777
    :try_start_13
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 778
    iget-object v0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 779
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 780
    iget-object v1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string/jumbo v2, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "user_added"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 797
    :cond_51
    :goto_51
    return-void

    :cond_52
    move v0, v1

    .line 774
    goto :goto_10

    .line 781
    :cond_54
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 782
    iget-object v0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get13(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_64} :catch_b4

    .line 783
    :try_start_64
    iget-object v0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get13(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 784
    :goto_6e
    if-ge v1, v4, :cond_96

    .line 785
    iget-object v0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get13(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 786
    iget v5, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    if-ne v5, v3, :cond_93

    .line 787
    const/16 v5, -0x2710

    iput v5, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 788
    iget-object v5, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-get5(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_93
    .catchall {:try_start_64 .. :try_end_93} :catchall_bf

    .line 784
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_96
    :try_start_96
    monitor-exit v2

    .line 792
    iget-object v0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v0

    const-string/jumbo v1, "volume"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "user_removed"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_b3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_96 .. :try_end_b3} :catch_b4

    goto :goto_51

    .line 794
    :catch_b4
    move-exception v0

    .line 795
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "Failed to send user details to vold"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 782
    :catchall_bf
    move-exception v0

    :try_start_c0
    monitor-exit v2

    throw v0
    :try_end_c2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c0 .. :try_end_c2} :catch_b4
.end method
