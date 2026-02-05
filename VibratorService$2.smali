.class Lcom/android/server/VibratorService$2;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    .line 919
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 922
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 923
    iget-object v0, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 929
    :try_start_14
    iget-object v0, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 930
    iget-object v0, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->isSystemHapticFeedback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 929
    if-eqz v0, :cond_2f

    .line 931
    iget-object v0, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit v1

    .line 935
    :cond_30
    return-void

    .line 923
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method
