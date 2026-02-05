.class public abstract Landroid/hardware/weaver/V1_0/IWeaver$Stub;
.super Landroid/os/HwBinder;
.source "IWeaver.java"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/weaver/V1_0/IWeaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 331
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 334
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 376
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 377
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 378
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 379
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

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 353
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 354
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 352
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 353
    nop

    :array_20
    .array-data 1
        -0x65t
        -0x3ct
        0x34t
        0x13t
        -0x48t
        0xct
        -0x30t
        -0x3bt
        -0x66t
        0x2t
        0x2et
        -0x6dt
        -0x26t
        0x14t
        0x48t
        -0x24t
        -0x48t
        0x2dt
        -0x2ft
        0xct
        0x6dt
        -0x2dt
        0x19t
        0x32t
        -0x21t
        0x46t
        0x59t
        -0x1ct
        -0x43t
        -0x35t
        0x13t
        0x68t
    .end array-data

    .line 354
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
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 340
    const-string/jumbo v2, "android.hardware.weaver@1.0::IWeaver"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 341
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 339
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    const-string/jumbo v0, "android.hardware.weaver@1.0::IWeaver"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 384
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 385
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
    .line 413
    sparse-switch p1, :sswitch_data_10a

    .line 564
    :goto_3
    :sswitch_3
    return-void

    .line 416
    :sswitch_4
    const-string/jumbo v0, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    new-instance v0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/weaver/V1_0/IWeaver$Stub$1;-><init>(Landroid/hardware/weaver/V1_0/IWeaver$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    goto :goto_3

    .line 431
    :sswitch_13
    const-string/jumbo v0, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 436
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 437
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 438
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 439
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 445
    :sswitch_34
    const-string/jumbo v0, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 448
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 449
    new-instance v2, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;

    invoke-direct {v2, p0, p3}, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;-><init>(Landroid/hardware/weaver/V1_0/IWeaver$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    goto :goto_3

    .line 462
    :sswitch_4b
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 465
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 466
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 473
    :sswitch_60
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 476
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 482
    :sswitch_6e
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 486
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 493
    :sswitch_83
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v5

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 498
    new-instance v6, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 500
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 501
    const-wide/16 v0, 0x8

    invoke-virtual {v6, v0, v1, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 502
    const-wide/16 v0, 0xc

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 503
    new-instance v8, Landroid/os/HwBlob;

    mul-int/lit8 v0, v7, 0x20

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 504
    const/4 v0, 0x0

    move v4, v0

    :goto_b0
    if-ge v4, v7, :cond_d1

    .line 506
    mul-int/lit8 v0, v4, 0x20

    int-to-long v2, v0

    .line 507
    const/4 v0, 0x0

    move v1, v0

    :goto_b7
    const/16 v0, 0x20

    if-ge v1, v0, :cond_cd

    .line 508
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v0, v0, v1

    invoke-virtual {v8, v2, v3, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 509
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 507
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b7

    .line 504
    :cond_cd
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_b0

    .line 513
    :cond_d1
    const-wide/16 v0, 0x0

    invoke-virtual {v6, v0, v1, v8}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 515
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 517
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 523
    :sswitch_de
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 541
    :sswitch_e9
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 544
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 545
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 552
    :sswitch_ff
    const-string/jumbo v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 413
    :sswitch_data_10a
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_13
        0x3 -> :sswitch_34
        0xf43484e -> :sswitch_4b
        0xf444247 -> :sswitch_60
        0xf445343 -> :sswitch_6e
        0xf485348 -> :sswitch_83
        0xf494e54 -> :sswitch_de
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_e9
        0xf535953 -> :sswitch_ff
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 370
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .prologue
    .line 395
    const-string/jumbo v0, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 396
    return-object p0

    .line 398
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
    .line 402
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 389
    const/4 v0, 0x1

    return v0
.end method
