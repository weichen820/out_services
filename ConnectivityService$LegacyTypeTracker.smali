.class Lcom/android/server/ConnectivityService$LegacyTypeTracker;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyTypeTracker"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final VDBG:Z


# instance fields
.field private final mTypeLists:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 3

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/util/ArrayList;

    .line 544
    iput-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    .line 546
    return-void
.end method

.method private maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V
    .registers 7

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    const-string/jumbo v1, " broadcast for type "

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    const-string/jumbo v1, " "

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    const-string/jumbo v1, " isDefaultNetwork="

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap25(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method private naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 656
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 657
    :goto_6
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_4b

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 656
    :cond_47
    const-string/jumbo v0, "null"

    goto :goto_6

    .line 659
    :cond_4b
    const-string/jumbo v1, "???/???"

    goto :goto_2e
.end method


# virtual methods
.method public add(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6

    .prologue
    .line 580
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 581
    return-void

    .line 585
    :cond_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    .line 586
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 587
    return-void

    .line 589
    :cond_12
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v1

    .line 590
    :try_start_15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_35

    monitor-exit v1

    .line 594
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, p2}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    .line 595
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    if-eqz v1, :cond_34

    .line 596
    :cond_28
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 597
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, p2, v1, p1}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 599
    :cond_34
    return-void

    .line 589
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addSupportedType(I)V
    .registers 5

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_27

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "legacy list for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "already initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_27
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, p1

    .line 554
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 664
    const-string/jumbo v0, "mLegacyTypeTracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 666
    const-string/jumbo v0, "Supported types:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v0, v1

    .line 667
    :goto_11
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_36

    .line 668
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 667
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 670
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 671
    const-string/jumbo v0, "Current state:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 673
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v2

    .line 674
    :goto_45
    :try_start_45
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v1, v0, :cond_94

    .line 675
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 674
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 676
    :cond_5d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_45 .. :try_end_90} :catchall_91

    goto :goto_65

    .line 673
    :catchall_91
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_94
    monitor-exit v2

    .line 681
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 682
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 683
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 684
    return-void
.end method

.method public getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 5

    .prologue
    .line 561
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v1

    .line 562
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    .line 563
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_25

    monitor-exit v1

    return-object v0

    :cond_22
    monitor-exit v1

    .line 566
    const/4 v0, 0x0

    return-object v0

    .line 561
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isTypeSupported(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 603
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v0, p1

    .line 604
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 605
    :cond_d
    return-void

    .line 607
    :cond_e
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 609
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v2

    .line 610
    :try_start_1b
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_6d

    move-result v3

    if-nez v3, :cond_23

    monitor-exit v2

    .line 611
    return-void

    :cond_23
    monitor-exit v2

    .line 615
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 617
    if-nez v0, :cond_2a

    if-eqz p3, :cond_32

    .line 618
    :cond_2a
    invoke-direct {p0, p2, v2, p1, p3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 619
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3, p2, v2, p1}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 622
    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6c

    if-eqz v0, :cond_6c

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Other network available for type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    const-string/jumbo v3, ", sending connected broadcast"

    .line 623
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap25(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 626
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 627
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0, v2, p1}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 629
    :cond_6c
    return-void

    .line 609
    :catchall_6d
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 5

    .prologue
    .line 634
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 635
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    :cond_c
    return-void
.end method

.method public update(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->-wrap0(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v4

    .line 643
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    move v0, v1

    .line 644
    :goto_e
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_3c

    .line 645
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v6, v2, v0

    .line 646
    if-eqz v6, :cond_38

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v3, v2

    .line 647
    :goto_1e
    if-eqz v3, :cond_3a

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_3a

    const/4 v2, 0x1

    .line 648
    :goto_27
    if-nez v2, :cond_2d

    if-eqz v3, :cond_35

    if-eqz v4, :cond_35

    .line 649
    :cond_2d
    invoke-direct {p0, p1, v5, v0, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 650
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, p1, v5, v0}, Lcom/android/server/ConnectivityService;->-wrap33(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 644
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_38
    move v3, v1

    .line 646
    goto :goto_1e

    :cond_3a
    move v2, v1

    .line 647
    goto :goto_27

    .line 653
    :cond_3c
    return-void
.end method
