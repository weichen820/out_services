.class Lcom/airbnb/lottie/PolystarContent;
.super Ljava/lang/Object;
.source "PolystarContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final synthetic -com-airbnb-lottie-PolystarShape$TypeSwitchesValues:[I = null

.field private static final POLYGON_MAGIC_NUMBER:F = 0.25f

.field private static final POLYSTAR_MAGIC_NUMBER:F = 0.47829f


# instance fields
.field private final innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
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

.field private final innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
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

.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final name:Ljava/lang/String;

.field private final outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/PolystarShape$Type;


# direct methods
.method private static synthetic -getcom-airbnb-lottie-PolystarShape$TypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/airbnb/lottie/PolystarContent;->-com-airbnb-lottie-PolystarShape$TypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/airbnb/lottie/PolystarContent;->-com-airbnb-lottie-PolystarShape$TypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/PolystarShape$Type;->values()[Lcom/airbnb/lottie/PolystarShape$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/airbnb/lottie/PolystarShape$Type;->Polygon:Lcom/airbnb/lottie/PolystarShape$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lcom/airbnb/lottie/PolystarContent;->-com-airbnb-lottie-PolystarShape$TypeSwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/PolystarShape;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    .line 35
    iput-object p1, p0, Lcom/airbnb/lottie/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 37
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getType()Lcom/airbnb/lottie/PolystarShape$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    .line 39
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getPoints()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 40
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getPosition()Lcom/airbnb/lottie/AnimatableValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/lottie/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getRotation()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 42
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getOuterRadius()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 43
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getOuterRoundedness()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    if-ne v0, v1, :cond_b8

    .line 45
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getInnerRadius()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 46
    invoke-virtual {p3}, Lcom/airbnb/lottie/PolystarShape;->getInnerRoundedness()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 52
    :goto_65
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    if-ne v0, v1, :cond_8e

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 62
    :cond_8e
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    sget-object v1, Lcom/airbnb/lottie/PolystarShape$Type;->Star:Lcom/airbnb/lottie/PolystarShape$Type;

    if-ne v0, v1, :cond_b7

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 71
    :cond_b7
    return-void

    .line 48
    :cond_b8
    iput-object v2, p0, Lcom/airbnb/lottie/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 49
    iput-object v2, p0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    goto :goto_65
.end method

.method private createPolygonPath()V
    .registers 23

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez v2, :cond_114

    const/4 v2, 0x0

    :goto_1b
    float-to-double v4, v2

    .line 231
    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v4, v6

    .line 233
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 235
    int-to-double v6, v3

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    div-double v6, v8, v6

    double-to-float v12, v6

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v13, v2, v6

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 243
    float-to-double v6, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v7, v6

    .line 244
    float-to-double v8, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 246
    float-to-double v10, v12

    add-double/2addr v4, v10

    .line 248
    int-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    .line 249
    const/4 v2, 0x0

    move v9, v2

    move v3, v7

    move-wide v10, v4

    move v4, v8

    :goto_70
    int-to-double v6, v9

    cmpg-double v2, v6, v16

    if-gez v2, :cond_12c

    .line 252
    float-to-double v6, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v6, v6, v18

    double-to-float v7, v6

    .line 253
    float-to-double v0, v14

    move-wide/from16 v18, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 255
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_124

    .line 256
    float-to-double v0, v4

    move-wide/from16 v18, v0

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 257
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    .line 258
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 260
    float-to-double v0, v8

    move-wide/from16 v18, v0

    float-to-double v0, v7

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 261
    float-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 262
    float-to-double v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    .line 264
    mul-float v18, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v18, v18, v19

    mul-float v5, v5, v18

    .line 265
    mul-float v18, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v18, v18, v19

    mul-float v18, v18, v2

    .line 266
    mul-float v2, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v2, v2, v19

    mul-float/2addr v15, v2

    .line 267
    mul-float v2, v14, v13

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v2, v2, v19

    mul-float/2addr v6, v2

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    sub-float/2addr v3, v5

    sub-float v4, v4, v18

    add-float v5, v7, v15

    add-float/2addr v6, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 273
    :goto_109
    float-to-double v2, v12

    add-double v4, v10, v2

    .line 249
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v3, v7

    move-wide v10, v4

    move v4, v8

    goto/16 :goto_70

    .line 229
    :cond_114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto/16 :goto_1b

    .line 270
    :cond_124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_109

    .line 276
    :cond_12c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 279
    return-void
.end method

.method private createStarPath()V
    .registers 33

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-nez v2, :cond_139

    const/4 v2, 0x0

    :goto_15
    float-to-double v2, v2

    .line 125
    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v4

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 129
    float-to-double v4, v8

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double v4, v6, v4

    double-to-float v0, v4

    move/from16 v22, v0

    .line 130
    const/high16 v4, 0x40000000    # 2.0f

    div-float v15, v22, v4

    .line 131
    float-to-int v4, v8

    int-to-float v4, v4

    sub-float v23, v8, v4

    .line 132
    const/4 v4, 0x0

    cmpl-float v4, v23, v4

    if-eqz v4, :cond_249

    .line 133
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v23

    mul-float/2addr v4, v15

    float-to-double v4, v4

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 136
    :goto_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 140
    const/4 v2, 0x0

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v3, :cond_246

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    move v9, v2

    .line 144
    :goto_75
    const/4 v13, 0x0

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    if-eqz v2, :cond_8e

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v13, v2, v3

    .line 153
    :cond_8e
    const/4 v6, 0x0

    .line 154
    const/4 v2, 0x0

    cmpl-float v2, v23, v2

    if-eqz v2, :cond_149

    .line 155
    sub-float v2, v11, v12

    mul-float v2, v2, v23

    add-float v6, v12, v2

    .line 156
    float-to-double v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v2, v2, v16

    double-to-float v3, v2

    .line 157
    float-to-double v0, v6

    move-wide/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 158
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    mul-float v7, v22, v23

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    float-to-double v0, v7

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    move v10, v6

    .line 168
    :goto_c0
    const/4 v7, 0x0

    .line 169
    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v24, v16, v18

    .line 170
    const/4 v6, 0x0

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v2

    move/from16 v19, v3

    move-wide/from16 v20, v4

    :goto_d7
    move/from16 v0, v16

    int-to-double v2, v0

    cmpg-double v2, v2, v24

    if-gez v2, :cond_222

    .line 171
    if-eqz v17, :cond_16c

    move v2, v11

    .line 173
    :goto_e1
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_16f

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v6, v24, v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_16f

    .line 174
    mul-float v3, v22, v23

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move v14, v3

    .line 176
    :goto_f7
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_108

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v24, v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_108

    move v2, v10

    .line 181
    :cond_108
    float-to-double v4, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v7, v4

    .line 182
    float-to-double v2, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    .line 184
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-nez v2, :cond_171

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_171

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 217
    :goto_127
    float-to-double v2, v14

    add-double v4, v20, v2

    .line 218
    xor-int/lit8 v3, v17, 0x1

    .line 170
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v8

    move/from16 v19, v7

    move-wide/from16 v20, v4

    goto :goto_d7

    .line 123
    :cond_139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto/16 :goto_15

    .line 161
    :cond_149
    float-to-double v2, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v2, v2, v16

    double-to-float v3, v2

    .line 162
    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 163
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 164
    float-to-double v0, v15

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    move v10, v6

    goto/16 :goto_c0

    :cond_16c
    move v2, v12

    .line 171
    goto/16 :goto_e1

    :cond_16f
    move v14, v15

    .line 173
    goto :goto_f7

    .line 187
    :cond_171
    move/from16 v0, v18

    float-to-double v2, v0

    move/from16 v0, v19

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 188
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v5, v4

    .line 189
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v26, v0

    .line 191
    float-to-double v2, v8

    float-to-double v0, v7

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v2, v28

    double-to-float v2, v2

    .line 192
    float-to-double v0, v2

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    .line 193
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v28, v0

    .line 195
    if-eqz v17, :cond_202

    move v4, v9

    .line 196
    :goto_1b9
    if-eqz v17, :cond_204

    move v6, v13

    .line 197
    :goto_1bc
    if-eqz v17, :cond_206

    move v3, v12

    .line 198
    :goto_1bf
    if-eqz v17, :cond_208

    move v2, v11

    .line 200
    :goto_1c2
    mul-float v29, v3, v4

    const v30, 0x3ef4e26d    # 0.47829f

    mul-float v29, v29, v30

    mul-float v5, v5, v29

    .line 201
    mul-float/2addr v3, v4

    const v4, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v3, v4

    mul-float v4, v3, v26

    .line 202
    mul-float v3, v2, v6

    const v26, 0x3ef4e26d    # 0.47829f

    mul-float v3, v3, v26

    mul-float v3, v3, v27

    .line 203
    mul-float/2addr v2, v6

    const v6, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v2, v6

    mul-float v2, v2, v28

    .line 204
    const/4 v6, 0x0

    cmpl-float v6, v23, v6

    if-eqz v6, :cond_23f

    .line 205
    if-nez v16, :cond_20a

    .line 206
    mul-float v5, v5, v23

    .line 207
    mul-float v4, v4, v23

    move v6, v2

    move/from16 v31, v3

    move v3, v5

    move/from16 v5, v31

    .line 214
    :goto_1f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    sub-float v3, v19, v3

    sub-float v4, v18, v4

    add-float/2addr v5, v7

    add-float/2addr v6, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_127

    :cond_202
    move v4, v13

    .line 195
    goto :goto_1b9

    :cond_204
    move v6, v9

    .line 196
    goto :goto_1bc

    :cond_206
    move v3, v11

    .line 197
    goto :goto_1bf

    :cond_208
    move v2, v12

    .line 198
    goto :goto_1c2

    .line 208
    :cond_20a
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v28, v24, v28

    cmpl-double v6, v26, v28

    if-nez v6, :cond_23f

    .line 209
    mul-float v3, v3, v23

    .line 210
    mul-float v2, v2, v23

    move v6, v2

    move/from16 v31, v3

    move v3, v5

    move/from16 v5, v31

    goto :goto_1f3

    .line 222
    :cond_222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 225
    return-void

    :cond_23f
    move v6, v2

    move/from16 v31, v3

    move v3, v5

    move/from16 v5, v31

    goto :goto_1f3

    :cond_246
    move v9, v2

    goto/16 :goto_75

    :cond_249
    move-wide v4, v2

    goto/16 :goto_40
.end method

.method private invalidate()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/PolystarContent;->isPathValid:Z

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 80
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 3

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/airbnb/lottie/PolystarContent;->isPathValid:Z

    if-eqz v0, :cond_7

    .line 95
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 100
    invoke-static {}, Lcom/airbnb/lottie/PolystarContent;->-getcom-airbnb-lottie-PolystarShape$TypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/PolystarContent;->type:Lcom/airbnb/lottie/PolystarShape$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 109
    :goto_1b
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/PolystarContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/TrimPathContent;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/PolystarContent;->isPathValid:Z

    .line 114
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 102
    :pswitch_2d
    invoke-direct {p0}, Lcom/airbnb/lottie/PolystarContent;->createStarPath()V

    goto :goto_1b

    .line 105
    :pswitch_31
    invoke-direct {p0}, Lcom/airbnb/lottie/PolystarContent;->createPolygonPath()V

    goto :goto_1b

    .line 100
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2d
    .end packed-switch
.end method

.method public onValueChanged()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/airbnb/lottie/PolystarContent;->invalidate()V

    .line 75
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
    .line 83
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2a

    .line 84
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Content;

    .line 85
    instance-of v1, v0, Lcom/airbnb/lottie/TrimPathContent;

    if-eqz v1, :cond_26

    move-object v1, v0

    .line 86
    nop

    nop

    invoke-virtual {v1}, Lcom/airbnb/lottie/TrimPathContent;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v3, Lcom/airbnb/lottie/ShapeTrimPath$Type;->Simultaneously:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    if-ne v1, v3, :cond_26

    .line 87
    nop

    nop

    iput-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 88
    iget-object v0, p0, Lcom/airbnb/lottie/PolystarContent;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TrimPathContent;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 91
    :cond_2a
    return-void
.end method
