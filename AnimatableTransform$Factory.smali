.class Lcom/airbnb/lottie/AnimatableTransform$Factory;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/AnimatableTransform;
    .registers 7

    .prologue
    .line 31
    new-instance v1, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    .line 32
    new-instance v2, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v2}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    .line 33
    invoke-static {}, Lcom/airbnb/lottie/AnimatableScaleValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v3

    .line 34
    invoke-static {}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v4

    .line 35
    invoke-static {}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v5

    .line 36
    new-instance v0, Lcom/airbnb/lottie/AnimatableTransform;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/AnimatableTransform;-><init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableTransform;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableTransform;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 45
    const-string/jumbo v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_5a

    .line 47
    new-instance v1, Lcom/airbnb/lottie/AnimatablePathValue;

    const-string/jumbo v2, "k"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    .line 56
    :goto_16
    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_69

    .line 59
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v2

    .line 64
    :goto_23
    const-string/jumbo v0, "s"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_71

    .line 66
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableScaleValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v3

    .line 72
    :goto_30
    const-string/jumbo v0, "r"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    if-nez v0, :cond_40

    .line 74
    const-string/jumbo v0, "rz"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    :cond_40
    if-eqz v0, :cond_80

    .line 77
    const/4 v4, 0x0

    invoke-static {v0, p1, v4}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v4

    .line 82
    :goto_47
    const-string/jumbo v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_88

    .line 84
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v5

    .line 89
    :goto_54
    new-instance v0, Lcom/airbnb/lottie/AnimatableTransform;

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/AnimatableTransform;-><init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableTransform;)V

    return-object v0

    .line 51
    :cond_5a
    const-string/jumbo v0, "LOTTIE"

    const-string/jumbo v1, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Lcom/airbnb/lottie/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/AnimatablePathValue;-><init>()V

    goto :goto_16

    .line 61
    :cond_69
    const-string/jumbo v0, "position"

    invoke-static {v0}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    move-object v2, v6

    goto :goto_23

    .line 69
    :cond_71
    new-instance v3, Lcom/airbnb/lottie/AnimatableScaleValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/airbnb/lottie/ScaleXY;

    invoke-direct {v4}, Lcom/airbnb/lottie/ScaleXY;-><init>()V

    invoke-direct {v3, v0, v4}, Lcom/airbnb/lottie/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/ScaleXY;)V

    goto :goto_30

    .line 79
    :cond_80
    const-string/jumbo v0, "rotation"

    invoke-static {v0}, Lcom/airbnb/lottie/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    move-object v4, v6

    goto :goto_47

    .line 87
    :cond_88
    new-instance v5, Lcom/airbnb/lottie/AnimatableIntegerValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/airbnb/lottie/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    goto :goto_54
.end method

.method private static throwMissingTransform(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing transform for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
