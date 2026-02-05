.class Lcom/android/server/StorageManagerService$UnmountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V
    .registers 4

    .prologue
    .line 3841
    iput-object p1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3842
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3843
    iput-boolean p3, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    .line 3844
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 3901
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3902
    return-void
.end method

.method public handleExecute()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 3848
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-wrap16(Lcom/android/server/StorageManagerService;)V

    .line 3849
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-wrap17(Lcom/android/server/StorageManagerService;)V

    .line 3852
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get11(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 3853
    :try_start_13
    iget-object v0, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get12(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v3, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbState;
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_2c

    monitor-exit v1

    .line 3856
    if-nez v0, :cond_2f

    .line 3857
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3858
    return-void

    .line 3852
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3861
    :cond_2f
    iget v1, v0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v3, v3, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    if-eq v1, v3, :cond_6d

    .line 3862
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission denied attempting to unmount OBB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3863
    const-string/jumbo v3, " (owned by GID "

    .line 3862
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3863
    iget v0, v0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 3862
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3863
    const-string/jumbo v2, ")"

    .line 3862
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3865
    return-void

    .line 3870
    :cond_6d
    :try_start_6d
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v3, "obb"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "unmount"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v5, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-direct {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3871
    iget-boolean v3, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    if-eqz v3, :cond_8f

    .line 3872
    const-string/jumbo v3, "force"

    invoke-virtual {v1, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3874
    :cond_8f
    iget-object v3, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_98
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6d .. :try_end_98} :catch_ac

    move v1, v2

    .line 3887
    :goto_99
    if-nez v1, :cond_c2

    .line 3888
    iget-object v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get11(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 3889
    :try_start_a2
    iget-object v2, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2, v0}, Lcom/android/server/StorageManagerService;->-wrap12(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_bf

    monitor-exit v1

    .line 3892
    invoke-virtual {p0, v7}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    .line 3897
    :goto_ab
    return-void

    .line 3875
    :catch_ac
    move-exception v1

    .line 3876
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3877
    const/16 v3, 0x195

    if-ne v1, v3, :cond_b7

    .line 3878
    const/4 v1, -0x7

    goto :goto_99

    .line 3879
    :cond_b7
    const/16 v3, 0x196

    if-ne v1, v3, :cond_bd

    move v1, v2

    .line 3881
    goto :goto_99

    .line 3883
    :cond_bd
    const/4 v1, -0x1

    goto :goto_99

    .line 3888
    :catchall_bf
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3894
    :cond_c2
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not unmount OBB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$ObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_ab
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3907
    const-string/jumbo v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3908
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3909
    const-string/jumbo v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3910
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3911
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3912
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
