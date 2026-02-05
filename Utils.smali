.class final Lcom/airbnb/lottie/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final SQRT_2:F

.field private static displayMetrics:Landroid/util/DisplayMetrics;

.field private static final pathMeasure:Landroid/graphics/PathMeasure;

.field private static final points:[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static final tempPath2:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    .line 20
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/airbnb/lottie/Utils;->SQRT_2:F

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .registers 12

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    sget-object v0, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 94
    sget-object v0, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    .line 95
    cmpl-float v0, p1, v3

    if-nez v0, :cond_19

    cmpl-float v0, p2, v6

    if-nez v0, :cond_19

    .line 96
    return-void

    .line 98
    :cond_19
    cmpl-float v0, v2, v6

    if-eqz v0, :cond_2e

    sub-float v0, p2, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2f

    .line 99
    :cond_2e
    return-void

    .line 101
    :cond_2f
    mul-float v0, v2, p1

    .line 102
    mul-float v1, v2, p2

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 106
    mul-float v4, p3, v2

    .line 107
    add-float v0, v3, v4

    .line 108
    add-float/2addr v1, v4

    .line 111
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_52

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_52

    .line 112
    invoke-static {v0, v2}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result v0

    int-to-float v0, v0

    .line 113
    invoke-static {v1, v2}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result v1

    int-to-float v1, v1

    .line 116
    :cond_52
    cmpg-float v3, v0, v6

    if-gez v3, :cond_5b

    .line 117
    invoke-static {v0, v2}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result v0

    int-to-float v0, v0

    .line 119
    :cond_5b
    cmpg-float v3, v1, v6

    if-gez v3, :cond_64

    .line 120
    invoke-static {v1, v2}, Lcom/airbnb/lottie/MiscUtils;->floorMod(FF)I

    move-result v1

    int-to-float v1, v1

    .line 124
    :cond_64
    cmpl-float v3, v0, v1

    if-nez v3, :cond_6c

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 126
    return-void

    .line 129
    :cond_6c
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_71

    .line 130
    sub-float/2addr v0, v2

    .line 133
    :cond_71
    sget-object v3, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 134
    sget-object v3, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 137
    sget-object v4, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    .line 134
    invoke-virtual {v3, v0, v1, v4, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 140
    cmpl-float v3, v1, v2

    if-lez v3, :cond_9b

    .line 141
    sget-object v0, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 142
    sget-object v0, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 144
    rem-float/2addr v1, v2

    .line 145
    sget-object v2, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    .line 142
    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 147
    sget-object v0, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v1, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 157
    :cond_95
    :goto_95
    sget-object v0, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 158
    return-void

    .line 148
    :cond_9b
    cmpg-float v1, v0, v6

    if-gez v1, :cond_95

    .line 149
    sget-object v1, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 150
    sget-object v1, Lcom/airbnb/lottie/Utils;->pathMeasure:Landroid/graphics/PathMeasure;

    .line 151
    add-float/2addr v0, v2

    .line 153
    sget-object v3, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    .line 150
    invoke-virtual {v1, v0, v2, v3, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 155
    sget-object v0, Lcom/airbnb/lottie/Utils;->tempPath:Landroid/graphics/Path;

    sget-object v1, Lcom/airbnb/lottie/Utils;->tempPath2:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_95
.end method

.method static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V
    .registers 6
    .param p1    # Lcom/airbnb/lottie/TrimPathContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 83
    if-nez p1, :cond_5

    .line 84
    return-void

    .line 86
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getStart()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v1, v0, v2

    .line 87
    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getEnd()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v2, v0, v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/TrimPathContent;->getOffset()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    .line 86
    invoke-static {p0, v1, v2, v0}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 88
    return-void
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 40
    if-eqz p0, :cond_5

    .line 42
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 48
    :cond_5
    :goto_5
    return-void

    .line 45
    :catch_6
    move-exception v0

    goto :goto_5

    .line 43
    :catch_8
    move-exception v0

    .line 44
    throw v0
.end method

.method static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 26
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 28
    if-eqz p2, :cond_3d

    if-eqz p3, :cond_3d

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_21

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3d

    .line 30
    :cond_21
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    .line 31
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    .line 32
    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    .line 29
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 36
    :goto_3c
    return-object v0

    .line 34
    :cond_3d
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3c
.end method

.method static getScale(Landroid/graphics/Matrix;)F
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    sget-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    aput v1, v0, v2

    .line 70
    sget-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    aput v1, v0, v3

    .line 72
    sget-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    sget v1, Lcom/airbnb/lottie/Utils;->SQRT_2:F

    aput v1, v0, v4

    .line 73
    sget-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    sget v1, Lcom/airbnb/lottie/Utils;->SQRT_2:F

    aput v1, v0, v5

    .line 74
    sget-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 75
    sget-object v0, Lcom/airbnb/lottie/Utils;->points:[F

    aget v0, v0, v4

    sget-object v1, Lcom/airbnb/lottie/Utils;->points:[F

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 76
    sget-object v1, Lcom/airbnb/lottie/Utils;->points:[F

    aget v1, v1, v5

    sget-object v2, Lcom/airbnb/lottie/Utils;->points:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    .line 79
    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method static getScreenHeight(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 63
    :cond_b
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 64
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    sget-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method static getScreenWidth(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 51
    sget-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 54
    :cond_b
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 55
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    sget-object v0, Lcom/airbnb/lottie/Utils;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
