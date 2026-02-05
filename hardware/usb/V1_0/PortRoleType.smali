.class public final Landroid/hardware/usb/V1_0/PortRoleType;
.super Ljava/lang/Object;
.source "PortRoleType.java"


# static fields
.field public static final DATA_ROLE:I = 0x0

.field public static final MODE:I = 0x2

.field public static final POWER_ROLE:I = 0x1


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

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    const/4 v1, 0x0

    .line 24
    const-string/jumbo v3, "DATA_ROLE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    and-int/lit8 v3, p0, 0x1

    if-ne v3, v0, :cond_4b

    .line 26
    const-string/jumbo v1, "POWER_ROLE"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :goto_17
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_24

    .line 30
    const-string/jumbo v1, "MODE"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    or-int/lit8 v0, v0, 0x2

    .line 33
    :cond_24
    if-eq p0, v0, :cond_43

    .line 34
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

    .line 36
    :cond_43
    const-string/jumbo v0, " | "

    invoke-static {v0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4b
    move v0, v1

    goto :goto_17
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 9
    if-nez p0, :cond_6

    .line 10
    const-string/jumbo v0, "DATA_ROLE"

    return-object v0

    .line 12
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 13
    const-string/jumbo v0, "POWER_ROLE"

    return-object v0

    .line 15
    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 16
    const-string/jumbo v0, "MODE"

    return-object v0

    .line 18
    :cond_14
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
