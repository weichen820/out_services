.class abstract Lcom/airbnb/lottie/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
    }
.end annotation


# instance fields
.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "Lcom/airbnb/lottie/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    .line 33
    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 38
    invoke-virtual {p5}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 39
    invoke-virtual {p6}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 41
    if-nez p8, :cond_80

    .line 42
    iput-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 46
    :goto_53
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    .line 47
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    move v1, v2

    .line 49
    :goto_67
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_87

    .line 50
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_67

    .line 44
    :cond_80
    invoke-virtual {p8}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    goto :goto_53

    .line 53
    :cond_87
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    move v1, v2

    .line 55
    :goto_92
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a9

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_92

    .line 58
    :cond_a9
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v0, :cond_b2

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 62
    :cond_b2
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 65
    :goto_bc
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d0

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    .line 68
    :cond_d0
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v0, :cond_d9

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    :cond_d9
    return-void
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    .line 226
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 227
    return-void

    .line 230
    :cond_f
    invoke-static {p1}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    move v1, v0

    .line 231
    :goto_14
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    .line 232
    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    .line 237
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_4d

    .line 238
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v0, v0, v1

    cmpg-float v0, v0, v5

    if-gez v0, :cond_42

    .line 239
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aput v5, v0, v1

    .line 246
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v0, v1

    mul-float/2addr v3, v2

    aput v3, v0, v1

    .line 231
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 242
    :cond_4d
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aget v0, v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_42

    .line 243
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    aput v4, v0, v1

    goto :goto_42

    .line 248
    :cond_5a
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez v0, :cond_6c

    const/4 v0, 0x0

    .line 249
    :goto_5f
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v2, v3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 250
    return-void

    .line 248
    :cond_6c
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_5f
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .registers 16

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get1(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 140
    return-void

    .line 142
    :cond_d
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 143
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_36

    .line 144
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v4, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 143
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d

    .line 146
    :cond_36
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    move v1, v0

    .line 148
    :goto_44
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 149
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_44

    .line 151
    :cond_55
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get1(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/TrimPathContent;->getOffset()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v4, 0x43b40000    # 360.0f

    div-float v4, v0, v4

    .line 153
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get1(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/TrimPathContent;->getStart()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float v7, v0, v4

    .line 155
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get1(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/TrimPathContent;->getEnd()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float v8, v0, v4

    .line 158
    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v6, v2

    :goto_a4
    if-ltz v5, :cond_13e

    .line 159
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 160
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 161
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 162
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    .line 163
    cmpl-float v0, v8, v1

    if-lez v0, :cond_100

    sub-float v0, v8, v1

    add-float v4, v6, v9

    cmpg-float v0, v0, v4

    if-gez v0, :cond_100

    .line 164
    sub-float v0, v8, v1

    cmpg-float v0, v6, v0

    if-gez v0, :cond_100

    .line 168
    cmpl-float v0, v7, v1

    if-lez v0, :cond_fe

    .line 169
    sub-float v0, v7, v1

    div-float/2addr v0, v9

    .line 173
    :goto_e4
    sub-float v4, v8, v1

    div-float/2addr v4, v9

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 174
    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v10, v0, v4, v2}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 175
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 198
    :cond_f7
    :goto_f7
    add-float v4, v6, v9

    .line 158
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v6, v4

    goto :goto_a4

    :cond_fe
    move v0, v2

    .line 171
    goto :goto_e4

    .line 178
    :cond_100
    add-float v0, v6, v9

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_f7

    cmpl-float v0, v6, v8

    if-gtz v0, :cond_f7

    .line 180
    add-float v0, v6, v9

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_11c

    cmpg-float v0, v7, v6

    if-gez v0, :cond_11c

    .line 181
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_f7

    .line 184
    :cond_11c
    cmpg-float v0, v7, v6

    if-gez v0, :cond_135

    move v4, v2

    .line 190
    :goto_121
    add-float v0, v6, v9

    cmpl-float v0, v8, v0

    if-lez v0, :cond_13a

    move v0, v3

    .line 195
    :goto_128
    iget-object v10, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {v10, v4, v0, v2}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 196
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_f7

    .line 187
    :cond_135
    sub-float v0, v7, v6

    div-float/2addr v0, v9

    move v4, v0

    goto :goto_121

    .line 193
    :cond_13a
    sub-float v0, v8, v6

    div-float/2addr v0, v9

    goto :goto_128

    .line 200
    :cond_13e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    .line 113
    int-to-float v0, p3

    div-float v2, v0, v3

    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 114
    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p2}, Lcom/airbnb/lottie/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_40

    .line 118
    return-void

    .line 120
    :cond_40
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    move v2, v1

    .line 122
    :goto_44
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_92

    .line 123
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    .line 126
    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get1(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 127
    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    .line 122
    :goto_5d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_44

    .line 129
    :cond_61
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 130
    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_71
    if-ltz v3, :cond_8a

    .line 131
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v4, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 130
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_71

    .line 133
    :cond_8a
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5d

    .line 136
    :cond_92
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 203
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v2, v3

    .line 204
    :goto_b
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_41

    .line 205
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    move v4, v3

    .line 206
    :goto_1c
    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_3d

    .line 207
    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v5, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 206
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1c

    .line 204
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    .line 210
    :cond_41
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 212
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    div-float v3, v0, v7

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    .line 214
    iget-object v4, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    div-float v5, v0, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v7

    add-float/2addr v0, v5

    .line 213
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 215
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 218
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    .line 219
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v6

    .line 220
    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    .line 221
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    .line 217
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 223
    return-void
.end method

.method public onValueChanged()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 75
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 10
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
    const/4 v5, 0x0

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v2, v5

    :goto_9
    if-ltz v3, :cond_29

    .line 80
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 81
    instance-of v1, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v1, :cond_27

    move-object v1, v0

    .line 82
    nop

    nop

    invoke-virtual {v1}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v4, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v1, v4, :cond_27

    .line 83
    nop

    nop

    .line 79
    :goto_22
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move-object v2, v0

    goto :goto_9

    :cond_27
    move-object v0, v2

    .line 82
    goto :goto_22

    .line 86
    :cond_29
    if-eqz v2, :cond_2e

    .line 87
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 91
    :cond_2e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-object v3, v5

    :goto_36
    if-ltz v4, :cond_7c

    .line 92
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 93
    instance-of v1, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v1, :cond_67

    move-object v1, v0

    .line 94
    nop

    nop

    invoke-virtual {v1}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v6, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v1, v6, :cond_67

    .line 95
    if-eqz v3, :cond_54

    .line 96
    iget-object v1, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_54
    new-instance v3, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    move-object v1, v0

    nop

    nop

    invoke-direct {v3, v1, v5}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/TrimPathContent;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)V

    .line 99
    nop

    nop

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    move-object v1, v3

    .line 91
    :goto_62
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move-object v3, v1

    goto :goto_36

    .line 100
    :cond_67
    instance-of v1, v0, Lcom/airbnb/lottie/PathContent;

    if-eqz v1, :cond_86

    .line 101
    if-nez v3, :cond_84

    .line 102
    new-instance v1, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;

    invoke-direct {v1, v2, v5}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/TrimPathContent;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)V

    .line 104
    :goto_72
    invoke-static {v1}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->-get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v3

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 107
    :cond_7c
    if-eqz v3, :cond_83

    .line 108
    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_83
    return-void

    :cond_84
    move-object v1, v3

    goto :goto_72

    :cond_86
    move-object v1, v3

    goto :goto_62
.end method
