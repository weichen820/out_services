.class Lcom/android/server/StorageManagerService$Callbacks;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_DISK_DESTROYED:I = 0x6

.field private static final MSG_DISK_SCANNED:I = 0x5

.field private static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field private static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field private static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field private static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/storage/IStorageEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 3928
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3925
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 3929
    return-void
.end method

.method private invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3956
    packed-switch p2, :pswitch_data_42

    .line 3983
    :goto_3
    return-void

    .line 3958
    :pswitch_4
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3959
    iget-object v2, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 3958
    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IStorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3963
    :pswitch_14
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IStorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    goto :goto_3

    .line 3967
    :pswitch_20
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeRecord;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    goto :goto_3

    .line 3971
    :pswitch_28
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    goto :goto_3

    .line 3975
    :pswitch_30
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/DiskInfo;

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {p1, v0, v1}, Landroid/os/storage/IStorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    goto :goto_3

    .line 3979
    :pswitch_3a
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/DiskInfo;

    invoke-interface {p1, v0}, Landroid/os/storage/IStorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    goto :goto_3

    .line 3956
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_4
        :pswitch_14
        :pswitch_20
        :pswitch_28
        :pswitch_30
        :pswitch_3a
    .end packed-switch
.end method

.method private notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 4

    .prologue
    .line 4021
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4022
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4023
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4024
    return-void
.end method

.method private notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 5

    .prologue
    .line 4014
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4015
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4016
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 4017
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4018
    return-void
.end method

.method private notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3986
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3987
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3988
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 3989
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 3990
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3991
    return-void
.end method

.method private notifyVolumeForgotten(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 4008
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4009
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4010
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4011
    return-void
.end method

.method private notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 4

    .prologue
    .line 4002
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 4003
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4004
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4005
    return-void
.end method

.method private notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 6

    .prologue
    .line 3994
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 3995
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3996
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 3997
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 3998
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3999
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 3941
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3942
    iget-object v1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 3943
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v3, :cond_1f

    .line 3944
    iget-object v1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/storage/IStorageEventListener;

    .line 3946
    :try_start_16
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v4, v0}, Lcom/android/server/StorageManagerService$Callbacks;->invokeCallback(Landroid/os/storage/IStorageEventListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_28

    .line 3943
    :goto_1b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c

    .line 3950
    :cond_1f
    iget-object v1, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3951
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3952
    return-void

    .line 3947
    :catch_28
    move-exception v1

    goto :goto_1b
.end method

.method public register(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    .prologue
    .line 3932
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3933
    return-void
.end method

.method public unregister(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    .prologue
    .line 3936
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3937
    return-void
.end method
