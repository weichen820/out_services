.class public final Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;
.super Ljava/lang/Object;
.source "ISurfaceFlingerConfigs.java"

# interfaces
.implements Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 473
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 477
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 478
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 479
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 481
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 482
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    .line 485
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 483
    return-object v0

    .line 484
    :catchall_2b
    move-exception v0

    .line 485
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 484
    throw v0
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x20

    const/4 v9, 0x0

    .line 395
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 396
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 400
    :try_start_13
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 401
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 402
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 404
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 406
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 408
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 410
    mul-int/lit8 v2, v11, 0x20

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 411
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 409
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 413
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v4, v9

    .line 414
    :goto_45
    if-ge v4, v11, :cond_64

    .line 415
    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 417
    mul-int/lit8 v0, v4, 0x20

    int-to-long v2, v0

    move v0, v9

    .line 418
    :goto_4f
    if-ge v0, v14, :cond_5d

    .line 419
    invoke-virtual {v5, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v7

    aput-byte v7, v6, v0

    .line 420
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 423
    :cond_5d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_13 .. :try_end_60} :catchall_68

    .line 414
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_45

    .line 429
    :cond_64
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 427
    return-object v10

    .line 428
    :catchall_68
    move-exception v0

    .line 429
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 428
    throw v0
.end method

.method public hasHDRDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 197
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 201
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 202
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 203
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 205
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalBool;-><init>()V

    .line 206
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_29

    .line 209
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 207
    return-object v0

    .line 208
    :catchall_29
    move-exception v0

    .line 209
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 208
    throw v0
.end method

.method public hasSyncFramework()Landroid/hardware/configstore/V1_0/OptionalBool;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 277
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 281
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 282
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 283
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 285
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalBool;-><init>()V

    .line 286
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    .line 289
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 287
    return-object v0

    .line 288
    :catchall_2a
    move-exception v0

    .line 289
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 288
    throw v0
.end method

.method public hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 177
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 181
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 182
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 183
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 185
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalBool;-><init>()V

    .line 186
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_29

    .line 189
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 187
    return-object v0

    .line 188
    :catchall_29
    move-exception v0

    .line 189
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 188
    throw v0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 358
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 362
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 363
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 364
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 366
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 369
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 367
    return-object v0

    .line 368
    :catchall_27
    move-exception v0

    .line 369
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 368
    throw v0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 377
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 381
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 382
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 383
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 385
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 388
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 386
    return-object v0

    .line 387
    :catchall_27
    move-exception v0

    .line 388
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 387
    throw v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public maxFrameBufferAcquiredBuffers()Landroid/hardware/configstore/V1_0/OptionalInt64;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 317
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 321
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 322
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 323
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 325
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalInt64;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalInt64;-><init>()V

    .line 326
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalInt64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    .line 329
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 327
    return-object v0

    .line 328
    :catchall_2a
    move-exception v0

    .line 329
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 328
    throw v0
.end method

.method public maxVirtualDisplaySize()Landroid/hardware/configstore/V1_0/OptionalUInt64;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 257
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 261
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 262
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 263
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 265
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalUInt64;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalUInt64;-><init>()V

    .line 266
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    .line 269
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 267
    return-object v0

    .line 268
    :catchall_2a
    move-exception v0

    .line 269
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 268
    throw v0
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 493
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 497
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 498
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 500
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 502
    return-void

    .line 499
    :catchall_20
    move-exception v0

    .line 500
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 499
    throw v0
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 457
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 461
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 462
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 463
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 465
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 467
    return-void

    .line 464
    :catchall_23
    move-exception v0

    .line 465
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 464
    throw v0
.end method

.method public presentTimeOffsetFromVSyncNs()Landroid/hardware/configstore/V1_0/OptionalInt64;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 217
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 221
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 222
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 223
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 225
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalInt64;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalInt64;-><init>()V

    .line 226
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalInt64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_29

    .line 229
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 227
    return-object v0

    .line 228
    :catchall_29
    move-exception v0

    .line 229
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 228
    throw v0
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 437
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 441
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 442
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 444
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 446
    return-void

    .line 443
    :catchall_20
    move-exception v0

    .line 444
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 443
    throw v0
.end method

.method public startGraphicsAllocatorService()Landroid/hardware/configstore/V1_0/OptionalBool;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 337
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 341
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 342
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 343
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 345
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalBool;-><init>()V

    .line 346
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    .line 349
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 347
    return-object v0

    .line 348
    :catchall_2a
    move-exception v0

    .line 349
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 348
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    return-object v0

    .line 106
    :catch_19
    move-exception v0

    .line 109
    const-string/jumbo v0, "[class or subclass of android.hardware.configstore@1.0::ISurfaceFlingerConfigs]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public useContextPriority()Landroid/hardware/configstore/V1_0/OptionalBool;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 157
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 161
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 162
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 163
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 165
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalBool;-><init>()V

    .line 166
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_29

    .line 169
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 167
    return-object v0

    .line 168
    :catchall_29
    move-exception v0

    .line 169
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 168
    throw v0
.end method

.method public useHwcForRGBtoYUV()Landroid/hardware/configstore/V1_0/OptionalBool;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 237
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 241
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 242
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 243
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 245
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalBool;-><init>()V

    .line 246
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_29

    .line 249
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 247
    return-object v0

    .line 248
    :catchall_29
    move-exception v0

    .line 249
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 248
    throw v0
.end method

.method public useVrFlinger()Landroid/hardware/configstore/V1_0/OptionalBool;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 297
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 301
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 302
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 303
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 305
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalBool;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalBool;-><init>()V

    .line 306
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_2a

    .line 309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 307
    return-object v0

    .line 308
    :catchall_2a
    move-exception v0

    .line 309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 308
    throw v0
.end method

.method public vsyncEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 117
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 121
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 122
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 123
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 125
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalInt64;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalInt64;-><init>()V

    .line 126
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalInt64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_29

    .line 129
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 127
    return-object v0

    .line 128
    :catchall_29
    move-exception v0

    .line 129
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 128
    throw v0
.end method

.method public vsyncSfEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 137
    const-string/jumbo v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 141
    :try_start_10
    iget-object v2, p0, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 142
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 143
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 145
    new-instance v0, Landroid/hardware/configstore/V1_0/OptionalInt64;

    invoke-direct {v0}, Landroid/hardware/configstore/V1_0/OptionalInt64;-><init>()V

    .line 146
    invoke-virtual {v0, v1}, Landroid/hardware/configstore/V1_0/OptionalInt64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_29

    .line 149
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 147
    return-object v0

    .line 148
    :catchall_29
    move-exception v0

    .line 149
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 148
    throw v0
.end method
