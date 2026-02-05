.class final Lcom/airbnb/lottie/AnimatableIntegerValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatableIntegerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/airbnb/lottie/AnimatableIntegerValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/AnimatableIntegerValue;-><init>(Lcom/airbnb/lottie/AnimatableIntegerValue;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/AnimatableIntegerValue;
    .registers 5

    .prologue
    .line 40
    const-string/jumbo v0, "x"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 41
    const-string/jumbo v0, "LOTTIE"

    const-string/jumbo v1, "Animation has expressions which are not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_12
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;->-get0()Lcom/airbnb/lottie/AnimatableIntegerValue$ValueFactory;

    move-result-object v1

    .line 43
    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/AnimatableValue$Factory;)Lcom/airbnb/lottie/AnimatableValueParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/AnimatableValueParser$Result;

    move-result-object v1

    .line 46
    iget-object v0, v1, Lcom/airbnb/lottie/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 47
    new-instance v2, Lcom/airbnb/lottie/AnimatableIntegerValue;

    iget-object v1, v1, Lcom/airbnb/lottie/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v2, v1, v0}, Lcom/airbnb/lottie/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-object v2
.end method
