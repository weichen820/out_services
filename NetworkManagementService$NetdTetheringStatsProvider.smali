.class Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1874
    if-eq p1, v6, :cond_e

    .line 1875
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1

    .line 1880
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string/jumbo v2, "bandwidth"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "gettetherstats"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_23} :catch_3d

    move-result-object v1

    .line 1884
    new-instance v2, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1885
    array-length v3, v1

    :goto_2e
    if-ge v0, v3, :cond_c5

    aget-object v4, v1, v0

    .line 1886
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_43

    .line 1885
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1881
    :catch_3d
    move-exception v0

    .line 1882
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1889
    :cond_43
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1891
    :try_start_4c
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1892
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1894
    new-instance v7, Landroid/net/NetworkStats$Entry;

    invoke-direct {v7}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1895
    iput-object v6, v7, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1896
    const/4 v6, -0x5

    iput v6, v7, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1897
    const/4 v6, 0x0

    iput v6, v7, Landroid/net/NetworkStats$Entry;->set:I

    .line 1898
    const/4 v6, 0x0

    iput v6, v7, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1899
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1900
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1901
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1902
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1903
    invoke-virtual {v2, v7}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_8e
    .catch Ljava/util/NoSuchElementException; {:try_start_4c .. :try_end_8e} :catch_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_8e} :catch_aa

    goto :goto_3a

    .line 1904
    :catch_8f
    move-exception v0

    .line 1905
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem parsing tethering stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1906
    :catch_aa
    move-exception v0

    .line 1907
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem parsing tethering stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1910
    :cond_c5
    return-object v2
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 1916
    return-void
.end method
