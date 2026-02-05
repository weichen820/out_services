.class Lcom/android/server/NetworkManagementService$Injector;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .prologue
    .line 2794
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 2820
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->-get3(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2821
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService$Injector;->setDataSaverMode(Z)V

    .line 2823
    const/4 v2, 0x1

    .line 2824
    const/4 v3, 0x2

    .line 2825
    const/4 v4, 0x3

    .line 2822
    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    .line 2827
    array-length v3, v2

    :goto_14
    if-ge v0, v3, :cond_28

    aget v4, v2, v0

    .line 2828
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/NetworkManagementService$Injector;->setFirewallChainState(IZ)V

    .line 2829
    iget-object v5, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v5, v4}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 2827
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2831
    :cond_28
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2832
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get5(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_3c

    monitor-exit v1

    .line 2834
    return-void

    .line 2820
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setDataSaverMode(Z)V
    .registers 3

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->-set1(Lcom/android/server/NetworkManagementService;Z)Z

    .line 2797
    return-void
.end method

.method setFirewallChainState(IZ)V
    .registers 4

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->-wrap14(Lcom/android/server/NetworkManagementService;IZ)V

    .line 2801
    return-void
.end method

.method setFirewallRule(III)V
    .registers 6

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get3(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2805
    :try_start_7
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 2807
    return-void

    .line 2804
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setUidOnMeteredNetworkList(ZIZ)V
    .registers 6

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get3(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2811
    if-eqz p1, :cond_14

    .line 2812
    :try_start_9
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get5(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e

    :goto_12
    monitor-exit v1

    .line 2817
    return-void

    .line 2814
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$Injector;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get4(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 2810
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
