.class public abstract Landroid/support/v4/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/JobIntentService$CommandProcessor;,
        Landroid/support/v4/app/JobIntentService$CompatJobEngine;,
        Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;,
        Landroid/support/v4/app/JobIntentService$CompatWorkItem;,
        Landroid/support/v4/app/JobIntentService$GenericWorkItem;,
        Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;,
        Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;,
        Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->sLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 98
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mInterruptIfStopped:Z

    .line 99
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mStopped:Z

    .line 100
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mDestroyed:Z

    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 421
    :goto_13
    return-void

    .line 419
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_13
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 516
    if-nez p3, :cond_b

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "work must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_b
    sget-object v1, Landroid/support/v4/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    const/4 v0, 0x1

    :try_start_f
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    .line 521
    invoke-virtual {v0, p2}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 522
    invoke-virtual {v0, p3}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1b

    monitor-exit v1

    .line 524
    return-void

    .line 519
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .registers 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 500
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Landroid/support/v4/app/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    .line 501
    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    .registers 6

    .prologue
    .line 528
    sget-object v0, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    .line 529
    if-nez v0, :cond_25

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_26

    .line 531
    if-nez p2, :cond_1b

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t be here without a job id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_1b
    new-instance v0, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 538
    :goto_20
    sget-object v1, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_25
    return-object v0

    .line 536
    :cond_26
    new-instance v0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_20
.end method


# virtual methods
.method dequeueWork()Landroid/support/v4/app/JobIntentService$GenericWorkItem;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_c

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$CompatJobEngine;->dequeueWork()Landroid/support/v4/app/JobIntentService$GenericWorkItem;

    move-result-object v0

    return-object v0

    .line 641
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 642
    :try_start_f
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 643
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/JobIntentService$GenericWorkItem;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_24

    monitor-exit v1

    return-object v0

    :cond_22
    monitor-exit v1

    .line 645
    return-object v2

    .line 641
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method doStopCurrentWork()Z
    .registers 3

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    if-eqz v0, :cond_b

    .line 599
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    iget-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 601
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mStopped:Z

    .line 602
    invoke-virtual {p0}, Landroid/support/v4/app/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .registers 5

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    if-nez v0, :cond_20

    .line 607
    new-instance v0, Landroid/support/v4/app/JobIntentService$CommandProcessor;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$CommandProcessor;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    .line 608
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    .line 609
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    .line 612
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 614
    :cond_20
    return-void
.end method

.method public isStopped()Z
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_c

    .line 465
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 467
    return-object v0

    .line 469
    :cond_c
    return-object v1
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 425
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_15

    .line 428
    new-instance v0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    .line 429
    iput-object v3, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    .line 435
    :goto_14
    return-void

    .line 431
    :cond_15
    iput-object v3, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    .line 432
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    invoke-static {p0, v0, v2, v2}, Landroid/support/v4/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    goto :goto_14
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 476
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 477
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 478
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mDestroyed:Z

    .line 479
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 482
    :cond_13
    return-void

    .line 477
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    .line 444
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 446
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 447
    :try_start_c
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/v4/app/JobIntentService$CompatWorkItem;

    if-eqz p1, :cond_1f

    :goto_12
    invoke-direct {v2, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$CompatWorkItem;-><init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/JobIntentService;->ensureProcessorRunningLocked(Z)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_25

    monitor-exit v1

    .line 451
    const/4 v0, 0x3

    return v0

    .line 447
    :cond_1f
    :try_start_1f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_12

    .line 446
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    .line 454
    :cond_28
    const/4 v0, 0x2

    return v0
.end method

.method public onStopCurrentWork()Z
    .registers 2

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .registers 3

    .prologue
    .line 617
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 618
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 619
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    .line 628
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/JobIntentService;->ensureProcessorRunningLocked(Z)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_26

    :cond_1a
    :goto_1a
    monitor-exit v1

    .line 635
    :cond_1b
    return-void

    .line 630
    :cond_1c
    :try_start_1c
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mDestroyed:Z

    if-nez v0, :cond_1a

    .line 631
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    goto :goto_1a

    .line 618
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInterruptIfStopped(Z)V
    .registers 2

    .prologue
    .line 571
    iput-boolean p1, p0, Landroid/support/v4/app/JobIntentService;->mInterruptIfStopped:Z

    .line 572
    return-void
.end method
