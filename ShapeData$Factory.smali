.class Lcom/airbnb/lottie/ShapeData$Factory;
.super Ljava/lang/Object;
.source "ShapeData.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ShapeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue$Factory",
        "<",
        "Lcom/airbnb/lottie/ShapeData;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/airbnb/lottie/ShapeData$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    new-instance v0, Lcom/airbnb/lottie/ShapeData$Factory;

    invoke-direct {v0}, Lcom/airbnb/lottie/ShapeData$Factory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/ShapeData$Factory;->INSTANCE:Lcom/airbnb/lottie/ShapeData$Factory;

    .line 101
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private static vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;
    .registers 8

    .prologue
    .line 185
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p0, v0, :cond_36

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". There are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " points."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_36
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 191
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 192
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 193
    new-instance v3, Landroid/graphics/PointF;

    .line 194
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_72

    new-instance v2, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v2, v0

    .line 195
    :goto_5a
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_7b

    new-instance v4, Ljava/lang/Float;

    move-object v0, v1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 193
    :goto_6e
    invoke-direct {v3, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .line 194
    :cond_72
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    move v2, v0

    goto :goto_5a

    .line 195
    :cond_7b
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    goto :goto_6e
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/ShapeData;
    .registers 15

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_24

    .line 110
    nop

    nop

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 111
    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_22

    move-object v0, v1

    nop

    nop

    const-string/jumbo v3, "v"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 112
    nop

    nop

    .line 118
    :goto_1e
    if-nez v1, :cond_3a

    .line 119
    const/4 v0, 0x0

    return-object v0

    :cond_22
    move-object v1, v2

    .line 111
    goto :goto_1e

    .line 114
    :cond_24
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_38

    move-object v0, p1

    nop

    nop

    const-string/jumbo v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 115
    nop

    nop

    move-object v1, p1

    goto :goto_1e

    :cond_38
    move-object v1, v2

    .line 114
    goto :goto_1e

    .line 122
    :cond_3a
    const-string/jumbo v0, "v"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 123
    const-string/jumbo v0, "i"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 124
    const-string/jumbo v0, "o"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 125
    const-string/jumbo v0, "c"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 127
    if-eqz v2, :cond_5b

    if-nez v3, :cond_75

    .line 130
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to process points array or tangents. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_75
    if-eqz v4, :cond_5b

    .line 128
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v0, v6, :cond_5b

    .line 129
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v0, v6, :cond_5b

    .line 132
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_a2

    .line 133
    new-instance v0, Lcom/airbnb/lottie/ShapeData;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/airbnb/lottie/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/ShapeData;)V

    return-object v0

    .line 136
    :cond_a2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 137
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 138
    iget v0, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p2

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 139
    iget v0, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p2

    iput v0, v6, Landroid/graphics/PointF;->y:F

    .line 141
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    const/4 v0, 0x1

    :goto_bb
    if-ge v0, v1, :cond_102

    .line 144
    invoke-static {v0, v2}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v8

    .line 145
    add-int/lit8 v9, v0, -0x1

    invoke-static {v9, v2}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v9

    .line 146
    add-int/lit8 v10, v0, -0x1

    invoke-static {v10, v4}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v10

    .line 147
    invoke-static {v0, v3}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v11

    .line 148
    invoke-static {v9, v10}, Lcom/airbnb/lottie/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    .line 149
    invoke-static {v8, v11}, Lcom/airbnb/lottie/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    .line 151
    iget v11, v9, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, p2

    iput v11, v9, Landroid/graphics/PointF;->x:F

    .line 152
    iget v11, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, p2

    iput v11, v9, Landroid/graphics/PointF;->y:F

    .line 153
    iget v11, v10, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, p2

    iput v11, v10, Landroid/graphics/PointF;->x:F

    .line 154
    iget v11, v10, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, p2

    iput v11, v10, Landroid/graphics/PointF;->y:F

    .line 155
    iget v11, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, p2

    iput v11, v8, Landroid/graphics/PointF;->x:F

    .line 156
    iget v11, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, p2

    iput v11, v8, Landroid/graphics/PointF;->y:F

    .line 158
    new-instance v11, Lcom/airbnb/lottie/CubicCurveData;

    invoke-direct {v11, v9, v10, v8}, Lcom/airbnb/lottie/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 161
    :cond_102
    if-eqz v5, :cond_14e

    .line 162
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 163
    add-int/lit8 v8, v1, -0x1

    invoke-static {v8, v2}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 164
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v4}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 165
    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/airbnb/lottie/ShapeData$Factory;->vertexAtIndex(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 167
    invoke-static {v2, v1}, Lcom/airbnb/lottie/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 168
    invoke-static {v0, v3}, Lcom/airbnb/lottie/MiscUtils;->addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 170
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_146

    .line 171
    iget v3, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 172
    iget v3, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p2

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 173
    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 174
    iget v3, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 175
    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 176
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p2

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 179
    :cond_146
    new-instance v3, Lcom/airbnb/lottie/CubicCurveData;

    invoke-direct {v3, v1, v2, v0}, Lcom/airbnb/lottie/CubicCurveData;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_14e
    new-instance v0, Lcom/airbnb/lottie/ShapeData;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/airbnb/lottie/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/ShapeData;)V

    return-object v0

    :cond_155
    move-object v1, v2

    goto/16 :goto_1e
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/ShapeData$Factory;->valueFromObject(Ljava/lang/Object;F)Lcom/airbnb/lottie/ShapeData;

    move-result-object v0

    return-object v0
.end method
