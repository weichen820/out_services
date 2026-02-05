.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mHasNativeHal:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 44
    const-string/jumbo v0, "power"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    const-string/jumbo v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 48
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 49
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.consumerir"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 50
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-nez v0, :cond_53

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_46
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz v0, :cond_53

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_53
    return-void
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halOpen()Z
.end method

.method private static native halTransmit(I[I)I
.end method

.method private throwIfNoIrEmitter()V
    .registers 3

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-nez v0, :cond_d

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_d
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 106
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_14
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 111
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_1a
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_20

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public hasIrEmitter()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return v0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 74
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_15
    const-wide/16 v2, 0x0

    .line 79
    array-length v1, p3

    :goto_18
    if-ge v0, v1, :cond_2c

    aget v4, p3, v0

    .line 80
    if-gtz v4, :cond_27

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Non-positive IR slice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_27
    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 86
    :cond_2c
    const-wide/32 v0, 0x1e8480

    cmp-long v0, v2, v0

    if-lez v0, :cond_3c

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IR pattern too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 93
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_42
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result v0

    .line 96
    if-gez v0, :cond_62

    .line 97
    const-string/jumbo v2, "ConsumerIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error transmitting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_42 .. :try_end_62} :catchall_64

    :cond_62
    monitor-exit v1

    .line 100
    return-void

    .line 93
    :catchall_64
    move-exception v0

    monitor-exit v1

    throw v0
.end method
