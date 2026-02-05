.class Landroid/net/dhcp/DhcpClient$StoppedState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 596
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 599
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_80

    .line 625
    return v2

    .line 601
    :sswitch_8
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 602
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get25(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 606
    :goto_1b
    return v1

    .line 604
    :cond_1c
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1b

    .line 608
    :sswitch_28
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_54

    move v0, v1

    :goto_2f
    iput-boolean v0, v3, Landroid/net/dhcp/DhcpClient;->mRapidCommit:Z

    .line 609
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_38

    move v2, v1

    :cond_38
    iput-boolean v2, v0, Landroid/net/dhcp/DhcpClient;->mDiscoverSent:Z

    .line 610
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 611
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mRapidCommit:Z

    if-eqz v0, :cond_56

    .line 612
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get16(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 623
    :goto_53
    return v1

    :cond_54
    move v0, v2

    .line 608
    goto :goto_2f

    .line 614
    :cond_56
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get25(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_53

    .line 617
    :cond_62
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-boolean v0, v0, Landroid/net/dhcp/DhcpClient;->mRapidCommit:Z

    if-eqz v0, :cond_74

    .line 618
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get5(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_53

    .line 620
    :cond_74
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$StoppedState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_53

    .line 599
    :sswitch_data_80
    .sparse-switch
        0x30001 -> :sswitch_8
        0x3000a -> :sswitch_28
    .end sparse-switch
.end method
