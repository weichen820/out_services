.class Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrentNetworkScoreCacheFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/UnaryOperator",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/net/ScoredNetwork;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCurrentNetwork:Landroid/net/NetworkKey;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Landroid/net/wifi/WifiInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    .line 579
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 581
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 584
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 587
    :cond_f
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    .line 588
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ScoredNetwork;

    .line 589
    iget-object v2, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    invoke-virtual {v2, v3}, Landroid/net/NetworkKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 590
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 587
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 594
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
