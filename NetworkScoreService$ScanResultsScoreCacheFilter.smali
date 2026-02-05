.class Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;
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
    name = "ScanResultsScoreCacheFilter"
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
.field private final mScanResultKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 614
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 615
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    .line 616
    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v3, :cond_2d

    .line 617
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 618
    invoke-static {v1}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_29

    .line 620
    iget-object v4, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_29
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_16

    .line 623
    :cond_2d
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 625
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .registers 7
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
    .line 627
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 628
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 631
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    .line 633
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ScoredNetwork;

    .line 634
    iget-object v3, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    iget-object v4, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 635
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 639
    :cond_37
    return-object v2
.end method
