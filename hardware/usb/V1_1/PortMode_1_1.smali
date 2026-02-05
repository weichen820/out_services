.class public final Landroid/hardware/usb/V1_1/PortMode_1_1;
.super Ljava/lang/Object;
.source "PortMode_1_1.java"


# static fields
.field public static final AUDIO_ACCESSORY:I = 0x4

.field public static final DEBUG_ACCESSORY:I = 0x8

.field public static final DFP:I = 0x2

.field public static final DRP:I = 0x3

.field public static final NONE:I = 0x0

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_MODES_1_1:I = 0x10

.field public static final UFP:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x4

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    const/4 v1, 0x0

    .line 29
    and-int/lit8 v3, p0, 0x4

    if-ne v3, v0, :cond_54

    .line 30
    const-string/jumbo v1, "AUDIO_ACCESSORY"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_11
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1f

    .line 34
    const-string/jumbo v1, "DEBUG_ACCESSORY"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    or-int/lit8 v0, v0, 0x8

    .line 37
    :cond_1f
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2d

    .line 38
    const-string/jumbo v1, "NUM_MODES_1_1"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    or-int/lit8 v0, v0, 0x10

    .line 41
    :cond_2d
    if-eq p0, v0, :cond_4c

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    not-int v0, v0

    and-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_4c
    const-string/jumbo v0, " | "

    invoke-static {v0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_54
    move v0, v1

    goto :goto_11
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 14
    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    .line 15
    const-string/jumbo v0, "AUDIO_ACCESSORY"

    return-object v0

    .line 17
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_f

    .line 18
    const-string/jumbo v0, "DEBUG_ACCESSORY"

    return-object v0

    .line 20
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_17

    .line 21
    const-string/jumbo v0, "NUM_MODES_1_1"

    return-object v0

    .line 23
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
