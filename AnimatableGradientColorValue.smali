.class Lcom/airbnb/lottie/AnimatableGradientColorValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableGradientColorValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableGradientColorValue$Factory;,
        Lcom/airbnb/lottie/AnimatableGradientColorValue$ValueFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue",
        "<",
        "Lcom/airbnb/lottie/GradientColor;",
        "Lcom/airbnb/lottie/GradientColor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;>;",
            "Lcom/airbnb/lottie/GradientColor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/AnimatableGradientColorValue;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableGradientColorValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/GradientColor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseAnimatableValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_10

    .line 20
    new-instance v1, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/BaseAnimatableValue;->initialValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/GradientColor;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 22
    :cond_10
    new-instance v0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
