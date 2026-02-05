.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "MountServiceIdler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountServiceIdler$1;
    }
.end annotation


# static fields
.field private static MOUNT_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MountServiceIdler"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/MountServiceIdler;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/MountServiceIdler;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-class v2, Lcom/android/server/MountServiceIdler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    .line 37
    const/16 v0, 0x328

    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 95
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 97
    invoke-static {}, Lcom/android/server/MountServiceIdler;->tomorrowMidnight()Ljava/util/Calendar;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 100
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v4, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v5, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v1, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 101
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 102
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 104
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 105
    return-void
.end method

.method private static tomorrowMidnight()Ljava/util/Calendar;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 62
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_22

    .line 69
    :goto_8
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 70
    sget-object v1, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 71
    if-eqz v1, :cond_1a

    .line 72
    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v2

    .line 73
    const/4 v3, 0x1

    :try_start_12
    iput-boolean v3, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_1d

    monitor-exit v2

    .line 75
    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 77
    :cond_1a
    if-eqz v1, :cond_20

    :goto_1c
    return v0

    .line 72
    :catchall_1d
    move-exception v0

    monitor-exit v2

    throw v0

    .line 77
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c

    .line 63
    :catch_22
    move-exception v1

    goto :goto_8
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v0

    .line 86
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    monitor-exit v0

    .line 88
    return v2

    .line 85
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method
