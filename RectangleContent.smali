.class Lcom/airbnb/lottie/RectangleContent;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private final sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/RectangleShape;)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    .line 24
    invoke-virtual {p3}, Lcom/airbnb/lottie/RectangleShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->name:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/airbnb/lottie/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 26
    invoke-virtual {p3}, Lcom/airbnb/lottie/RectangleShape;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 27
    invoke-virtual {p3}, Lcom/airbnb/lottie/RectangleShape;->getSize()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 28
    invoke-virtual {p3}, Lcom/airbnb/lottie/RectangleShape;->getCornerRadius()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 37
    return-void
.end method

.method private invalidate()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/RectangleContent;->isPathValid:Z

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 50
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 64
    iget-boolean v0, p0, Lcom/airbnb/lottie/RectangleContent;->isPathValid:Z

    if-eqz v0, :cond_d

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 68
    :cond_d
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->sizeAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 71
    iget v2, v0, Landroid/graphics/PointF;->x:F

    div-float v3, v2, v11

    .line 72
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v4, v0, v11

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez v0, :cond_110

    move v0, v1

    .line 74
    :goto_27
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 75
    cmpl-float v5, v0, v2

    if-lez v5, :cond_11e

    .line 80
    :goto_2f
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 82
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    add-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    sub-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    cmpl-float v5, v2, v1

    if-lez v5, :cond_71

    .line 87
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    mul-float v7, v11, v2

    sub-float/2addr v6, v7

    .line 88
    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    mul-float v8, v11, v2

    sub-float/2addr v7, v8

    .line 89
    iget v8, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v3

    .line 90
    iget v9, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v4

    .line 87
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v1, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 94
    :cond_71
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    add-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 96
    cmpl-float v5, v2, v1

    if-lez v5, :cond_9f

    .line 97
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    .line 98
    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    mul-float v8, v11, v2

    sub-float/2addr v7, v8

    .line 99
    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v3

    mul-float v9, v11, v2

    add-float/2addr v8, v9

    .line 100
    iget v9, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v4

    .line 97
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v12, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 104
    :cond_9f
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    add-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    cmpl-float v5, v2, v1

    if-lez v5, :cond_cf

    .line 107
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    .line 108
    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    .line 109
    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v3

    mul-float v9, v11, v2

    add-float/2addr v8, v9

    .line 110
    iget v9, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v4

    mul-float v10, v11, v2

    add-float/2addr v9, v10

    .line 107
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v5, v6, v7, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 114
    :cond_cf
    iget-object v5, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    sub-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    cmpl-float v1, v2, v1

    if-lez v1, :cond_fe

    .line 117
    iget-object v1, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v3

    mul-float v6, v11, v2

    sub-float/2addr v5, v6

    .line 118
    iget v6, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v4

    .line 119
    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v7

    .line 120
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    mul-float/2addr v2, v11

    add-float/2addr v0, v2

    .line 117
    invoke-virtual {v1, v5, v6, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/RectangleContent;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 123
    :cond_fe
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 125
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/RectangleContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/RectangleContent;->isPathValid:Z

    .line 128
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 73
    :cond_110
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->cornerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_27

    :cond_11e
    move v2, v0

    goto/16 :goto_2f
.end method

.method public onValueChanged()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/lottie/RectangleContent;->invalidate()V

    .line 45
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2a

    .line 54
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 55
    instance-of v1, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v1, :cond_26

    move-object v1, v0

    .line 56
    nop

    nop

    invoke-virtual {v1}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v3, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v1, v3, :cond_26

    .line 57
    nop

    nop

    iput-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 53
    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 61
    :cond_2a
    return-void
.end method
