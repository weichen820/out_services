.class Landroid/net/ip/IpManager$1;
.super Ljava/lang/Object;
.source "IpManager.java"

# interfaces
.implements Lcom/android/server/net/NetlinkTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;Landroid/net/INetd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/ip/IpManager$1;->this$0:Landroid/net/ip/IpManager;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Landroid/net/ip/IpManager$1;->this$0:Landroid/net/ip/IpManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 632
    return-void
.end method
