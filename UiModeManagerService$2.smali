.class Lcom/android/server/UiModeManagerService$2;
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
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 150
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 153
    const-string/jumbo v0, "android.intent.extra.DOCK_STATE"

    .line 154
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, v0}, Lcom/android/server/UiModeManagerService;->-wrap2(Lcom/android/server/UiModeManagerService;I)V

    .line 156
    return-void
.end method
