.class final Lcom/android/server/DeviceIdleController$MotionListener;
.super Landroid/hardware/TriggerEventListener;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotionListener"
.end annotation


# instance fields
.field active:Z

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 3

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 412
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$MotionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 435
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 428
    :try_start_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get12(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 430
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->motionLocked()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    .line 432
    return-void

    .line 427
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 420
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 421
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->motionLocked()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 423
    return-void

    .line 419
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerLocked()Z
    .registers 5

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 440
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get12(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 445
    :goto_23
    if-eqz v0, :cond_41

    .line 446
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 450
    :goto_28
    return v0

    .line 442
    :cond_29
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get12(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    .line 442
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    goto :goto_23

    .line 448
    :cond_41
    const-string/jumbo v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to register for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public unregisterLocked()V
    .registers 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 455
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get12(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->-get10(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 459
    :goto_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 460
    return-void

    .line 457
    :cond_26
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get12(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get9(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_22
.end method
