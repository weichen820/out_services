.class Lcom/android/server/UiModeManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    .line 131
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 139
    return-void

    .line 142
    :cond_9
    const-string/jumbo v0, "enableFlags"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 143
    const-string/jumbo v1, "disableFlags"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/UiModeManagerService;->-wrap0(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_27

    monitor-exit v2

    .line 147
    return-void

    .line 144
    :catchall_27
    move-exception v0

    monitor-exit v2

    throw v0
.end method
