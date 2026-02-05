.class Lcom/android/server/DeviceIdleController$1;
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
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    .line 331
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 335
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 353
    :cond_13
    :goto_13
    return-void

    .line 333
    :cond_14
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 338
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 339
    :try_start_20
    const-string/jumbo v2, "plugged"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 340
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz v2, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    invoke-virtual {v3, v0}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_56

    monitor-exit v1

    goto :goto_13

    .line 333
    :cond_32
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 344
    const-string/jumbo v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 348
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    goto :goto_13

    .line 338
    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method
