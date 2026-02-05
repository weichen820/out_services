.class Lcom/android/server/ConnectivityService$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    .line 1469
    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1476
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .registers 3

    .prologue
    .line 1480
    if-eqz p1, :cond_11

    .line 1481
    const-string/jumbo v0, "onRestrictBackgroundChanged(true): disabling tethering"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap25(Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 1484
    :cond_11
    return-void
.end method

.method public onUidPoliciesChanged(II)V
    .registers 3

    .prologue
    .line 1487
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 3

    .prologue
    .line 1473
    return-void
.end method
