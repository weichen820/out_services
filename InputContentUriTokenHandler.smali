.class final Lcom/android/server/InputContentUriTokenHandler;
.super Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
.source "InputContentUriTokenHandler.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPermissionOwnerToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILjava/lang/String;II)V
    .registers 7

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 51
    iput-object p1, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 52
    iput p2, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    .line 53
    iput-object p3, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    .line 54
    iput p4, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    .line 55
    iput p5, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    .line 56
    return-void
.end method

.method private doTakeLocked(Landroid/os/IBinder;)V
    .registers 12

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 81
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 82
    iget v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUid:I

    iget-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 83
    iget v6, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    iget v7, p0, Lcom/android/server/InputContentUriTokenHandler;->mTargetUserId:I

    const/4 v5, 0x1

    move-object v1, p1

    .line 81
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_1b
    .catchall {:try_start_4 .. :try_end_17} :catchall_20

    .line 88
    :goto_17
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    return-void

    .line 84
    :catch_1b
    move-exception v0

    .line 85
    :try_start_1c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_17

    .line 87
    :catchall_20
    move-exception v0

    .line 88
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputContentUriTokenHandler;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 118
    invoke-super {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->finalize()V

    .line 120
    return-void

    .line 117
    :catchall_7
    move-exception v0

    .line 118
    invoke-super {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->finalize()V

    .line 117
    throw v0
.end method

.method public release()V
    .registers 7

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v0, :cond_9

    monitor-exit v1

    .line 96
    return-void

    .line 99
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 101
    iget v4, p0, Lcom/android/server/InputContentUriTokenHandler;->mSourceUserId:I

    const/4 v5, 0x1

    .line 99
    invoke-interface {v0, v2, v3, v5, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_1c
    .catchall {:try_start_9 .. :try_end_17} :catchall_27

    .line 105
    const/4 v0, 0x0

    :try_start_18
    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_24

    :goto_1a
    monitor-exit v1

    .line 108
    return-void

    .line 102
    :catch_1c
    move-exception v0

    .line 103
    :try_start_1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    .line 105
    const/4 v0, 0x0

    :try_start_21
    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_1a

    .line 94
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0

    .line 104
    :catchall_27
    move-exception v0

    .line 105
    const/4 v2, 0x0

    :try_start_29
    iput-object v2, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 104
    throw v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_24
.end method

.method public take()V
    .registers 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/server/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v0, :cond_9

    monitor-exit v1

    .line 63
    return-void

    .line 67
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 68
    const-string/jumbo v2, "InputContentUriTokenHandler"

    .line 67
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_1d
    .catchall {:try_start_9 .. :try_end_16} :catchall_22

    .line 73
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/InputContentUriTokenHandler;->doTakeLocked(Landroid/os/IBinder;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_22

    monitor-exit v1

    .line 75
    return-void

    .line 69
    :catch_1d
    move-exception v0

    .line 70
    :try_start_1e
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_16

    .line 60
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method
