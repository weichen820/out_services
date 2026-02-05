.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field flags:I

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 407
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 408
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 410
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 5

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 413
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 414
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 415
    iget v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    iput v0, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 416
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 435
    if-gez v0, :cond_f

    .line 436
    rsub-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    .line 438
    :cond_f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 442
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_35

    .line 443
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 444
    const/4 v0, 0x1

    .line 446
    :goto_21
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2d

    .line 447
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 449
    :cond_2d
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 454
    return v0

    :cond_35
    move v0, v1

    goto :goto_21
.end method

.method canHold(JJ)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 428
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v1, v2, p1

    if-ltz v1, :cond_e

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v2, p3

    if-gtz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method hasPackage(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 604
    :goto_8
    if-ge v1, v3, :cond_1e

    .line 605
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 606
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 607
    const/4 v0, 0x1

    return v0

    .line 604
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 610
    :cond_1e
    return v2
.end method

.method hasWakeups()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 614
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 615
    :goto_8
    if-ge v1, v3, :cond_1e

    .line 616
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 618
    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1a

    .line 619
    const/4 v0, 0x1

    return v0

    .line 615
    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 622
    :cond_1e
    return v2
.end method

.method remove(I)Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 574
    const-wide/16 v4, 0x0

    .line 575
    const-wide v2, 0x7fffffffffffffffL

    move v1, v0

    move v6, v0

    .line 576
    :goto_b
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 577
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 578
    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v8, p1, :cond_36

    .line 579
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 581
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_52

    .line 582
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v7}, Lcom/android/server/AlarmManagerService;->-set3(Lcom/android/server/AlarmManagerService;Z)Z

    move v0, v1

    move v1, v7

    :goto_33
    move v6, v1

    move v1, v0

    goto :goto_b

    .line 585
    :cond_36
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_3e

    .line 586
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 588
    :cond_3e
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v2

    if-gez v8, :cond_46

    .line 589
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 591
    :cond_46
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v6

    goto :goto_33

    .line 594
    :cond_4b
    if-eqz v6, :cond_51

    .line 596
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 597
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 599
    :cond_51
    return v6

    :cond_52
    move v0, v1

    move v1, v7

    goto :goto_33
.end method

.method remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .registers 16

    .prologue
    .line 458
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 463
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_6
    const/4 v6, 0x0

    .line 466
    const-wide/16 v4, 0x0

    .line 467
    const-wide v2, 0x7fffffffffffffffL

    .line 468
    const/4 v1, 0x0

    .line 469
    const/4 v0, 0x0

    move v10, v1

    move v1, v0

    move-wide v11, v2

    move v2, v10

    move v3, v6

    move-wide v6, v4

    move-wide v4, v11

    :goto_17
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_67

    .line 470
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 471
    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 472
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 473
    const/4 v3, 0x1

    .line 474
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_70

    .line 475
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/android/server/AlarmManagerService;->-set3(Lcom/android/server/AlarmManagerService;Z)Z

    move v0, v1

    move v1, v2

    move-wide v10, v4

    move-wide v4, v6

    move v6, v3

    move-wide v2, v10

    :goto_43
    move v10, v1

    move v1, v0

    move-wide v11, v2

    move v2, v10

    move v3, v6

    move-wide v6, v4

    move-wide v4, v11

    goto :goto_17

    .line 478
    :cond_4b
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v8, v8, v6

    if-lez v8, :cond_53

    .line 479
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 481
    :cond_53
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_5b

    .line 482
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 484
    :cond_5b
    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v2, v0

    .line 485
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v2

    move-wide v10, v4

    move-wide v4, v6

    move v6, v3

    move-wide v2, v10

    goto :goto_43

    .line 488
    :cond_67
    if-eqz v3, :cond_6f

    .line 490
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 491
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 492
    iput v2, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 494
    :cond_6f
    return v3

    :cond_70
    move v0, v1

    move v1, v2

    move-wide v10, v4

    move-wide v4, v6

    move v6, v3

    move-wide v2, v10

    goto :goto_43
.end method

.method remove(Ljava/lang/String;)Z
    .registers 14

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 498
    if-nez p1, :cond_5

    .line 503
    return v1

    .line 506
    :cond_5
    const-wide/16 v2, 0x0

    .line 507
    const-wide v4, 0x7fffffffffffffffL

    .line 509
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v7, v1

    :goto_16
    if-ltz v8, :cond_51

    .line 510
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 511
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 512
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_5a

    .line 515
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v6}, Lcom/android/server/AlarmManagerService;->-set3(Lcom/android/server/AlarmManagerService;Z)Z

    move v0, v1

    move v1, v6

    .line 509
    :goto_36
    add-int/lit8 v7, v8, -0x1

    move v8, v7

    move v7, v1

    move v1, v0

    goto :goto_16

    .line 518
    :cond_3c
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v9, v10, v2

    if-lez v9, :cond_44

    .line 519
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 521
    :cond_44
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v9, v10, v4

    if-gez v9, :cond_4c

    .line 522
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 524
    :cond_4c
    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    or-int/2addr v0, v1

    move v1, v7

    goto :goto_36

    .line 527
    :cond_51
    if-eqz v7, :cond_59

    .line 529
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 530
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 531
    iput v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 533
    :cond_59
    return v7

    :cond_5a
    move v0, v1

    move v1, v6

    goto :goto_36
.end method

.method removeForStopped(I)Z
    .registers 14

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 538
    const-wide/16 v4, 0x0

    .line 539
    const-wide v2, 0x7fffffffffffffffL

    .line 541
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v7, v1

    :goto_13
    if-ltz v8, :cond_5d

    .line 542
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 544
    :try_start_1d
    iget v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v9, p1, :cond_44

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    .line 545
    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 544
    invoke-interface {v9, p1, v10}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 546
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_59

    .line 548
    :try_start_32
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_69

    .line 549
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/android/server/AlarmManagerService;->-set3(Lcom/android/server/AlarmManagerService;Z)Z
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3c} :catch_66

    move v0, v1

    move v1, v6

    .line 541
    :goto_3e
    add-int/lit8 v7, v8, -0x1

    move v8, v7

    move v7, v1

    move v1, v0

    goto :goto_13

    .line 552
    :cond_44
    :try_start_44
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v9, v10, v4

    if-lez v9, :cond_4c

    .line 553
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 555
    :cond_4c
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v9, v10, v2

    if-gez v9, :cond_54

    .line 556
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 558
    :cond_54
    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_56} :catch_59

    or-int/2addr v0, v1

    move v1, v7

    goto :goto_3e

    .line 560
    :catch_59
    move-exception v0

    :goto_5a
    move v0, v1

    move v1, v7

    goto :goto_3e

    .line 563
    :cond_5d
    if-eqz v7, :cond_65

    .line 565
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 566
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 567
    iput v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    .line 569
    :cond_65
    return v7

    .line 560
    :catch_66
    move-exception v0

    move v7, v6

    goto :goto_5a

    :cond_69
    move v0, v1

    move v1, v6

    goto :goto_3e
.end method

.method size()I
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 628
    const-string/jumbo v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string/jumbo v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 631
    const-string/jumbo v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 632
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    if-eqz v1, :cond_4e

    .line 633
    const-string/jumbo v1, " flgs=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget v1, p0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_4e
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
