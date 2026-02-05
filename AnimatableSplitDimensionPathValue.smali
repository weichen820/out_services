.class Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;
.super Ljava/lang/Object;
.source "AnimatableSplitDimensionPathValue.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final animatableXDimension:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final animatableYDimension:Lcom/airbnb/lottie/AnimatableFloatValue;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 13
    iput-object p2, p0, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    return-object v0
.end method

.method public createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;

    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v2}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;-><init>(Lcom/airbnb/lottie/KeyframeAnimation;Lcom/airbnb/lottie/KeyframeAnimation;)V

    return-object v0
.end method

.method public hasAnimation()Z
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;->animatableXDimension:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseAnimatableValue;->hasAnimation()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableSplitDimensionPathValue;->animatableYDimension:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseAnimatableValue;->hasAnimation()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method
