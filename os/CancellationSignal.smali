.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    .prologue
    .line 150
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_a

    .line 152
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    .line 153
    :catch_8
    move-exception v0

    goto :goto_0

    .line 156
    :cond_a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_1
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 69
    return-void

    .line 71
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 73
    iget-object v1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 74
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2d

    monitor-exit p0

    .line 78
    if-eqz v1, :cond_17

    .line 79
    :try_start_14
    invoke-interface {v1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 81
    :cond_17
    if-eqz v0, :cond_24

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_24

    .line 82
    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_33

    .line 85
    :cond_24
    monitor-enter p0

    .line 86
    const/4 v0, 0x0

    :try_start_26
    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_30

    monitor-exit p0

    .line 90
    return-void

    .line 67
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :catchall_33
    move-exception v0

    .line 85
    monitor-enter p0

    .line 86
    const/4 v1, 0x0

    :try_start_36
    iput-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    .line 84
    throw v0

    .line 85
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    .line 136
    return-object v2

    .line 138
    :cond_8
    monitor-enter p0

    .line 139
    :try_start_9
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_1f

    .line 140
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 141
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1f

    .line 142
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 145
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    .line 138
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_1
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 44
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .registers 3

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_1
    invoke-direct {p0}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 112
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    if-ne v0, p1, :cond_a

    monitor-exit p0

    .line 113
    return-void

    .line 115
    :cond_a
    :try_start_a
    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 116
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_19

    if-eqz v0, :cond_12

    if-nez p1, :cond_14

    :cond_12
    monitor-exit p0

    .line 117
    return-void

    :cond_14
    monitor-exit p0

    .line 120
    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 121
    return-void

    .line 109
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public throwIfCanceled()V
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0

    .line 58
    :cond_c
    return-void
.end method
