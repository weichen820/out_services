.class Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpHaveLeaseState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 898
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .prologue
    .line 915
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get20(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 916
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get17(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 917
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get9(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 918
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    .line 922
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get1(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x30007

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 923
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 901
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 908
    const/4 v0, 0x0

    return v0

    .line 903
    :pswitch_7
    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "Lease expired!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap12(Landroid/net/dhcp/DhcpClient;)V

    .line 905
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 906
    const/4 v0, 0x1

    return v0

    .line 901
    :pswitch_data_22
    .packed-switch 0x3006a
        :pswitch_7
    .end packed-switch
.end method
