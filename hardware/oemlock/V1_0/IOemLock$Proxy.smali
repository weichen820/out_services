.class public final Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;
.super Ljava/lang/Object;
.source "IOemLock.java"

# interfaces
.implements Landroid/hardware/oemlock/V1_0/IOemLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/oemlock/V1_0/IOemLock;
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
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 99
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    .line 337
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 338
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 342
    :try_start_10
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 343
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 344
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 346
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 347
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    .line 350
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 348
    return-object v0

    .line 349
    :catchall_2b
    move-exception v0

    .line 350
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 349
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

    .line 260
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 261
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 265
    :try_start_13
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 266
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 267
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 269
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 271
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 273
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 275
    mul-int/lit8 v2, v11, 0x20

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 276
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 274
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v5

    .line 278
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v4, v9

    .line 279
    :goto_45
    if-ge v4, v11, :cond_64

    .line 280
    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 282
    mul-int/lit8 v0, v4, 0x20

    int-to-long v2, v0

    move v0, v9

    .line 283
    :goto_4f
    if-ge v0, v14, :cond_5d

    .line 284
    invoke-virtual {v5, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v7

    aput-byte v7, v6, v0

    .line 285
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 288
    :cond_5d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_13 .. :try_end_60} :catchall_68

    .line 279
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_45

    .line 294
    :cond_64
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 292
    return-object v10

    .line 293
    :catchall_68
    move-exception v0

    .line 294
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 293
    throw v0
.end method

.method public getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 121
    const-string/jumbo v1, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 125
    :try_start_10
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 126
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 127
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 129
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 130
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-interface {p1, v0, v2}, Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;->onValues(ILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_2c

    .line 133
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 135
    return-void

    .line 132
    :catchall_2c
    move-exception v0

    .line 133
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 132
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
    .line 222
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 223
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 227
    :try_start_10
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 228
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 229
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 231
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 234
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 232
    return-object v0

    .line 233
    :catchall_27
    move-exception v0

    .line 234
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 233
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
    .line 241
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 242
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 246
    :try_start_10
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 247
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 248
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 250
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 253
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 251
    return-object v0

    .line 252
    :catchall_27
    move-exception v0

    .line 253
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 252
    throw v0
.end method

.method public isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 162
    const-string/jumbo v1, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 166
    :try_start_10
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 167
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 168
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 170
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 171
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 172
    invoke-interface {p1, v0, v2}, Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;->onValues(IZ)V
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_2c

    .line 174
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 176
    return-void

    .line 173
    :catchall_2c
    move-exception v0

    .line 174
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 173
    throw v0
.end method

.method public isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 202
    const-string/jumbo v1, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 204
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 206
    :try_start_10
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 207
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 208
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 210
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 211
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 212
    invoke-interface {p1, v0, v2}, Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;->onValues(IZ)V
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_2c

    .line 214
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 216
    return-void

    .line 213
    :catchall_2c
    move-exception v0

    .line 214
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 213
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
    .line 316
    iget-object v0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

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
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 363
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 365
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 367
    return-void

    .line 364
    :catchall_20
    move-exception v0

    .line 365
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 364
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
    .line 321
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 322
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 326
    :try_start_10
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 327
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 328
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 330
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 332
    return-void

    .line 329
    :catchall_23
    move-exception v0

    .line 330
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 329
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
    .line 301
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 302
    const-string/jumbo v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 306
    :try_start_10
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 307
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 311
    return-void

    .line 308
    :catchall_20
    move-exception v0

    .line 309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 308
    throw v0
.end method

.method public setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 141
    const-string/jumbo v1, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 143
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 145
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 147
    :try_start_16
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 148
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 149
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 151
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_2b

    move-result v0

    .line 154
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 152
    return v0

    .line 153
    :catchall_2b
    move-exception v0

    .line 154
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 153
    throw v0
.end method

.method public setOemUnlockAllowedByDevice(Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 182
    const-string/jumbo v1, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 185
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 187
    :try_start_13
    iget-object v2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 188
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 189
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 191
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_28

    move-result v0

    .line 194
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 192
    return v0

    .line 193
    :catchall_28
    move-exception v0

    .line 194
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 193
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->interfaceDescriptor()Ljava/lang/String;

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

    .line 110
    :catch_19
    move-exception v0

    .line 113
    const-string/jumbo v0, "[class or subclass of android.hardware.oemlock@1.0::IOemLock]@Proxy"

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
    .line 372
    iget-object v0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
