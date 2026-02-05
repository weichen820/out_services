.class Lcom/android/server/MmsServiceBroker$1;
.super Landroid/os/Handler;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$1;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 88
    const-string/jumbo v0, "MmsServiceBroker"

    const-string/jumbo v1, "Unknown message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :pswitch_e
    return-void

    .line 82
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method
