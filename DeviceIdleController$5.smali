.class Lcom/android/server/DeviceIdleController$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    .line 388
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/16 v4, 0x8

    .line 393
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 394
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 395
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 394
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    :goto_1e
    return-void

    .line 397
    :cond_1f
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 398
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 397
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1e
.end method
