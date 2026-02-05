.class public abstract Landroid/hardware/usb/V1_0/IUsbCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/V1_0/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_0/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 289
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 331
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 332
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 333
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 334
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 308
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 309
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 307
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 308
    nop

    :array_20
    .array-data 1
        0x4bt
        -0x19t
        -0x78t
        0x1et
        0x41t
        0x1bt
        -0x5ct
        0x27t
        -0x7ct
        -0x41t
        0x5bt
        0x73t
        0x54t
        -0x3ft
        0x4at
        -0x20t
        -0x31t
        0x16t
        0x10t
        0x4t
        -0x2dt
        -0x6ct
        0x33t
        -0x56t
        -0x14t
        -0x56t
        -0x50t
        -0x2ft
        -0x62t
        -0x57t
        -0x6dt
        0x54t
    .end array-data

    .line 309
    :array_34
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 295
    const-string/jumbo v2, "android.hardware.usb@1.0::IUsbCallback"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 296
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 294
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    const-string/jumbo v0, "android.hardware.usb@1.0::IUsbCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 339
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 340
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    sparse-switch p1, :sswitch_data_f0

    .line 495
    :goto_3
    :sswitch_3
    return-void

    .line 371
    :sswitch_4
    const-string/jumbo v0, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-static {p2}, Landroid/hardware/usb/V1_0/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 374
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 375
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifyPortStatusChange(Ljava/util/ArrayList;I)V

    goto :goto_3

    .line 381
    :sswitch_16
    const-string/jumbo v0, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 385
    invoke-virtual {v1, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 387
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V

    goto :goto_3

    .line 393
    :sswitch_30
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 397
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 398
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 404
    :sswitch_45
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 407
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 413
    :sswitch_53
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 416
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 417
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 424
    :sswitch_68
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v5

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 429
    new-instance v6, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 431
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 432
    const-wide/16 v0, 0x8

    invoke-virtual {v6, v0, v1, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 433
    const-wide/16 v0, 0xc

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 434
    new-instance v8, Landroid/os/HwBlob;

    mul-int/lit8 v0, v7, 0x20

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 435
    const/4 v0, 0x0

    move v4, v0

    :goto_95
    if-ge v4, v7, :cond_b6

    .line 437
    mul-int/lit8 v0, v4, 0x20

    int-to-long v2, v0

    .line 438
    const/4 v0, 0x0

    move v1, v0

    :goto_9c
    const/16 v0, 0x20

    if-ge v1, v0, :cond_b2

    .line 439
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v0, v0, v1

    invoke-virtual {v8, v2, v3, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 440
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 438
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9c

    .line 435
    :cond_b2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_95

    .line 444
    :cond_b6
    const-wide/16 v0, 0x0

    invoke-virtual {v6, v0, v1, v8}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 446
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 448
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 454
    :sswitch_c3
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 472
    :sswitch_ce
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 475
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 476
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 477
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 483
    :sswitch_e4
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 368
    nop

    :sswitch_data_f0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_16
        0xf43484e -> :sswitch_30
        0xf444247 -> :sswitch_45
        0xf445343 -> :sswitch_53
        0xf485348 -> :sswitch_68
        0xf494e54 -> :sswitch_c3
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_ce
        0xf535953 -> :sswitch_e4
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 325
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .prologue
    .line 350
    const-string/jumbo v0, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 351
    return-object p0

    .line 353
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 316
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method
