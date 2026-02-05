.class final Lcom/airbnb/lottie/AnimatableGradientColorValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableGradientColorValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableGradientColorValue;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string/jumbo v0, "p"

    const-string/jumbo v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v2, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;

    invoke-direct {v2, v0, v3}, Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;-><init>(ILcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;)V

    .line 32
    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object v1

    .line 35
    iget-object v0, v1, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/GradientColor;

    .line 36
    new-instance v2, Lcom/airbnb/lottie/AnimatableGradientColorValue;

    iget-object v1, v1, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v2, v1, v0, v3}, Lcom/airbnb/lottie/AnimatableGradientColorValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/AnimatableGradientColorValue;)V

    return-object v2
.end method
