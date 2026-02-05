.class public final Landroid/hardware/usb/V1_0/PortDataRole;
.super Ljava/lang/Object;
.source "PortDataRole.java"


# static fields
.field public static final DEVICE:I = 0x2

.field public static final HOST:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NUM_DATA_ROLES:I = 0x3


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
    const/4 v0, 0x1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v1, 0x0

    .line 28
    const-string/jumbo v3, "NONE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    and-int/lit8 v3, p0, 0x1

    if-ne v3, v0, :cond_58

    .line 30
    const-string/jumbo v1, "HOST"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_24

    .line 34
    const-string/jumbo v1, "DEVICE"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    or-int/lit8 v0, v0, 0x2

    .line 37
    :cond_24
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_31

    .line 38
    const-string/jumbo v1, "NUM_DATA_ROLES"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    or-int/lit8 v0, v0, 0x3

    .line 41
    :cond_31
    if-eq p0, v0, :cond_50

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
    :cond_50
    const-string/jumbo v0, " | "

    invoke-static {v0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_58
    move v0, v1

    goto :goto_17
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 10
    if-nez p0, :cond_6

    .line 11
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 13
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 14
    const-string/jumbo v0, "HOST"

    return-object v0

    .line 16
    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 17
    const-string/jumbo v0, "DEVICE"

    return-object v0

    .line 19
    :cond_14
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1b

    .line 20
    const-string/jumbo v0, "NUM_DATA_ROLES"

    return-object v0

    .line 22
    :cond_1b
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
