.class Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilteringCacheUpdatingConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer",
        "<",
        "Landroid/net/INetworkScoreCache;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetworkType:I

.field private mScanResultsFilter:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScoredNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;I",
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;>;",
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    .line 465
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScoredNetworkList:Ljava/util/List;

    .line 466
    iput p3, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mNetworkType:I

    .line 467
    iput-object p4, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 468
    iput-object p5, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 469
    return-void
.end method

.method static create(Landroid/content/Context;Ljava/util/List;I)Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;I)",
            "Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 455
    new-instance v0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V

    return-object v0
.end method

.method private filterScores(Ljava/util/List;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    packed-switch p2, :pswitch_data_56

    .line 515
    const-string/jumbo v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown filter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-object p1

    .line 498
    :pswitch_1e
    return-object p1

    .line 501
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    if-nez v0, :cond_31

    .line 503
    new-instance v0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;

    new-instance v1, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;-><init>(Ljava/util/function/Supplier;)V

    .line 502
    iput-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 505
    :cond_31
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 508
    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    if-nez v0, :cond_4c

    .line 509
    new-instance v0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;

    .line 510
    new-instance v1, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-direct {v0, v1}, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 512
    :cond_4c
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 496
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method public accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 475
    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 480
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScoredNetworkList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->filterScores(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 482
    invoke-interface {p1, v0}, Landroid/net/INetworkScoreCache;->updateScores(Ljava/util/List;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    .line 489
    :cond_1a
    :goto_1a
    return-void

    .line 484
    :catch_1b
    move-exception v0

    .line 485
    invoke-static {}, Lcom/android/server/NetworkScoreService;->-get1()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 486
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to update scores of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 471
    check-cast p1, Landroid/net/INetworkScoreCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V

    return-void
.end method
