.class Lcom/airbnb/lottie/TransformKeyframeAnimation;
.super Ljava/lang/Object;
.source "TransformKeyframeAnimation.java"


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private final opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final position:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/AnimatableTransform;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    .line 16
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getAnchorPoint()Lcom/airbnb/lottie/AnimatablePathValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePathValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 17
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 18
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getScale()Lcom/airbnb/lottie/AnimatableScaleValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableScaleValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 19
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getRotation()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 20
    invoke-virtual {p1}, Lcom/airbnb/lottie/AnimatableTransform;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 21
    return-void
.end method


# virtual methods
.method addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 29
    return-void
.end method

.method addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 37
    return-void
.end method

.method getMatrix()Landroid/graphics/Matrix;
    .registers 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->position:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 46
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1c

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_25

    .line 47
    :cond_1c
    iget-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 50
    :cond_25
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->rotation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 51
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3a

    .line 52
    iget-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 55
    :cond_3a
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->scale:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ScaleXY;

    .line 56
    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5f

    .line 57
    :cond_52
    iget-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 60
    :cond_5f
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->anchorPoint:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 61
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_73

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7e

    .line 62
    :cond_73
    iget-object v1, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 64
    :cond_7e
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/TransformKeyframeAnimation;->opacity:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    return-object v0
.end method
