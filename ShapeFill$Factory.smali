.class Lcom/airbnb/lottie/ShapeFill$Factory;
.super Ljava/lang/Object;
.source "ShapeFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/ShapeFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/ShapeFill;
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 32
    const-string/jumbo v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    const-string/jumbo v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_40

    .line 36
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableColorValue;

    move-result-object v4

    .line 39
    :goto_16
    const-string/jumbo v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_3e

    .line 41
    invoke-static {v0, p1}, Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v5

    .line 43
    :goto_23
    const-string/jumbo v0, "fillEnabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 45
    const-string/jumbo v0, "r"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    if-ne v0, v3, :cond_3b

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 48
    :goto_35
    new-instance v0, Lcom/airbnb/lottie/ShapeFill;

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/ShapeFill;)V

    return-object v0

    .line 46
    :cond_3b
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_35

    :cond_3e
    move-object v5, v6

    goto :goto_23

    :cond_40
    move-object v4, v6

    goto :goto_16
.end method
