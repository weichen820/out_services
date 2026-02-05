.class final Lcom/android/server/PinnerService$PinnerHandler;
.super Landroid/os/Handler;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PinnerHandler"
.end annotation


# static fields
.field static final PIN_CAMERA_MSG:I = 0xfa0

.field static final PIN_ONSTART_MSG:I = 0xfa1


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V
    .registers 5

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 405
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 409
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 424
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 426
    :goto_8
    return-void

    .line 413
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/PinnerService;->-wrap0(Lcom/android/server/PinnerService;I)V

    goto :goto_8

    .line 419
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->-wrap1(Lcom/android/server/PinnerService;)V

    goto :goto_8

    .line 409
    nop

    :pswitch_data_18
    .packed-switch 0xfa0
        :pswitch_9
        :pswitch_11
    .end packed-switch
.end method
