.class Lcom/airbnb/lottie/AnimatableFloatValue;
.super Lcom/airbnb/lottie/BaseAnimatableValue;
.source "AnimatableFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableFloatValue$Factory;,
        Lcom/airbnb/lottie/AnimatableFloatValue$ValueFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/BaseAnimatableValue",
        "<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .registers 2

    invoke-direct {p0}, Lcom/airbnb/lottie/AnimatableFloatValue;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/Float;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/Float;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/AnimatableFloatValue;-><init>(Ljava/util/List;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

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
            "Ljava/lang/Float;",
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

    check-cast v0, Ljava/lang/Float;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/StaticKeyframeAnimation;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 23
    :cond_10
    new-instance v0, Lcom/airbnb/lottie/FloatKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getInitialValue()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/BaseAnimatableValue;->initialValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic getInitialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableFloatValue;->getInitialValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
