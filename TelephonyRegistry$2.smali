.class Lcom/android/server/TelephonyRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 252
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 258
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    :cond_29
    :goto_29
    return-void

    .line 261
    :cond_2a
    const-string/jumbo v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 262
    new-instance v0, Ljava/lang/Integer;

    .line 263
    const-string/jumbo v1, "subscription"

    .line 264
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 262
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 265
    const-string/jumbo v1, "slot"

    .line 266
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 265
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->-wrap0(Lcom/android/server/TelephonyRegistry;I)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 274
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->-get1(Lcom/android/server/TelephonyRegistry;)I

    move-result v2

    if-eq v1, v2, :cond_29

    .line 275
    :cond_74
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_29
.end method
