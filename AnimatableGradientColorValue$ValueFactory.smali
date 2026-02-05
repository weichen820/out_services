.class Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableGradientColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue$Factory",
        "<",
        "Lcom/airbnb/lottie/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorPoints:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(ILcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;-><init>(I)V

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/GradientColor;Lorg/json/JSONArray;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 115
    iget v0, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    .line 116
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gt v2, v0, :cond_c

    .line 117
    return-void

    .line 120
    :cond_c
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 121
    new-array v3, v2, [D

    .line 122
    new-array v4, v2, [D

    move v2, v0

    move v0, v1

    .line 124
    :goto_19
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_35

    .line 125
    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_2c

    .line 126
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    aput-wide v6, v3, v0

    .line 124
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 128
    :cond_2c
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 133
    :cond_35
    :goto_35
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getSize()I

    move-result v0

    if-ge v1, v0, :cond_65

    .line 134
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v0

    aget v0, v0, v1

    .line 136
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v2

    aget v2, v2, v1

    float-to-double v6, v2

    invoke-direct {p0, v6, v7, v3, v4}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->getOpacityAtPosition(D[D[D)I

    move-result v2

    .line 137
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 138
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 139
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 135
    invoke-static {v2, v5, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 141
    invoke-virtual {p1}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v2

    aput v0, v2, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 143
    :cond_65
    return-void
.end method

.method private getOpacityAtPosition(D[D[D)I
    .registers 16
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation

    .prologue
    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 147
    const/4 v0, 0x1

    move v2, v0

    :goto_7
    array-length v0, p3

    if-ge v2, v0, :cond_2d

    .line 148
    add-int/lit8 v0, v2, -0x1

    aget-wide v0, p3, v0

    .line 149
    aget-wide v4, p3, v2

    .line 150
    aget-wide v6, p3, v2

    cmpl-double v3, v6, p1

    if-ltz v3, :cond_29

    .line 151
    sub-double v6, p1, v0

    sub-double v0, v4, v0

    div-double v4, v6, v0

    .line 152
    add-int/lit8 v0, v2, -0x1

    aget-wide v0, p4, v0

    aget-wide v2, p4, v2

    invoke-static/range {v0 .. v5}, Lcom/airbnb/lottie/MiscUtils;->lerp(DDD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    return v0

    .line 147
    :cond_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 155
    :cond_2d
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p4, v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/GradientColor;
    .registers 15

    .prologue
    const/4 v0, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 68
    check-cast p1, Lorg/json/JSONArray;

    .line 69
    iget v1, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v3, v1, [F

    .line 70
    iget v1, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    new-array v4, v1, [I

    .line 71
    new-instance v5, Lcom/airbnb/lottie/GradientColor;

    invoke-direct {v5, v3, v4}, Lcom/airbnb/lottie/GradientColor;-><init>([F[I)V

    .line 74
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v2, v2, 0x4

    if-eq v1, v2, :cond_61

    .line 75
    const-string/jumbo v1, "LOTTIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected gradient length: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    const-string/jumbo v6, ". Expected "

    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    iget v6, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v6, v6, 0x4

    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    const-string/jumbo v6, ". This may affect the appearance of the gradient. "

    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    const-string/jumbo v6, "Make sure to save your After Effects file before exporting an animation with "

    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    const-string/jumbo v6, "gradients."

    .line 75
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    move v1, v0

    move v2, v0

    .line 80
    :goto_63
    iget v6, p0, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->colorPoints:I

    mul-int/lit8 v6, v6, 0x4

    if-ge v0, v6, :cond_8e

    .line 81
    div-int/lit8 v6, v0, 0x4

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    .line 83
    rem-int/lit8 v7, v0, 0x4

    packed-switch v7, :pswitch_data_92

    .line 80
    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 86
    :pswitch_77
    double-to-float v7, v8

    aput v7, v3, v6

    goto :goto_74

    .line 89
    :pswitch_7b
    mul-double v6, v8, v10

    double-to-int v2, v6

    .line 90
    goto :goto_74

    .line 92
    :pswitch_7f
    mul-double v6, v8, v10

    double-to-int v1, v6

    .line 93
    goto :goto_74

    .line 95
    :pswitch_83
    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 96
    const/16 v8, 0xff

    invoke-static {v8, v2, v1, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v4, v6

    goto :goto_74

    .line 101
    :cond_8e
    invoke-direct {p0, v5, p1}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/GradientColor;Lorg/json/JSONArray;)V

    .line 102
    return-object v5

    .line 83
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_77
        :pswitch_7b
        :pswitch_7f
        :pswitch_83
    .end packed-switch
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/GradientColor;

    move-result-object v0

    return-object v0
.end method
