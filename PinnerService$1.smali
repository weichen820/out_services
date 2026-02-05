.class Lcom/android/server/PinnerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/PinnerService$1;->this$0:Lcom/android/server/PinnerService;

    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    if-ne v0, v1, :cond_1e

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 83
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/server/PinnerService$1;->this$0:Lcom/android/server/PinnerService;

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;)V

    .line 86
    :cond_1e
    return-void
.end method
