.class Lcom/airbnb/lottie/GradientFillContent;
.super Ljava/lang/Object;
.source "GradientFillContent.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final CACHE_STEPS_MS:I = 0x20


# instance fields
.field private final boundsRect:Landroid/graphics/RectF;

.field private final cacheSteps:I

.field private final colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private final endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final linearGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final radialGradientCache:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final shaderMatrix:Landroid/graphics/Matrix;

.field private final startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/GradientType;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/GradientFill;)V
    .registers 8

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 26
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->name:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/airbnb/lottie/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 43
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getGradientType()Lcom/airbnb/lottie/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->type:Lcom/airbnb/lottie/GradientType;

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 45
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    .line 47
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getGradientColor()Lcom/airbnb/lottie/AnimatableGradientColorValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableGradientColorValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 51
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 55
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getStartPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 59
    invoke-virtual {p3}, Lcom/airbnb/lottie/GradientFill;->getEndPoint()Lcom/airbnb/lottie/AnimatablePointValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatablePointValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 62
    return-void
.end method

.method private getGradientHash()I
    .registers 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 166
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v2, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 167
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getProgress()F

    move-result v0

    iget v3, p0, Lcom/airbnb/lottie/GradientFillContent;->cacheSteps:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 168
    const/16 v0, 0x11

    .line 169
    if-eqz v1, :cond_30

    .line 170
    mul-int/lit16 v0, v1, 0x20f

    .line 172
    :cond_30
    if-eqz v2, :cond_35

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    .line 175
    :cond_35
    if-eqz v3, :cond_3a

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v3

    .line 178
    :cond_3a
    return v0
.end method

.method private getLinearGradient()Landroid/graphics/LinearGradient;
    .registers 10

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getGradientHash()I

    move-result v8

    .line 128
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    .line 129
    if-eqz v0, :cond_10

    .line 130
    return-object v0

    .line 132
    :cond_10
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/PointF;

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/GradientColor;

    .line 135
    invoke-virtual {v0}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v5

    .line 136
    invoke-virtual {v0}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v6

    .line 137
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 138
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 137
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 139
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->linearGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v8

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 140
    return-object v0
.end method

.method private getRadialGradient()Landroid/graphics/RadialGradient;
    .registers 13

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getGradientHash()I

    move-result v7

    .line 145
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    .line 146
    if-eqz v0, :cond_10

    .line 147
    return-object v0

    .line 149
    :cond_10
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->startPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 150
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->endPointAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/PointF;

    .line 151
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->colorAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/GradientColor;

    .line 152
    invoke-virtual {v1}, Lcom/airbnb/lottie/GradientColor;->getColors()[I

    move-result-object v4

    .line 153
    invoke-virtual {v1}, Lcom/airbnb/lottie/GradientColor;->getPositions()[F

    move-result-object v5

    .line 154
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 155
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 156
    iget v0, v3, Landroid/graphics/PointF;->x:F

    .line 157
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 158
    sub-float/2addr v0, v1

    float-to-double v8, v0

    sub-float v0, v3, v2

    float-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v3, v8

    .line 159
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 160
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->radialGradientCache:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    .line 78
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    .line 79
    :goto_9
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 80
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 83
    :cond_26
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->boundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 86
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->type:Lcom/airbnb/lottie/GradientType;

    sget-object v1, Lcom/airbnb/lottie/GradientType;->Linear:Lcom/airbnb/lottie/GradientType;

    if-ne v0, v1, :cond_69

    .line 87
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v0

    .line 91
    :goto_37
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 92
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 93
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 95
    int-to-float v0, p3

    div-float v1, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->opacityAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 96
    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/GradientFillContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    return-void

    .line 89
    :cond_69
    invoke-direct {p0}, Lcom/airbnb/lottie/GradientFillContent;->getRadialGradient()Landroid/graphics/RadialGradient;

    move-result-object v0

    goto :goto_37
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 102
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    .line 103
    :goto_9
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 104
    iget-object v3, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 107
    :cond_26
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 110
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    .line 111
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    .line 112
    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    .line 113
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    .line 109
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onValueChanged()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/GradientFillContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 66
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 6
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
    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 70
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 71
    instance-of v2, v0, Lcom/airbnb/lottie/PathContent;

    if-eqz v2, :cond_19

    .line 72
    iget-object v2, p0, Lcom/airbnb/lottie/GradientFillContent;->paths:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 75
    :cond_1d
    return-void
.end method
