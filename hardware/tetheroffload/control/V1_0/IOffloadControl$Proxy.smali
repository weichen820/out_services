.class public final Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;
.super Ljava/lang/Object;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
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
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 135
    return-void
.end method


# virtual methods
.method public addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 286
    const-string/jumbo v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 290
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 292
    :try_start_16
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 293
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 294
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 296
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 297
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-interface {p3, v0, v2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_32

    .line 300
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 302
    return-void

    .line 299
    :catchall_32
    move-exception v0

    .line 300
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 299
    throw v0
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    .line 445
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 446
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 450
    :try_start_10
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 451
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 452
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 454
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 455
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    .line 458
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 456
    return-object v0

    .line 457
    :catchall_2b
    move-exception v0

    .line 458
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 457
    throw v0
.end method

.method public getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 219
    const-string/jumbo v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 222
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 224
    :try_start_13
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 225
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 226
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 228
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 229
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    .line 230
    invoke-interface {p2, v2, v3, v4, v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;->onValues(JJ)V
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_2f

    .line 232
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 234
    return-void

    .line 231
    :catchall_2f
    move-exception v0

    .line 232
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 231
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

    .line 368
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 369
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 373
    :try_start_13
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 374
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 375
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 377
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 379
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 381
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 383
    mul-int/lit8 v2, v11, 0x20

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 384
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 382
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 386
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v4, v9

    .line 387
    :goto_45
    if-ge v4, v11, :cond_64

    .line 388
    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 390
    mul-int/lit8 v0, v4, 0x20

    int-to-long v2, v0

    move v0, v9

    .line 391
    :goto_4f
    if-ge v0, v14, :cond_5d

    .line 392
    invoke-virtual {v5, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v7

    aput-byte v7, v6, v0

    .line 393
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 396
    :cond_5d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_13 .. :try_end_60} :catchall_68

    .line 387
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_45

    .line 402
    :cond_64
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 400
    return-object v10

    .line 401
    :catchall_68
    move-exception v0

    .line 402
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 401
    throw v0
.end method

.method public initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 156
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 157
    const-string/jumbo v2, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    if-nez p1, :cond_32

    :goto_e
    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 160
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 162
    :try_start_16
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 163
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 164
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 166
    invoke-virtual {v2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 167
    invoke-virtual {v2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-interface {p2, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_37

    .line 170
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 172
    return-void

    .line 158
    :cond_32
    invoke-interface {p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    goto :goto_e

    .line 169
    :catchall_37
    move-exception v0

    .line 170
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 169
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
    .line 330
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 331
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 335
    :try_start_10
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 336
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 337
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 339
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 342
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 340
    return-object v0

    .line 341
    :catchall_27
    move-exception v0

    .line 342
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 341
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
    .line 349
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 350
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 354
    :try_start_10
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 355
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 356
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 358
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 361
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 359
    return-object v0

    .line 360
    :catchall_27
    move-exception v0

    .line 361
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 360
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
    .line 424
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 466
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 470
    :try_start_10
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 471
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 473
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 475
    return-void

    .line 472
    :catchall_20
    move-exception v0

    .line 473
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 472
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
    .line 429
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 430
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 432
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 434
    :try_start_10
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 435
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 436
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 438
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 440
    return-void

    .line 437
    :catchall_23
    move-exception v0

    .line 438
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 437
    throw v0
.end method

.method public removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 308
    const-string/jumbo v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 312
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 314
    :try_start_16
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 315
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 316
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 318
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 319
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-interface {p3, v0, v2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_33

    .line 322
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 324
    return-void

    .line 321
    :catchall_33
    move-exception v0

    .line 322
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 321
    throw v0
.end method

.method public setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 240
    const-string/jumbo v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 244
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 246
    :try_start_16
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 247
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 248
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 250
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 251
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-interface {p4, v0, v2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_32

    .line 254
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 256
    return-void

    .line 253
    :catchall_32
    move-exception v0

    .line 254
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 253
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
    .line 409
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 410
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 414
    :try_start_10
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 415
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 417
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 419
    return-void

    .line 416
    :catchall_20
    move-exception v0

    .line 417
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 416
    throw v0
.end method

.method public setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 198
    const-string/jumbo v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 201
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 203
    :try_start_13
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 204
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 205
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 207
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 208
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-interface {p2, v0, v2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;->onValues(ZLjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_2f

    .line 211
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 213
    return-void

    .line 210
    :catchall_2f
    move-exception v0

    .line 211
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 210
    throw v0
.end method

.method public setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 262
    const-string/jumbo v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 268
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 270
    :try_start_1c
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 271
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 272
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 274
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 275
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-interface {p5, v0, v2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;->onValues(ZLjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_38

    .line 278
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 280
    return-void

    .line 277
    :catchall_38
    move-exception v0

    .line 278
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 277
    throw v0
.end method

.method public stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 178
    const-string/jumbo v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 182
    :try_start_10
    iget-object v2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 183
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 184
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 186
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 187
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-interface {p1, v0, v2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;->onValues(ZLjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_2c

    .line 190
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 192
    return-void

    .line 189
    :catchall_2c
    move-exception v0

    .line 190
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 189
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 146
    :catch_19
    move-exception v0

    .line 149
    const-string/jumbo v0, "[class or subclass of android.hardware.tetheroffload.control@1.0::IOffloadControl]@Proxy"

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
    .line 480
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
