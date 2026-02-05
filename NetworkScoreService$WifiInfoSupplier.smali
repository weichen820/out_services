.class Lcom/android/server/NetworkScoreService$WifiInfoSupplier;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiInfoSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier",
        "<",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->mContext:Landroid/content/Context;

    .line 529
    return-void
.end method


# virtual methods
.method public get()Landroid/net/wifi/WifiInfo;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 534
    if-eqz v0, :cond_12

    .line 535
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0

    .line 537
    :cond_12
    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "WifiManager is null, failed to return the WifiInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;->get()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method
