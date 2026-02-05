.class public final Landroid/hardware/weaver/V1_0/WeaverReadResponse;
.super Ljava/lang/Object;
.source "WeaverReadResponse.java"


# instance fields
.field public timeout:I

.field public final value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 4
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/weaver/V1_0/WeaverReadResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 58
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 60
    mul-int/lit8 v1, v10, 0x18

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 61
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 59
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 63
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v0, 0x0

    :goto_24
    if-ge v0, v10, :cond_37

    .line 65
    new-instance v2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    invoke-direct {v2}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;-><init>()V

    .line 66
    mul-int/lit8 v3, v0, 0x18

    int-to-long v4, v3

    invoke-virtual {v2, p0, v1, v4, v5}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 71
    :cond_37
    return-object v9
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/weaver/V1_0/WeaverReadResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 100
    new-instance v2, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v2, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 103
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 104
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 105
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v1, v3, 0x18

    invoke-direct {v4, v1}, Landroid/os/HwBlob;-><init>(I)V

    move v1, v0

    .line 106
    :goto_1e
    if-ge v1, v3, :cond_30

    .line 107
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    mul-int/lit8 v5, v1, 0x18

    int-to-long v6, v5

    invoke-virtual {v0, v4, v6, v7}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 109
    :cond_30
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 112
    invoke-virtual {p0, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 113
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    if-ne p0, p1, :cond_5

    .line 11
    return v3

    .line 13
    :cond_5
    if-nez p1, :cond_8

    .line 14
    return v2

    .line 16
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    if-eq v0, v1, :cond_11

    .line 17
    return v2

    .line 19
    :cond_11
    check-cast p1, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    .line 20
    iget v0, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    iget v1, p1, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-eq v0, v1, :cond_1a

    .line 21
    return v2

    .line 23
    :cond_1a
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 24
    return v2

    .line 26
    :cond_25
    return v3
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    iget-object v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    .line 78
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    .line 80
    mul-int/lit8 v0, v9, 0x1

    int-to-long v2, v0

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 81
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    const-wide/16 v6, 0x0

    add-long/2addr v6, v0

    const/4 v8, 0x1

    move-object v1, p1

    .line 79
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 83
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v9, :cond_41

    .line 86
    mul-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    .line 87
    iget-object v3, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 90
    :cond_41
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 6

    .prologue
    .line 49
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 50
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 51
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, ".timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 16

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const-wide/16 v8, 0x8

    .line 117
    add-long v2, p2, v10

    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 119
    iget-object v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 120
    add-long v4, p2, v8

    add-long/2addr v4, v8

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 121
    add-long v4, p2, v8

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 122
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v1, v2, 0x1

    invoke-direct {v3, v1}, Landroid/os/HwBlob;-><init>(I)V

    move v1, v0

    .line 123
    :goto_28
    if-ge v1, v2, :cond_40

    .line 124
    mul-int/lit8 v0, v1, 0x1

    int-to-long v4, v0

    iget-object v0, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    .line 126
    :cond_40
    add-long v0, p2, v8

    add-long/2addr v0, v10

    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 128
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 6

    .prologue
    .line 93
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 94
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 96
    return-void
.end method
