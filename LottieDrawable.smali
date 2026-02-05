.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:I

.field private final animator:Landroid/animation/ValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionLayer:Lcom/airbnb/lottie/CompositionLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field private imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private playAnimationWhenCompositionAdded:Z

.field private progress:F

.field private reverseAnimationWhenCompositionAdded:Z

.field private scale:F

.field private speed:F

.field private systemAnimationsAreDisabled:Z


# direct methods
.method static synthetic -get0(Lcom/airbnb/lottie/LottieDrawable;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/airbnb/lottie/LottieDrawable;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsAreDisabled:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_46

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 38
    iput v1, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    .line 40
    iput v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    .line 51
    const/16 v0, 0xff

    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$1;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    return-void

    .line 37
    nop

    :array_46
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 6
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
    .line 254
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    invoke-direct {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 255
    if-nez p3, :cond_19

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 256
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 261
    :goto_14
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_24

    .line 262
    return-void

    .line 258
    :cond_19
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    invoke-direct {v1, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 265
    :cond_24
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/CompositionLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 266
    return-void
.end method

.method private applyColorFilters()V
    .registers 6

    .prologue
    .line 172
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_5

    .line 173
    return-void

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 177
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    iget-object v3, v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    iget-object v4, v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3, v4, v0}, Lcom/airbnb/lottie/CompositionLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_b

    .line 179
    :cond_23
    return-void
.end method

.method private buildCompositionLayer()V
    .registers 5

    .prologue
    .line 167
    new-instance v0, Lcom/airbnb/lottie/CompositionLayer;

    .line 168
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-static {v1}, Lcom/airbnb/lottie/Layer$Factory;->newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 167
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    .line 169
    return-void
.end method

.method private clearComposition()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->recycleBitmaps()V

    .line 183
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    .line 184
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    .line 185
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 186
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 489
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 490
    if-nez v0, :cond_8

    .line 491
    return-object v2

    .line 494
    :cond_8
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_13

    .line 495
    nop

    nop

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 497
    :cond_13
    return-object v2
.end method

.method private getImageAssetBitmapManager()Lcom/airbnb/lottie/ImageAssetBitmapManager;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 470
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_8

    .line 472
    return-object v2

    .line 475
    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    .line 476
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->recycleBitmaps()V

    .line 477
    iput-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    .line 480
    :cond_21
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    if-nez v0, :cond_3a

    .line 481
    new-instance v0, Lcom/airbnb/lottie/ImageAssetBitmapManager;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    .line 482
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    .line 481
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/ImageAssetBitmapManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    .line 485
    :cond_3a
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    return-object v0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .registers 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 503
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private playAnimation(Z)V
    .registers 6

    .prologue
    .line 311
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_b

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    .line 314
    return-void

    .line 316
    :cond_b
    if-eqz p1, :cond_25

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 317
    :goto_18
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 318
    if-eqz p1, :cond_24

    .line 319
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 321
    :cond_24
    return-void

    .line 316
    :cond_25
    const-wide/16 v0, 0x0

    goto :goto_18
.end method

.method private reverseAnimation(Z)V
    .registers 6

    .prologue
    .line 332
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_b

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    .line 335
    return-void

    .line 337
    :cond_b
    if-eqz p1, :cond_1d

    .line 338
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 340
    :cond_1d
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 341
    return-void
.end method

.method private updateBounds()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 403
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_6

    .line 404
    return-void

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 407
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 406
    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 426
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 418
    return-void
.end method

.method public addColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0, v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 233
    return-void
.end method

.method public addColorFilterToContent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 216
    return-void
.end method

.method public addColorFilterToLayer(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p2    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 225
    return-void
.end method

.method public cancelAnimation()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    .line 412
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    .line 413
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 414
    return-void
.end method

.method public clearColorFilters()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 240
    invoke-direct {p0, v1, v1, v1}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 241
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 273
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-nez v0, :cond_5

    .line 274
    return-void

    .line 276
    :cond_5
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 277
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/CompositionLayer;->hasMatte()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 278
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 281
    :cond_19
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 282
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 283
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/airbnb/lottie/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 284
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .registers 4

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_f

    .line 95
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_f
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    .line 99
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_18

    .line 100
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 102
    :cond_18
    return-void
.end method

.method enableMergePathsForKitKatAndAbove()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    return v0
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 462
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetBitmapManager()Lcom/airbnb/lottie/ImageAssetBitmapManager;

    move-result-object v0

    .line 463
    if-eqz v0, :cond_c

    .line 464
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 466
    :cond_c
    return-object v1
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_5
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 269
    const/4 v0, -0x3

    return v0
.end method

.method public getProgress()F
    .registers 2

    .prologue
    .line 364
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    return v0
.end method

.method public hasMasks()Z
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/CompositionLayer;->hasMasks()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasMatte()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/CompositionLayer;->hasMatte()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 512
    if-nez v0, :cond_7

    .line 513
    return-void

    .line 515
    :cond_7
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_9

    .line 191
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_9
    return-void
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public loop(Z)V
    .registers 4

    .prologue
    .line 291
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    const/4 v0, -0x1

    :goto_5
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 292
    return-void

    .line 291
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public playAnimation()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 303
    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_14

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    .line 304
    return-void
.end method

.method public recycleBitmaps()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    if-eqz v0, :cond_9

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->recycleBitmaps()V

    .line 136
    :cond_9
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 422
    return-void
.end method

.method public resumeAnimation()V
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    .line 308
    return-void
.end method

.method public resumeReverseAnimation()V
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    .line 325
    return-void
.end method

.method public reverseAnimation()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 328
    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_14

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    .line 329
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 519
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 520
    if-nez v0, :cond_7

    .line 521
    return-void

    .line 523
    :cond_7
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 524
    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 196
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 197
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-ne v0, p1, :cond_6

    .line 143
    return v1

    .line 146
    :cond_6
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 147
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 148
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    .line 149
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 150
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 151
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->applyColorFilters()V

    .line 153
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 154
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    if-eqz v0, :cond_27

    .line 155
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->playAnimationWhenCompositionAdded:Z

    .line 156
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 158
    :cond_27
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    if-eqz v0, :cond_30

    .line 159
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationWhenCompositionAdded:Z

    .line 160
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation()V

    .line 163
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .registers 3

    .prologue
    .line 388
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 389
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    if-eqz v0, :cond_b

    .line 390
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetBitmapManager:Lcom/airbnb/lottie/ImageAssetBitmapManager;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->setAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 392
    :cond_b
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setProgress(F)V
    .registers 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 357
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->progress:F

    .line 358
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    if-eqz v0, :cond_b

    .line 359
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/CompositionLayer;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/CompositionLayer;->setProgress(F)V

    .line 361
    :cond_b
    return-void
.end method

.method public setScale(F)V
    .registers 2

    .prologue
    .line 377
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 378
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 379
    return-void
.end method

.method public setSpeed(F)V
    .registers 6

    .prologue
    const/4 v1, 0x2

    .line 344
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    .line 345
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_29

    .line 346
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 351
    :goto_12
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_28

    .line 352
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 354
    :cond_28
    return-void

    .line 348
    :cond_29
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_3c

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_12

    .line 346
    :array_34
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 348
    :array_3c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method systemAnimationsAreDisabled()V
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsAreDisabled:Z

    .line 288
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 528
    if-nez v0, :cond_7

    .line 529
    return-void

    .line 531
    :cond_7
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 532
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 449
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetBitmapManager()Lcom/airbnb/lottie/ImageAssetBitmapManager;

    move-result-object v0

    .line 450
    if-nez v0, :cond_11

    .line 451
    const-string/jumbo v0, "LOTTIE"

    const-string/jumbo v1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-object v2

    .line 455
    :cond_11
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 457
    return-object v0
.end method
