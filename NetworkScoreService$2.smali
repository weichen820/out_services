.class Lcom/android/server/NetworkScoreService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$2;->this$0:Lcom/android/server/NetworkScoreService;

    .line 117
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 122
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$2;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v0}, Lcom/android/server/NetworkScoreService;->-wrap1(Lcom/android/server/NetworkScoreService;)V

    .line 124
    :cond_12
    return-void
.end method
