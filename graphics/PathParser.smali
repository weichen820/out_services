.class public Landroid/support/v4/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/PathParser$ExtractFloatResult;,
        Landroid/support/v4/graphics/PathParser$PathDataNode;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public static canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 136
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 137
    :cond_5
    return v1

    .line 140
    :cond_6
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_b

    .line 141
    return v1

    :cond_b
    move v0, v1

    .line 144
    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_29

    .line 145
    aget-object v2, p0, v0

    iget-char v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v3, p1, v0

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    if-ne v2, v3, :cond_25

    .line 146
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-eq v2, v3, :cond_26

    .line 147
    :cond_25
    return v1

    .line 144
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 150
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method static copyOfRange([FII)[F
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 54
    if-le p1, p2, :cond_9

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_9
    array-length v0, p0

    .line 58
    if-ltz p1, :cond_e

    if-le p1, v0, :cond_14

    .line 59
    :cond_e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_14
    sub-int v1, p2, p1

    .line 62
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    new-array v1, v1, [F

    .line 64
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v1
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 91
    if-nez p0, :cond_6

    .line 92
    return-object v0

    .line 97
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v3

    .line 98
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_34

    .line 99
    invoke-static {p0, v0}, Landroid/support/v4/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v4

    .line 100
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30

    .line 102
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v2

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0, v2}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 107
    :cond_30
    add-int/lit8 v0, v4, 0x1

    move v2, v4

    goto :goto_d

    .line 109
    :cond_34
    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_46

    .line 110
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-array v1, v3, [F

    invoke-static {v5, v0, v1}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 112
    :cond_46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-object v0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 74
    invoke-static {p0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_2b

    .line 77
    :try_start_c
    invoke-static {v1, v0}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_10

    .line 81
    return-object v0

    .line 78
    :catch_10
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_2b
    return-object v2
.end method

.method public static deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p0, :cond_4

    .line 121
    return-object v0

    .line 123
    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 124
    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_17

    .line 125
    new-instance v2, Landroid/support/v4/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V

    aput-object v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 127
    :cond_17
    return-object v1
.end method

.method private static extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 258
    iput-boolean v1, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, p1

    .line 261
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_18

    .line 264
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 265
    sparse-switch v6, :sswitch_data_38

    move v0, v1

    .line 291
    :goto_16
    if-eqz v3, :cond_34

    .line 297
    :cond_18
    iput v4, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 298
    return-void

    :sswitch_1b
    move v0, v1

    move v3, v5

    .line 269
    goto :goto_16

    .line 272
    :sswitch_1e
    if-eq v4, p1, :cond_27

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_27

    .line 274
    iput-boolean v5, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v3, v5

    :cond_27
    move v0, v1

    .line 276
    goto :goto_16

    .line 278
    :sswitch_29
    if-nez v2, :cond_2e

    move v2, v5

    :goto_2c
    move v0, v1

    .line 285
    goto :goto_16

    .line 283
    :cond_2e
    iput-boolean v5, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v3, v5

    goto :goto_2c

    :sswitch_32
    move v0, v5

    .line 289
    goto :goto_16

    .line 261
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 265
    nop

    :sswitch_data_38
    .sparse-switch
        0x20 -> :sswitch_1b
        0x2c -> :sswitch_1b
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_29
        0x45 -> :sswitch_32
        0x65 -> :sswitch_32
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_11

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_14

    .line 210
    :cond_11
    new-array v0, v2, [F

    return-object v0

    .line 213
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [F

    .line 215
    const/4 v0, 0x1

    .line 218
    new-instance v5, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v5}, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;-><init>()V

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v0

    .line 224
    :goto_25
    if-ge v3, v6, :cond_44

    .line 225
    invoke-static {p0, v3, v5}, Landroid/support/v4/graphics/PathParser;->extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V

    .line 226
    iget v0, v5, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 228
    if-ge v3, v0, :cond_6c

    .line 229
    add-int/lit8 v1, v2, 0x1

    .line 230
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v4, v2

    .line 233
    :goto_3a
    iget-boolean v2, v5, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v2, :cond_41

    :goto_3e
    move v3, v0

    move v2, v1

    goto :goto_25

    .line 237
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 240
    :cond_44
    const/4 v0, 0x0

    invoke-static {v4, v0, v2}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_48} :catch_4a

    move-result-object v0

    return-object v0

    .line 241
    :catch_4a
    move-exception v0

    .line 242
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6c
    move v1, v2

    goto :goto_3a
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 172
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    .line 179
    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    .line 180
    return p1

    .line 182
    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 184
    :cond_24
    return p1
.end method

.method public static updateNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 161
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_27

    .line 162
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v3, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    move v2, v1

    .line 163
    :goto_e
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-ge v2, v3, :cond_24

    .line 164
    aget-object v3, p0, v0

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget-object v4, p1, v0

    iget-object v4, v4, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v4, v4, v2

    aput v4, v3, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 161
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 167
    :cond_27
    return-void
.end method
