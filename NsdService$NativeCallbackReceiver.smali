.class Lcom/android/server/NsdService$NativeCallbackReceiver;
.super Ljava/lang/Object;
.source "NsdService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeCallbackReceiver"
.end annotation


# instance fields
.field private final connected:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;)V
    .registers 4

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->connected:Ljava/util/concurrent/CountDownLatch;

    .line 653
    return-void
.end method


# virtual methods
.method public awaitConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->connected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 658
    return-void
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 3

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->connected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 663
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 674
    new-instance v0, Lcom/android/server/NsdService$NativeEvent;

    iget-object v1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/NsdService$NativeEvent;-><init>(Lcom/android/server/NsdService;ILjava/lang/String;[Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/NsdService$NativeCallbackReceiver;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->-get5(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;

    move-result-object v1

    const v2, 0x6001a

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 676
    const/4 v0, 0x1

    return v0
.end method
