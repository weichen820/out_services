.class Lcom/android/server/MasterClearReceiver$ClearAppDataTask$1;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver$ClearAppDataTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MasterClearReceiver$ClearAppDataTask;


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver$ClearAppDataTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask$1;->this$1:Lcom/android/server/MasterClearReceiver$ClearAppDataTask;

    .line 199
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    const-string/jumbo v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoveCompleted pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", succeeded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask$1;->this$1:Lcom/android/server/MasterClearReceiver$ClearAppDataTask;

    invoke-static {v0}, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->-get0(Lcom/android/server/MasterClearReceiver$ClearAppDataTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 205
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$ClearAppDataTask$1;->this$1:Lcom/android/server/MasterClearReceiver$ClearAppDataTask;

    invoke-static {v0}, Lcom/android/server/MasterClearReceiver$ClearAppDataTask;->-get0(Lcom/android/server/MasterClearReceiver$ClearAppDataTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_37

    monitor-exit v1

    .line 207
    return-void

    .line 204
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method
