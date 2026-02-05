.class final Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
.super Landroid/hardware/TriggerEventListener;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraLiftTriggerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 6

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get7(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 526
    return-void

    .line 528
    :cond_9
    iget-object v0, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get9(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_70

    .line 529
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 530
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v0

    .line 531
    const-string/jumbo v1, "sensor"

    .line 530
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 533
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get15(Lcom/android/server/GestureLauncherService;)Landroid/view/WindowManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    .line 534
    iget-object v2, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v2}, Lcom/android/server/GestureLauncherService;->-get12(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    .line 541
    if-nez v1, :cond_45

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_5a

    .line 542
    :cond_45
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v2, 0x1

    .line 543
    const/4 v3, 0x2

    .line 542
    invoke-virtual {v1, v2, v3}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 544
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3dd

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 550
    :cond_5a
    iget-object v1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 551
    iget-object v2, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v2}, Lcom/android/server/GestureLauncherService;->-get8(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v3}, Lcom/android/server/GestureLauncherService;->-get9(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v3

    .line 550
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/GestureLauncherService;->-set4(Lcom/android/server/GestureLauncherService;Z)Z

    .line 555
    return-void

    .line 557
    :cond_70
    return-void
.end method
