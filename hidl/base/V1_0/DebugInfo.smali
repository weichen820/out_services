.class public final Landroid/hidl/base/V1_0/DebugInfo;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hidl/base/V1_0/DebugInfo$Architecture;
    }
.end annotation


# instance fields
.field public arch:I

.field public pid:I

.field public ptr:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Landroid/hidl/base/V1_0/DebugInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 99
    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 102
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 104
    mul-int/lit8 v1, v10, 0x18

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 105
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 103
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 107
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 108
    const/4 v0, 0x0

    :goto_24
    if-ge v0, v10, :cond_37

    .line 109
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 110
    mul-int/lit8 v3, v0, 0x18

    int-to-long v4, v3

    invoke-virtual {v2, p0, v1, v4, v5}, Landroid/hidl/base/V1_0/DebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 111
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 115
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
            "Landroid/hidl/base/V1_0/DebugInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 133
    new-instance v2, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v2, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 135
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 136
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 137
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 138
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v1, v3, 0x18

    invoke-direct {v4, v1}, Landroid/os/HwBlob;-><init>(I)V

    move v1, v0

    .line 139
    :goto_1e
    if-ge v1, v3, :cond_30

    .line 140
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hidl/base/V1_0/DebugInfo;

    mul-int/lit8 v5, v1, 0x18

    int-to-long v6, v5

    invoke-virtual {v0, v4, v6, v7}, Landroid/hidl/base/V1_0/DebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 142
    :cond_30
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    invoke-virtual {p0, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 146
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    if-ne p0, p1, :cond_5

    .line 49
    return v5

    .line 51
    :cond_5
    if-nez p1, :cond_8

    .line 52
    return v4

    .line 54
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/hidl/base/V1_0/DebugInfo;

    if-eq v0, v1, :cond_11

    .line 55
    return v4

    .line 57
    :cond_11
    check-cast p1, Landroid/hidl/base/V1_0/DebugInfo;

    .line 58
    iget v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    iget v1, p1, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    if-eq v0, v1, :cond_1a

    .line 59
    return v4

    .line 61
    :cond_1a
    iget-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    iget-wide v2, p1, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 62
    return v4

    .line 64
    :cond_23
    iget v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    iget v1, p1, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    if-eq v0, v1, :cond_2a

    .line 65
    return v4

    .line 67
    :cond_2a
    return v5
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 74
    iget-wide v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 72
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 121
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 122
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 123
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 6

    .prologue
    .line 93
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 94
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hidl/base/V1_0/DebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v1, ".pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, ", .ptr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-wide v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v1, ", .arch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    invoke-static {v1}, Landroid/hidl/base/V1_0/DebugInfo$Architecture;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 151
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 152
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 153
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 6

    .prologue
    .line 126
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 127
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hidl/base/V1_0/DebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 129
    return-void
.end method
