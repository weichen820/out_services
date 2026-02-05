.class Lcom/android/server/WiredAccessoryManager$1;
.super Landroid/os/Handler;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 228
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 241
    :goto_5
    return-void

    .line 233
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/WiredAccessoryManager;->-wrap1(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get4(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    .line 237
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-wrap0(Lcom/android/server/WiredAccessoryManager;)V

    .line 238
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get4(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    .line 231
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1d
    .end packed-switch
.end method
