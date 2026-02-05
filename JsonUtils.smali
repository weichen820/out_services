.class Lcom/airbnb/lottie/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method static pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;
    .registers 8

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 19
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_23

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to parse point for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_23
    new-instance v0, Landroid/graphics/PointF;

    .line 23
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p1

    .line 24
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    .line 22
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;
    .registers 5

    .prologue
    .line 13
    new-instance v0, Landroid/graphics/PointF;

    .line 14
    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/JsonUtils;->valueFromObject(Ljava/lang/Object;)F

    move-result v1

    mul-float/2addr v1, p1

    .line 15
    const-string/jumbo v2, "y"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/JsonUtils;->valueFromObject(Ljava/lang/Object;)F

    move-result v2

    mul-float/2addr v2, p1

    .line 13
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static valueFromObject(Ljava/lang/Object;)F
    .registers 3

    .prologue
    .line 28
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_b

    .line 29
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 30
    :cond_b
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 31
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 32
    :cond_17
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_23

    .line 33
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 34
    :cond_23
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_30

    .line 35
    nop

    nop

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 37
    :cond_30
    const/4 v0, 0x0

    return v0
.end method
