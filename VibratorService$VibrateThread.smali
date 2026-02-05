.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private mForceStop:Z

.field private final mUid:I

.field private final mUsageHint:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V
    .registers 7

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 797
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 798
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 799
    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    .line 800
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get4(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    .line 801
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get4(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 802
    return-void
.end method

.method private delayLocked(J)J
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 806
    cmp-long v0, p1, v6

    if-lez v0, :cond_24

    .line 807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long v2, p1, v0

    move-wide v0, p1

    .line 810
    :goto_d
    :try_start_d
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_17

    .line 813
    :goto_10
    iget-boolean v4, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v4, :cond_19

    .line 818
    :cond_14
    sub-long v0, p1, v0

    return-wide v0

    .line 812
    :catch_17
    move-exception v4

    goto :goto_10

    .line 816
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 817
    cmp-long v4, v0, v6

    if-lez v4, :cond_14

    goto :goto_d

    .line 820
    :cond_24
    return-wide v6
.end method

.method private getTotalOnDuration([J[III)J
    .registers 11

    .prologue
    .line 901
    const-wide/16 v0, 0x0

    move v2, p3

    .line 902
    :cond_3
    aget v3, p2, v2

    if-eqz v3, :cond_17

    .line 903
    add-int/lit8 v3, v2, 0x1

    aget-wide v4, p1, v2

    add-long/2addr v0, v4

    .line 904
    array-length v2, p1

    if-lt v3, v2, :cond_18

    .line 905
    if-ltz p4, :cond_17

    move v2, p4

    .line 911
    :goto_12
    if-ne v2, p3, :cond_3

    .line 912
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 915
    :cond_17
    return-wide v0

    :cond_18
    move v2, v3

    goto :goto_12
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 888
    monitor-enter p0

    .line 889
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 890
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    .line 892
    return-void

    .line 888
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playWaveform()Z
    .registers 15

    .prologue
    .line 842
    monitor-enter p0

    .line 843
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v9

    .line 844
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v10

    .line 845
    array-length v11, v9

    .line 846
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v8

    .line 848
    const/4 v7, 0x0

    .line 849
    const-wide/16 v0, 0x0

    move v2, v7

    .line 850
    :goto_18
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v3, :cond_58

    .line 851
    if-ge v2, v11, :cond_56

    .line 852
    aget v4, v10, v2

    .line 853
    add-int/lit8 v7, v2, 0x1

    aget-wide v12, v9, v2

    .line 854
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gtz v2, :cond_2c

    move v2, v7

    .line 855
    goto :goto_18

    .line 857
    :cond_2c
    if-eqz v4, :cond_44

    .line 858
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4d

    .line 866
    add-int/lit8 v0, v7, -0x1

    invoke-direct {p0, v9, v10, v0, v8}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v2

    .line 867
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v6, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JIII)V

    move-wide v0, v2

    .line 873
    :cond_44
    :goto_44
    invoke-direct {p0, v12, v13}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v2

    .line 874
    if-eqz v4, :cond_60

    .line 875
    sub-long/2addr v0, v2

    move v2, v7

    goto :goto_18

    .line 869
    :cond_4d
    iget-object v2, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2, v4}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;I)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_44

    .line 842
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    .line 877
    :cond_56
    if-gez v8, :cond_5e

    .line 883
    :cond_58
    :try_start_58
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_53

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :cond_5e
    move v2, v8

    .line 880
    goto :goto_18

    :cond_60
    move v2, v7

    goto :goto_18
.end method

.method public run()V
    .registers 3

    .prologue
    .line 824
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 825
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 827
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 828
    if-eqz v0, :cond_18

    .line 829
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v0}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_22

    .line 832
    :cond_18
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 834
    return-void

    .line 831
    :catchall_22
    move-exception v0

    .line 832
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 831
    throw v0
.end method
