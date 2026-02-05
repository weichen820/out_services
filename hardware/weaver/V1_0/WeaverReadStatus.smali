.class public final Landroid/hardware/weaver/V1_0/WeaverReadStatus;
.super Ljava/lang/Object;
.source "WeaverReadStatus.java"


# static fields
.field public static final FAILED:I = 0x1

.field public static final INCORRECT_KEY:I = 0x2

.field public static final OK:I = 0x0

.field public static final THROTTLE:I = 0x3


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
    const/4 v0, 0x2

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const/4 v1, 0x0

    .line 22
    and-int/lit8 v3, p0, 0x2

    if-ne v3, v0, :cond_45

    .line 23
    const-string/jumbo v1, "INCORRECT_KEY"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_11
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1e

    .line 27
    const-string/jumbo v1, "THROTTLE"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    or-int/lit8 v0, v0, 0x3

    .line 30
    :cond_1e
    if-eq p0, v0, :cond_3d

    .line 31
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

    .line 33
    :cond_3d
    const-string/jumbo v0, " | "

    invoke-static {v0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    move v0, v1

    goto :goto_11
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 10
    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    .line 11
    const-string/jumbo v0, "INCORRECT_KEY"

    return-object v0

    .line 13
    :cond_7
    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    .line 14
    const-string/jumbo v0, "THROTTLE"

    return-object v0

    .line 16
    :cond_e
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
