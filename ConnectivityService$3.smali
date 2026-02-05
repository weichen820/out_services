.class Lcom/android/server/ConnectivityService$3;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    .line 3937
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/16 v2, -0x2710

    .line 3940
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3941
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3942
    if-ne v1, v2, :cond_10

    return-void

    .line 3944
    :cond_10
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3945
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;I)V

    .line 3955
    :cond_1e
    :goto_1e
    return-void

    .line 3946
    :cond_1f
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3947
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->-wrap30(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1e

    .line 3948
    :cond_2e
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3949
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->-wrap27(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1e

    .line 3950
    :cond_3d
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3951
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->-wrap28(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1e

    .line 3952
    :cond_4c
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3953
    iget-object v0, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->-wrap31(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1e
.end method
