.class Lcom/android/server/CommonTimeManagementService;
.super Landroid/os/Binder;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CommonTimeManagementService$1;,
        Lcom/android/server/CommonTimeManagementService$2;,
        Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    }
.end annotation


# static fields
.field private static final ALLOW_WIFI:Z

.field private static final ALLOW_WIFI_PROP:Ljava/lang/String; = "ro.common_time.allow_wifi"

.field private static final AUTO_DISABLE:Z

.field private static final AUTO_DISABLE_PROP:Ljava/lang/String; = "ro.common_time.auto_disable"

.field private static final BASE_SERVER_PRIO:B

.field private static final IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

.field private static final NATIVE_SERVICE_RECONNECT_TIMEOUT:I = 0x1388

.field private static final NO_INTERFACE_TIMEOUT:I

.field private static final NO_INTERFACE_TIMEOUT_PROP:Ljava/lang/String; = "ro.common_time.no_iface_timeout"

.field private static final SERVER_PRIO_PROP:Ljava/lang/String; = "ro.common_time.server_prio"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCTConfig:Landroid/os/CommonTimeConfig;

.field private mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurIface:Ljava/lang/String;

.field private mDetectedAtStartup:Z

.field private mEffectivePrio:B

.field private mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mLock:Ljava/lang/Object;

.field private mNetMgr:Landroid/os/INetworkManagementService;

.field private mNoInterfaceHandler:Landroid/os/Handler;

.field private mNoInterfaceRunnable:Ljava/lang/Runnable;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mReconnectRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/CommonTimeManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x1e

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    const-class v0, Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "ro.common_time.auto_disable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    .line 67
    const-string/jumbo v0, "ro.common_time.allow_wifi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_23
    sput-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    .line 68
    const-string/jumbo v0, "ro.common_time.server_prio"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 69
    const-string/jumbo v3, "ro.common_time.no_iface_timeout"

    const v4, 0xea60

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    .line 71
    if-ge v0, v1, :cond_5d

    .line 72
    sput-byte v1, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    .line 79
    :goto_3c
    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    if-eqz v0, :cond_66

    .line 80
    new-array v0, v5, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    .line 81
    new-instance v3, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string/jumbo v4, "wlan"

    invoke-direct {v3, v4, v1}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v3, v0, v2

    .line 82
    new-instance v2, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string/jumbo v3, "eth"

    invoke-direct {v2, v3, v5}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v2, v0, v1

    .line 80
    sput-object v0, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    .line 48
    :goto_58
    return-void

    :cond_59
    move v0, v2

    .line 66
    goto :goto_17

    :cond_5b
    move v0, v2

    .line 67
    goto :goto_23

    .line 74
    :cond_5d
    if-le v0, v6, :cond_62

    .line 75
    sput-byte v6, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_3c

    .line 77
    :cond_62
    int-to-byte v0, v0

    sput-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_3c

    .line 85
    :cond_66
    new-array v0, v1, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    .line 86
    new-instance v1, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string/jumbo v3, "eth"

    invoke-direct {v1, v3, v5}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v1, v0, v2

    .line 85
    sput-object v0, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    goto :goto_58
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    .line 101
    iput-boolean v1, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    .line 102
    sget-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    iput-byte v0, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    .line 107
    new-instance v0, Lcom/android/server/CommonTimeManagementService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$1;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    .line 126
    new-instance v0, Lcom/android/server/CommonTimeManagementService$2;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$2;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/android/server/-$Lambda$qXtDhnbBL0MhXoSy7vXxLi-Juu4;

    invoke-direct {v0, p0}, Lcom/android/server/-$Lambda$qXtDhnbBL0MhXoSy7vXxLi-Juu4;-><init>(Ljava/lang/Object;)V

    .line 133
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 136
    new-instance v0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;

    invoke-direct {v0, v1, p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method private cleanupTimeConfig()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_1a

    .line 218
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->release()V

    .line 219
    iput-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    .line 221
    :cond_1a
    return-void
.end method

.method private connectToTimeConfig()V
    .registers 5

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    .line 229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_40

    .line 230
    :try_start_6
    new-instance v0, Landroid/os/CommonTimeConfig;

    invoke-direct {v0}, Landroid/os/CommonTimeConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    .line 231
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    invoke-virtual {v0, v2}, Landroid/os/CommonTimeConfig;->setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->getInterfaceBinding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    sget-boolean v2, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    invoke-virtual {v0, v2}, Landroid/os/CommonTimeConfig;->setAutoDisable(Z)I

    .line 234
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-byte v2, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v0, v2}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_3d

    :try_start_2a
    monitor-exit v1

    .line 237
    sget v0, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v0, :cond_39

    .line 238
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_39
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    .line 245
    :goto_3c
    return-void

    .line 229
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_40} :catch_40

    .line 242
    :catch_40
    move-exception v0

    .line 243
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    goto :goto_3c
.end method

.method private handleNoInterfaceTimeout()V
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_18

    .line 257
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Timeout waiting for interface to come up.  Forcing networkless master mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->forceNetworklessMasterMode()I

    move-result v0

    const/4 v1, -0x7

    if-ne v1, v0, :cond_18

    .line 260
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    .line 262
    :cond_18
    return-void
.end method

.method private reevaluateServiceState()V
    .registers 16

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 291
    :try_start_4
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v9

    .line 292
    if-eqz v9, :cond_f6

    .line 293
    array-length v10, v9
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_44

    move v8, v7

    move v0, v4

    move-object v2, v5

    :goto_10
    if-ge v8, v10, :cond_47

    :try_start_12
    aget-object v3, v9, v8

    .line 296
    sget-object v11, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    array-length v12, v11

    move v1, v7

    :goto_18
    if-ge v1, v12, :cond_f3

    aget-object v13, v11, v1

    .line 297
    iget-object v14, v13, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 298
    iget-byte v1, v13, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mScore:B

    .line 303
    :goto_26
    if-gt v1, v0, :cond_31

    move-object v1, v2

    .line 293
    :goto_29
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-object v2, v1

    goto :goto_10

    .line 296
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 306
    :cond_31
    iget-object v11, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v11

    .line 307
    if-nez v11, :cond_3b

    move-object v1, v2

    .line 308
    goto :goto_29

    .line 310
    :cond_3b
    invoke-virtual {v11}, Landroid/net/InterfaceConfiguration;->isActive()Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_3e} :catch_ed

    move-result v11

    if-eqz v11, :cond_f0

    move v0, v1

    move-object v1, v3

    .line 312
    goto :goto_29

    .line 317
    :catch_44
    move-exception v0

    move v0, v4

    :goto_46
    move-object v2, v5

    .line 326
    :cond_47
    :goto_47
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 327
    if-eqz v2, :cond_8d

    :try_start_4c
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v1, :cond_8d

    .line 328
    sget-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Binding common time service to %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_cd

    move v1, v6

    :goto_65
    monitor-exit v3

    .line 344
    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v1, :cond_8c

    .line 345
    if-lez v0, :cond_d0

    .line 346
    sget-byte v1, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    .line 348
    :goto_72
    iget-byte v1, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    if-eq v0, v1, :cond_7f

    .line 349
    iput-byte v0, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    .line 350
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-byte v1, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    .line 353
    :cond_7f
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeConfig;->setNetworkBinding(Ljava/lang/String;)I

    move-result v0

    .line 354
    if-eqz v0, :cond_d3

    .line 355
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    .line 363
    :cond_8c
    :goto_8c
    return-void

    .line 331
    :cond_8d
    if-nez v2, :cond_a0

    :try_start_8f
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 332
    sget-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unbinding common time service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    move v1, v6

    .line 331
    goto :goto_65

    .line 335
    :cond_a0
    if-eqz v2, :cond_cb

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_cb

    .line 336
    sget-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Switching common time service binding from %s to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 337
    iget-object v7, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const/4 v7, 0x1

    aput-object v2, v5, v7

    .line 336
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iput-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;
    :try_end_c9
    .catchall {:try_start_8f .. :try_end_c9} :catchall_cd

    move v1, v6

    goto :goto_65

    :cond_cb
    move v1, v7

    .line 340
    goto :goto_65

    .line 326
    :catchall_cd
    move-exception v0

    monitor-exit v3

    throw v0

    .line 347
    :cond_d0
    sget-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_72

    .line 357
    :cond_d3
    sget v0, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v0, :cond_8c

    .line 358
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v0, :cond_8c

    .line 360
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8c

    .line 317
    :catch_ed
    move-exception v1

    goto/16 :goto_46

    :cond_f0
    move-object v1, v2

    goto/16 :goto_29

    :cond_f3
    move v1, v4

    goto/16 :goto_26

    :cond_f6
    move v0, v4

    move-object v2, v5

    goto/16 :goto_47
.end method

.method private scheduleTimeConfigReconnect()V
    .registers 6

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    .line 249
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Native service died, will reconnect in %d mSec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 250
    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 249
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    .line 252
    const-wide/16 v2, 0x1388

    .line 251
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 179
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    if-nez v0, :cond_16

    .line 180
    const-string/jumbo v0, "Native Common Time service was not detected at startup.  Service is unavailable"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_16
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_19
    const-string/jumbo v0, "Current Common Time Management Service Config:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v2, "  Native service     : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-nez v0, :cond_a9

    const-string/jumbo v0, "reconnecting"

    :goto_2c
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 187
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v2, "  Bound interface    : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v0, :cond_ad

    const-string/jumbo v0, "unbound"

    :goto_43
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 190
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v2, "  Allow WiFi         : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    if-eqz v0, :cond_b0

    const-string/jumbo v0, "yes"

    :goto_5a
    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v2, "  Allow Auto Disable : %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    if-eqz v0, :cond_b4

    const-string/jumbo v0, "yes"

    :goto_71
    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "  Server Priority    : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-byte v3, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "  No iface timeout   : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_19 .. :try_end_a7} :catchall_b8

    monitor-exit v1

    .line 197
    return-void

    .line 189
    :cond_a9
    :try_start_a9
    const-string/jumbo v0, "alive"

    goto :goto_2c

    .line 191
    :cond_ad
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_43

    .line 192
    :cond_b0
    const-string/jumbo v0, "no"

    goto :goto_5a

    .line 193
    :cond_b4
    const-string/jumbo v0, "no"
    :try_end_b7
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_b8

    goto :goto_71

    .line 185
    :catchall_b8
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_CommonTimeManagementService_4830()V
    .registers 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    return-void
.end method

.method synthetic lambda$-com_android_server_CommonTimeManagementService_4910()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    return-void
.end method

.method synthetic lambda$-com_android_server_CommonTimeManagementService_4984()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->handleNoInterfaceTimeout()V

    return-void
.end method

.method systemRunning()V
    .registers 4

    .prologue
    .line 148
    const-string/jumbo v0, "common_time.config"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_12

    .line 149
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No common time service detected on this platform.  Common time services will be unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    .line 156
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    .line 162
    :try_start_22
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_3f

    .line 167
    :goto_29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    .line 173
    return-void

    .line 164
    :catch_3f
    move-exception v0

    goto :goto_29
.end method
