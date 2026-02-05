.class Lcom/airbnb/lottie/Keyframe$Factory;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/Keyframe;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/AnimatableValue$Factory",
            "<TT;>;)",
            "Lcom/airbnb/lottie/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v9, -0x3d380000    # -100.0f

    const/4 v6, 0x0

    .line 99
    const/4 v5, 0x0

    .line 104
    const-string/jumbo v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 105
    const-string/jumbo v0, "t"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 106
    const-string/jumbo v0, "s"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_b4

    .line 108
    invoke-interface {p3, v0, p2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    .line 111
    :goto_28
    const-string/jumbo v1, "e"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_b2

    .line 113
    invoke-interface {p3, v1, p2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v1

    .line 116
    :goto_35
    const-string/jumbo v2, "o"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 117
    const-string/jumbo v3, "i"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 118
    if-eqz v2, :cond_67

    if-eqz v8, :cond_67

    .line 119
    invoke-static {v2, p2}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 120
    invoke-static {v8, p2}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 123
    :goto_4f
    const-string/jumbo v8, "h"

    invoke-virtual {p0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_6a

    .line 125
    :goto_58
    if-eqz v4, :cond_6c

    .line 128
    invoke-static {}, Lcom/airbnb/lottie/Keyframe;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v4

    move-object v3, v0

    move-object v2, v0

    .line 143
    :goto_60
    new-instance v0, Lcom/airbnb/lottie/Keyframe;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object v0

    :cond_67
    move-object v2, v6

    move-object v3, v6

    .line 118
    goto :goto_4f

    :cond_6a
    move v4, v7

    .line 123
    goto :goto_58

    .line 129
    :cond_6c
    if-eqz v3, :cond_a3

    .line 130
    iget v4, v3, Landroid/graphics/PointF;->x:F

    neg-float v7, p2

    invoke-static {v4, v7, p2}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 131
    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v9, v10}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 132
    iget v4, v2, Landroid/graphics/PointF;->x:F

    neg-float v7, p2

    invoke-static {v4, v7, p2}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 133
    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v9, v10}, Lcom/airbnb/lottie/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 135
    iget v4, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, p2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, p2

    iget v7, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, p2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, p2

    .line 134
    invoke-static {v4, v3, v7, v2}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    move-object v3, v1

    move-object v2, v0

    goto :goto_60

    .line 137
    :cond_a3
    invoke-static {}, Lcom/airbnb/lottie/Keyframe;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v4

    move-object v3, v1

    move-object v2, v0

    goto :goto_60

    .line 140
    :cond_aa
    invoke-interface {p3, p0, p2}, Lcom/airbnb/lottie/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v6

    move-object v3, v1

    move-object v2, v1

    .line 141
    goto :goto_60

    :cond_b2
    move-object v1, v6

    goto :goto_35

    :cond_b4
    move-object v0, v6

    goto/16 :goto_28
.end method

.method static parseKeyframes(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/AnimatableValue$Factory",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 149
    if-nez v1, :cond_c

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 152
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    :goto_11
    if-ge v0, v1, :cond_21

    .line 154
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/airbnb/lottie/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/Keyframe;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 158
    :cond_21
    invoke-static {v2}, Lcom/airbnb/lottie/Keyframe;->setEndFrames(Ljava/util/List;)V

    .line 159
    return-object v2
.end method
