.class final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method

.method private trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V
    .registers 20

    .prologue
    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v2}, Lcom/android/server/GestureLauncherService;->-get1(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v2

    sub-long v2, v10, v2

    .line 480
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 482
    long-to-double v6, v2

    const/4 v5, 0x0

    aget v5, v4, v5

    float-to-double v8, v5

    mul-double/2addr v6, v8

    double-to-long v12, v6

    .line 483
    long-to-double v2, v2

    const/4 v5, 0x1

    aget v5, v4, v5

    float-to-double v6, v5

    mul-double/2addr v2, v6

    double-to-long v14, v2

    .line 484
    const/4 v2, 0x2

    aget v2, v4, v2

    float-to-int v9, v2

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v2}, Lcom/android/server/GestureLauncherService;->-get0(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v2

    sub-long v2, v10, v2

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get2(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v4

    sub-long v4, v12, v4

    .line 489
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->-get3(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v6

    sub-long v6, v14, v6

    .line 490
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v8}, Lcom/android/server/GestureLauncherService;->-get4(Lcom/android/server/GestureLauncherService;)I

    move-result v8

    sub-int v8, v9, v8

    .line 494
    const-wide/16 v16, 0x0

    cmp-long v16, v2, v16

    if-ltz v16, :cond_58

    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-gez v16, :cond_59

    .line 496
    :cond_58
    return-void

    .line 494
    :cond_59
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-ltz v16, :cond_58

    .line 505
    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeCameraGestureTriggered(JJJI)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v2, v10, v11}, Lcom/android/server/GestureLauncherService;->-set0(Lcom/android/server/GestureLauncherService;J)J

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v2, v12, v13}, Lcom/android/server/GestureLauncherService;->-set1(Lcom/android/server/GestureLauncherService;J)J

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v2, v14, v15}, Lcom/android/server/GestureLauncherService;->-set2(Lcom/android/server/GestureLauncherService;J)J

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v2, v9}, Lcom/android/server/GestureLauncherService;->-set3(Lcom/android/server/GestureLauncherService;I)I

    .line 515
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 470
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get5(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 450
    return-void

    .line 452
    :cond_9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get6(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    .line 458
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x1

    .line 459
    const/4 v2, 0x0

    .line 458
    invoke-virtual {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 460
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get11(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 461
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;->trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V

    .line 463
    :cond_2b
    return-void

    .line 465
    :cond_2c
    return-void
.end method
