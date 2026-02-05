.class Lcom/android/server/NetworkTimeUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    .line 252
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 259
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->-set1(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 263
    :cond_16
    :goto_16
    return-void

    .line 260
    :cond_17
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 261
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->-set2(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_16
.end method
