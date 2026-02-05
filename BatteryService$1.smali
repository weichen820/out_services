.class Lcom/android/server/BatteryService$1;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    .line 182
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5

    .prologue
    .line 185
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    .line 186
    :goto_11
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_18
    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    move-result v2

    if-eq v2, v0, :cond_25

    .line 188
    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v0}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;I)I
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_29

    :cond_25
    monitor-exit v1

    .line 191
    return-void

    .line 185
    :cond_27
    const/4 v0, 0x0

    goto :goto_11

    .line 186
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method
