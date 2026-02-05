.class Lcom/airbnb/lottie/PathKeyframe$Factory;
.super Ljava/lang/Object;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/PathKeyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/PathKeyframe;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/AnimatableValue$Factory",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/airbnb/lottie/PathKeyframe;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 27
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v0

    .line 26
    invoke-static {p0, p1, v0, p2}, Lcom/airbnb/lottie/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/Keyframe;

    move-result-object v10

    .line 30
    const-string/jumbo v0, "ti"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "to"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 32
    if-eqz v0, :cond_75

    if-eqz v1, :cond_75

    .line 33
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v2

    invoke-static {v0, v2}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    move-object v8, v0

    move-object v9, v1

    .line 37
    :goto_2d
    new-instance v0, Lcom/airbnb/lottie/PathKeyframe;

    iget-object v2, v10, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    .line 38
    iget-object v3, v10, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, v10, Lcom/airbnb/lottie/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iget v5, v10, Lcom/airbnb/lottie/Keyframe;->startFrame:F

    iget-object v6, v10, Lcom/airbnb/lottie/Keyframe;->endFrame:Ljava/lang/Float;

    move-object v1, p1

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/PathKeyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/PathKeyframe;)V

    .line 42
    iget-object v1, v10, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v1, :cond_78

    iget-object v1, v10, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v1, :cond_78

    .line 43
    iget-object v1, v10, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v10, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v10, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    .line 45
    :goto_5d
    iget-object v2, v0, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v2, :cond_74

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_74

    .line 46
    iget-object v1, v10, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v10, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-static {v1, v2, v9, v8}, Lcom/airbnb/lottie/Utils;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/PathKeyframe;->-set0(Lcom/airbnb/lottie/PathKeyframe;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 48
    :cond_74
    return-object v0

    :cond_75
    move-object v8, v7

    move-object v9, v7

    .line 32
    goto :goto_2d

    .line 42
    :cond_78
    const/4 v1, 0x0

    goto :goto_5d
.end method
