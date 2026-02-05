.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScoreService$1;,
        Lcom/android/server/NetworkScoreService$2;,
        Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;,
        Lcom/android/server/NetworkScoreService$DispatchingContentObserver;,
        Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;,
        Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;,
        Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;,
        Lcom/android/server/NetworkScoreService$ScanResultsSupplier;,
        Lcom/android/server/NetworkScoreService$ScoringServiceConnection;,
        Lcom/android/server/NetworkScoreService$ServiceHandler;,
        Lcom/android/server/NetworkScoreService$WifiInfoSupplier;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkScoreService"

.field private static final VERBOSE:Z


# instance fields
.field private final mContentObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

.field private mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageMonitorLock"
    .end annotation
.end field

.field private final mPackageMonitorLock:Ljava/lang/Object;

.field private final mScoreCaches:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mScoreCaches"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mServiceConnProducer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServiceConnectionLock"
    .end annotation
.end field

.field private final mServiceConnectionLock:Ljava/lang/Object;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -com_android_server_NetworkScoreService-mthref-0(Landroid/net/NetworkScorerAppData;)Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
    .registers 2

    .prologue
    .line 239
    new-instance v0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;-><init>(Landroid/net/NetworkScorerAppData;)V

    return-object v0
.end method

.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/NetworkScoreService;)Lcom/android/server/NetworkScorerAppManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/NetworkScoreService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NetworkScoreService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "NetworkScoreService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_d
    sput-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 85
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "NetworkScoreService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    :cond_1b
    sput-boolean v1, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    .line 82
    return-void

    :cond_1e
    move v0, v1

    .line 84
    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 238
    new-instance v0, Lcom/android/server/NetworkScorerAppManager;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;->$INST$0:Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;

    .line 239
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 238
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V

    .line 240
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/NetworkScorerAppManager;",
            "Ljava/util/function/Function",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/android/server/NetworkScoreService$1;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$1;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/android/server/NetworkScoreService$2;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$2;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 247
    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 248
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 249
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 252
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v5, v4

    .line 251
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 254
    new-instance v0, Lcom/android/server/NetworkScoreService$ServiceHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/server/NetworkScoreService$ServiceHandler;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    .line 255
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.location.MODE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 257
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 258
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    new-instance v0, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mContentObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 260
    iput-object p3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    .line 261
    return-void
.end method

.method private bindToScoringServiceIfNeeded()V
    .registers 3

    .prologue
    .line 338
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "bindToScoringServiceIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_d
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 340
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    .line 341
    return-void
.end method

.method private bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V
    .registers 5

    .prologue
    .line 351
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindToScoringServiceIfNeeded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_25
    if-eqz p1, :cond_59

    .line 353
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_3f

    .line 356
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkScorerAppData;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 355
    if-eqz v0, :cond_3f

    .line 357
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    .line 361
    :cond_3f
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-nez v0, :cond_4d

    .line 362
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 366
    :cond_4d
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->bind(Landroid/content/Context;)V
    :try_end_54
    .catchall {:try_start_2a .. :try_end_54} :catchall_56

    monitor-exit v1

    .line 371
    :goto_55
    return-void

    .line 353
    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0

    .line 369
    :cond_59
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    goto :goto_55
.end method

.method private canCallerRequestScores()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 645
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.REQUEST_NETWORK_SCORES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private canCallerScoreNetworks()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 650
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SCORE_NETWORKS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private clearInternal()V
    .registers 3

    .prologue
    .line 770
    new-instance v0, Lcom/android/server/NetworkScoreService$3;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$3;-><init>(Lcom/android/server/NetworkScoreService;)V

    .line 781
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCacheLists()Ljava/util/Collection;

    move-result-object v1

    .line 770
    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    .line 782
    return-void
.end method

.method private getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 922
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 923
    :try_start_4
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_10

    .line 924
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_10
    monitor-exit v1

    .line 927
    return-object v2

    .line 922
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScoreCacheLists()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v1

    .line 899
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-object v0

    .line 898
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCallerSystemProcess(I)Z
    .registers 3

    .prologue
    .line 697
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private refreshBinding()V
    .registers 3

    .prologue
    .line 281
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "refreshBinding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_d
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->updateState()V

    .line 284
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->migrateNetworkScorerAppSettingIfNeeded()V

    .line 285
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageMonitorIfNeeded()V

    .line 286
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded()V

    .line 287
    return-void
.end method

.method private registerPackageMonitorIfNeeded()V
    .registers 7

    .prologue
    .line 307
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "registerPackageMonitorIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_d
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_16
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    if-eqz v2, :cond_56

    if-eqz v0, :cond_2c

    .line 312
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v2

    .line 313
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v3, v3, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 311
    if-eqz v2, :cond_56

    .line 314
    :cond_2c
    sget-boolean v2, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v2, :cond_4e

    .line 315
    const-string/jumbo v2, "NetworkScoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unregistering package monitor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v4, v4, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_4e
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 319
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 323
    :cond_56
    if-eqz v0, :cond_95

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    if-nez v2, :cond_95

    .line 324
    new-instance v2, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 325
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 324
    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;)V

    iput-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 327
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    .line 328
    const/4 v5, 0x0

    .line 327
    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 329
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_95

    .line 330
    const-string/jumbo v0, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registered package monitor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 331
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v3, v3, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_16 .. :try_end_95} :catchall_97

    :cond_95
    monitor-exit v1

    .line 335
    return-void

    .line 309
    :catchall_97
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerRecommendationSettingsObserver()V
    .registers 4

    .prologue
    .line 290
    const-string/jumbo v0, "network_recommendations_package"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContentObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 292
    const/4 v2, 0x1

    .line 291
    invoke-virtual {v1, v0, v2}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 294
    const-string/jumbo v0, "network_recommendations_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContentObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 296
    const/4 v2, 0x2

    .line 295
    invoke-virtual {v1, v0, v2}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 297
    return-void
.end method

.method private sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<",
            "Landroid/net/INetworkScoreCache;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 905
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 906
    monitor-enter v0

    .line 907
    :try_start_11
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_34

    move-result v4

    .line 909
    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v4, :cond_2a

    .line 910
    :try_start_19
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/net/INetworkScoreCache;

    .line 911
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    .line 910
    invoke-interface {p1, v1, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_2f

    .line 909
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_17

    .line 914
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_34

    monitor-exit v0

    goto :goto_4

    .line 913
    :catchall_2f
    move-exception v1

    .line 914
    :try_start_30
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 913
    throw v1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .line 906
    :catchall_34
    move-exception v1

    monitor-exit v0

    throw v1

    .line 918
    :cond_37
    return-void
.end method

.method private unbindFromScoringServiceIfNeeded()V
    .registers 5

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "unbindFromScoringServiceIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_d
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_10
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_43

    .line 377
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->unbind(Landroid/content/Context;)V

    .line 378
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_43

    const-string/jumbo v0, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnected from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_4b

    monitor-exit v1

    .line 383
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    .line 384
    return-void

    .line 375
    :catchall_4b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearScores()Z
    .registers 4

    .prologue
    .line 657
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 658
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 660
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    .line 661
    const/4 v2, 0x1

    .line 663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    return v2

    .line 662
    :catchall_1c
    move-exception v2

    .line 663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 662
    throw v2

    .line 666
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    .line 667
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    .line 666
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableScoring()V
    .registers 3

    .prologue
    .line 760
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    .line 761
    new-instance v0, Ljava/lang/SecurityException;

    .line 762
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    .line 761
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_1b
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NetworkScoreService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 858
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 860
    :try_start_10
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 861
    if-nez v0, :cond_22

    .line 862
    const-string/jumbo v0, "Scoring is disabled."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_63

    .line 887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    return-void

    .line 865
    :cond_22
    :try_start_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current scorer: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    new-instance v0, Lcom/android/server/NetworkScoreService$4;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/NetworkScoreService$4;-><init>(Lcom/android/server/NetworkScoreService;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 876
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCacheLists()Ljava/util/Collection;

    move-result-object v1

    .line 867
    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    .line 878
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_63

    .line 879
    :try_start_48
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_59

    .line 880
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_60

    :goto_51
    :try_start_51
    monitor-exit v1

    .line 885
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_63

    .line 887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return-void

    .line 882
    :cond_59
    :try_start_59
    const-string/jumbo v0, "ScoringServiceConnection: null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_60

    goto :goto_51

    .line 878
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1

    throw v0
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_63

    .line 886
    :catchall_63
    move-exception v0

    .line 887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    throw v0
.end method

.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 728
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerSystemProcess(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 729
    :cond_11
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    :try_start_14
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_20

    .line 731
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_20
    monitor-exit v1

    .line 739
    return-object v2

    .line 729
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    .line 735
    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    .line 736
    const-string/jumbo v1, "Caller is neither the system process nor a score requester."

    .line 735
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 708
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerScoreNetworks()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 709
    :cond_d
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_10
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_1c

    .line 711
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getPackageName()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_1c
    monitor-exit v1

    .line 719
    return-object v2

    .line 709
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 715
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    .line 716
    const-string/jumbo v1, "Caller is not a network scorer/requester."

    .line 715
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerSystemProcess(I)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    .line 750
    new-instance v0, Ljava/lang/SecurityException;

    .line 751
    const-string/jumbo v1, "Caller is neither the system process nor a score requester."

    .line 750
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_1b
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCallerActiveScorer(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_4
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v2, :cond_13

    .line 692
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    iget v2, v2, Landroid/net/NetworkScorerAppData;->packageUid:I
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    if-ne v2, p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    monitor-exit v1

    .line 691
    return v0

    .line 690
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onUserUnlocked(I)V
    .registers 5

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_25
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    .line 278
    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .registers 10

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.REQUEST_NETWORK_SCORES"

    const-string/jumbo v2, "NetworkScoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 791
    :try_start_f
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_73

    .line 792
    :try_start_12
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 793
    if-nez v0, :cond_2e

    .line 794
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 795
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_2e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 798
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_47

    .line 799
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :cond_47
    const-string/jumbo v0, "NetworkScoreService"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 802
    const-string/jumbo v0, "NetworkScoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to register NetworkScoreCache for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_12 .. :try_end_6b} :catchall_70

    :cond_6b
    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_73

    .line 807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    return-void

    .line 791
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v1

    throw v0
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_73

    .line 806
    :catchall_73
    move-exception v0

    .line 807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    throw v0
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .registers 7

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.REQUEST_NETWORK_SCORES"

    const-string/jumbo v2, "NetworkScoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 837
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_2c

    move-result-object v0

    .line 838
    if-eqz v0, :cond_27

    .line 840
    :try_start_15
    invoke-interface {v0, p1}, Landroid/net/INetworkRecommendationProvider;->requestScores([Landroid/net/NetworkKey;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1d
    .catchall {:try_start_15 .. :try_end_18} :catchall_2c

    .line 843
    const/4 v0, 0x1

    .line 851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 843
    return v0

    .line 844
    :catch_1d
    move-exception v0

    .line 845
    :try_start_1e
    const-string/jumbo v1, "NetworkScoreService"

    const-string/jumbo v4, "Failed to request scores."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2c

    .line 849
    :cond_27
    const/4 v0, 0x0

    .line 851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    return v0

    .line 850
    :catchall_2c
    move-exception v0

    .line 851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    throw v0
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 674
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerSystemProcess(I)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerScoreNetworks()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    .line 675
    new-instance v0, Ljava/lang/SecurityException;

    .line 676
    const-string/jumbo v1, "Caller is neither the system process or a network scorer."

    .line 675
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1b
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkScorerAppManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method systemReady()V
    .registers 3

    .prologue
    .line 265
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_d
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerRecommendationSettingsObserver()V

    .line 267
    return-void
.end method

.method systemRunning()V
    .registers 3

    .prologue
    .line 271
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "systemRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_d
    return-void
.end method

.method public unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .registers 9

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.REQUEST_NETWORK_SCORES"

    const-string/jumbo v2, "NetworkScoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 816
    :try_start_f
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_64

    .line 817
    :try_start_12
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 818
    if-eqz v0, :cond_28

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_51

    .line 819
    :cond_28
    const-string/jumbo v0, "NetworkScoreService"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 820
    const-string/jumbo v0, "NetworkScoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to unregister NetworkScoreCache for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_12 .. :try_end_4c} :catchall_61

    :cond_4c
    :goto_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_64

    .line 828
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    return-void

    .line 823
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_4c

    .line 824
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_61

    goto :goto_4c

    .line 816
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v1

    throw v0
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_64

    .line 827
    :catchall_64
    move-exception v0

    .line 828
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 827
    throw v0
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 388
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 389
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Caller with UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    const-string/jumbo v2, " is not the active scorer."

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 396
    :try_start_35
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 397
    array-length v5, p1

    move v1, v4

    :goto_3c
    if-ge v1, v5, :cond_67

    aget-object v8, p1, v1

    .line 398
    iget-object v0, v8, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v0, v0, Landroid/net/NetworkKey;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 399
    if-nez v0, :cond_60

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    iget-object v9, v8, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v9, v9, Landroid/net/NetworkKey;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_60
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c

    .line 407
    :cond_67
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6f
    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 410
    iget-object v8, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v8
    :try_end_7e
    .catchall {:try_start_35 .. :try_end_7e} :catchall_c6

    .line 411
    :try_start_7e
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 412
    if-eqz v1, :cond_cb

    .line 413
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_cf

    move-result v2

    if-nez v2, :cond_cd

    move v2, v3

    :goto_93
    :try_start_93
    monitor-exit v8

    .line 416
    if-eqz v2, :cond_d2

    .line 417
    const-string/jumbo v1, "NetworkScoreService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 418
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No scorer registered for type "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    const-string/jumbo v2, ", discarding"

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_93 .. :try_end_c5} :catchall_c6

    goto :goto_6f

    .line 431
    :catchall_c6
    move-exception v0

    .line 432
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    throw v0

    :cond_cb
    move v2, v3

    .line 412
    goto :goto_93

    :cond_cd
    move v2, v4

    .line 413
    goto :goto_93

    .line 410
    :catchall_cf
    move-exception v0

    :try_start_d0
    monitor-exit v8

    throw v0

    .line 425
    :cond_d2
    iget-object v8, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    invoke-static {v8, v2, v0}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->create(Landroid/content/Context;Ljava/util/List;I)Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    move-result-object v0

    .line 427
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    :try_end_ef
    .catchall {:try_start_d0 .. :try_end_ef} :catchall_c6

    goto :goto_6f

    .line 432
    :cond_f0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    return v3
.end method
