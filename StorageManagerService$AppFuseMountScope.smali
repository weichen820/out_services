.class Lcom/android/server/StorageManagerService$AppFuseMountScope;
.super Lcom/android/server/storage/AppFuseBridge$MountScope;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppFuseMountScope"
.end annotation


# instance fields
.field opened:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;III)V
    .registers 6

    .prologue
    .line 3091
    iput-object p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 3092
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/storage/AppFuseBridge$MountScope;-><init>(III)V

    .line 3089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    .line 3093
    return-void
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3109
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    if-eqz v0, :cond_38

    .line 3110
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v0

    const-string/jumbo v1, "appfuse"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "unmount"

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3111
    iput-boolean v5, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    .line 3113
    :cond_38
    return-void
.end method

.method public open()Landroid/os/ParcelFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3097
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v0

    .line 3098
    const-string/jumbo v1, "appfuse"

    .line 3097
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 3098
    const-string/jumbo v3, "mount"

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 3097
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 3099
    iput-boolean v6, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    .line 3100
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 3101
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_4b

    .line 3102
    :cond_42
    new-instance v0, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v1, "Cannot obtain device FD"

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3104
    :cond_4b
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method
