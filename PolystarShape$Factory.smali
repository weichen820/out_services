.class Lcom/airbnb/lottie/PolystarShape$Factory;
.super Ljava/lang/Object;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/PolystarShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/PolystarShape;
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 61
    const-string/jumbo v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string/jumbo v0, "sy"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/lottie/PolystarShape$Type;->forValue(I)Lcom/airbnb/lottie/PolystarShape$Type;

    move-result-object v2

    .line 64
    const-string/jumbo v0, "pt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v8}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v3

    .line 66
    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v4

    .line 68
    const-string/jumbo v0, "r"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v8}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v5

    .line 70
    const-string/jumbo v0, "or"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v7

    .line 72
    const-string/jumbo v0, "os"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v8}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v9

    .line 76
    sget-object v0, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    if-ne v2, v0, :cond_6b

    .line 78
    const-string/jumbo v0, "ir"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v6

    .line 80
    const-string/jumbo v0, "is"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, v8}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v8

    .line 85
    :goto_65
    new-instance v0, Lcom/airbnb/lottie/PolystarShape;

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/lottie/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/PolystarShape$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/PolystarShape;)V

    return-object v0

    :cond_6b
    move-object v8, v10

    move-object v6, v10

    .line 83
    goto :goto_65
.end method
