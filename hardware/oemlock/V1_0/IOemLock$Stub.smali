.class public abstract Landroid/hardware/oemlock/V1_0/IOemLock$Stub;
.super Landroid/os/HwBinder;
.source "IOemLock.java"

# interfaces
.implements Landroid/hardware/oemlock/V1_0/IOemLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/oemlock/V1_0/IOemLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 376
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 379
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 421
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 422
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 423
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 424
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

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 398
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 399
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 397
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 398
    nop

    :array_20
    .array-data 1
        0x4bt
        0x65t
        0x76t
        0x36t
        0x63t
        -0x57t
        0x4at
        0x39t
        0x20t
        0x13t
        0x40t
        0x11t
        0x69t
        0x1ft
        -0x71t
        -0x45t
        0x42t
        -0x34t
        -0x49t
        -0x49t
        0x79t
        0x55t
        -0x77t
        -0x11t
        -0x23t
        -0x40t
        0x49t
        -0x57t
        0x10t
        0x60t
        0x47t
        -0x2at
    .end array-data

    .line 399
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
    .line 384
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 385
    const-string/jumbo v2, "android.hardware.oemlock@1.0::IOemLock"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 386
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 384
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 429
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 430
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
    .line 458
    sparse-switch p1, :sswitch_data_128

    .line 633
    :goto_3
    :sswitch_3
    return-void

    .line 461
    :sswitch_4
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    new-instance v0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$1;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V

    goto :goto_3

    .line 476
    :sswitch_13
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 479
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 480
    invoke-virtual {p0, v0, v1}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result v0

    .line 481
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 482
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 483
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 489
    :sswitch_30
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    new-instance v0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V

    goto :goto_3

    .line 504
    :sswitch_3f
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 507
    invoke-virtual {p0, v0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setOemUnlockAllowedByDevice(Z)I

    move-result v0

    .line 508
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 509
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 510
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 516
    :sswitch_58
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    new-instance v0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$3;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V

    goto :goto_3

    .line 531
    :sswitch_67
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 534
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 535
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 542
    :sswitch_7c
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 545
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 551
    :sswitch_8b
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 554
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 555
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 562
    :sswitch_a1
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v5

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 567
    new-instance v6, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 569
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 570
    const-wide/16 v0, 0x8

    invoke-virtual {v6, v0, v1, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 571
    const-wide/16 v0, 0xc

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 572
    new-instance v8, Landroid/os/HwBlob;

    mul-int/lit8 v0, v7, 0x20

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 573
    const/4 v0, 0x0

    move v4, v0

    :goto_ce
    if-ge v4, v7, :cond_ef

    .line 575
    mul-int/lit8 v0, v4, 0x20

    int-to-long v2, v0

    .line 576
    const/4 v0, 0x0

    move v1, v0

    :goto_d5
    const/16 v0, 0x20

    if-ge v1, v0, :cond_eb

    .line 577
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v0, v0, v1

    invoke-virtual {v8, v2, v3, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 578
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 576
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d5

    .line 573
    :cond_eb
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_ce

    .line 582
    :cond_ef
    const-wide/16 v0, 0x0

    invoke-virtual {v6, v0, v1, v8}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 584
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 592
    :sswitch_fc
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 610
    :sswitch_107
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 613
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 614
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 621
    :sswitch_11d
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 458
    :sswitch_data_128
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_13
        0x3 -> :sswitch_30
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_58
        0xf43484e -> :sswitch_67
        0xf444247 -> :sswitch_7c
        0xf445343 -> :sswitch_8b
        0xf485348 -> :sswitch_a1
        0xf494e54 -> :sswitch_fc
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_107
        0xf535953 -> :sswitch_11d
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 415
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .prologue
    .line 440
    const-string/jumbo v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 441
    return-object p0

    .line 443
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
    .line 447
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 406
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 434
    const/4 v0, 0x1

    return v0
.end method
