.class Lcom/airbnb/lottie/ShapeTrimPath$Factory;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ShapeTrimPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapeTrimPath;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 45
    new-instance v0, Lcom/airbnb/lottie/ShapeTrimPath;

    .line 46
    const-string/jumbo v1, "nm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string/jumbo v2, "m"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/ShapeTrimPath$Type;->forId(I)Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v2

    .line 48
    const-string/jumbo v3, "s"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, v6}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v3

    .line 49
    const-string/jumbo v4, "e"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, p1, v6}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v4

    .line 50
    const-string/jumbo v5, "o"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1, v6}, Lcom/airbnb/lottie/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v5

    .line 45
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/ShapeTrimPath$Type;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/ShapeTrimPath;)V

    return-object v0
.end method
