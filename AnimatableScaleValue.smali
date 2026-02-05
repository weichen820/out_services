.class Lcom/airbnb/lottie/AnimatableScaleValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableScaleValue$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue",
        "<",
        "Lcom/airbnb/lottie/ScaleXY;",
        "Lcom/airbnb/lottie/ScaleXY;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/lottie/ScaleXY;

    invoke-direct {v0}, Lcom/airbnb/lottie/ScaleXY;-><init>()V

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/AnimatableScaleValue;)V
    .registers 2

    invoke-direct {p0}, Lcom/airbnb/lottie/AnimatableScaleValue;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/ScaleXY;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;>;",
            "Lcom/airbnb/lottie/ScaleXY;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableScaleValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

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
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseAnimatableValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_10

    .line 18
    new-instance v1, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/BaseAnimatableValue;->initialValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/ScaleXY;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 20
    :cond_10
    new-instance v0, Lcom/airbnb/lottie/ScaleKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/ScaleKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
