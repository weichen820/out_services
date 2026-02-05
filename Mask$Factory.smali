.class Lcom/airbnb/lottie/Mask$Factory;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static newMask(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Mask;
    .registers 6

    .prologue
    .line 27
    const-string/jumbo v0, "mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 29
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 42
    :goto_12
    const-string/jumbo v1, "pt"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 41
    invoke-static {v1, p1}, Lcom/airbnb/lottie/AnimatableShapeValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableShapeValue;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/airbnb/lottie/Mask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/airbnb/lottie/Mask;-><init>(Lcom/airbnb/lottie/Mask$MaskMode;Lcom/airbnb/lottie/AnimatableShapeValue;Lcom/airbnb/lottie/Mask;)V

    return-object v2

    .line 27
    :cond_24
    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 32
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/Mask$MaskMode;

    goto :goto_12

    .line 27
    :cond_30
    const-string/jumbo v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 35
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/Mask$MaskMode;

    goto :goto_12

    .line 38
    :cond_3c
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/Mask$MaskMode;

    goto :goto_12
.end method
