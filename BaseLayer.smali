.class abstract Lcom/airbnb/lottie/BaseLayer;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/DrawingContent;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# static fields
.field private static final synthetic -com-airbnb-lottie-Layer$LayerTypeSwitchesValues:[I = null

.field private static final synthetic -com-airbnb-lottie-Mask$MaskModeSwitchesValues:[I = null

.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field final layerModel:Lcom/airbnb/lottie/Layer;

.field final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final maskPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/airbnb/lottie/BaseLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

.field private visible:Z


# direct methods
.method private static synthetic -getcom-airbnb-lottie-Layer$LayerTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/airbnb/lottie/BaseLayer;->-com-airbnb-lottie-Layer$LayerTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/airbnb/lottie/BaseLayer;->-com-airbnb-lottie-Layer$LayerTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/Layer$LayerType;->values()[Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->Image:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_5c

    :goto_17
    :try_start_17
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->Null:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_5a

    :goto_20
    :try_start_20
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_58

    :goto_29
    :try_start_29
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->Shape:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_56

    :goto_32
    :try_start_32
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->Solid:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_54

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->Text:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_52

    :goto_44
    :try_start_44
    sget-object v1, Lcom/airbnb/lottie/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/Layer$LayerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_50

    :goto_4d
    sput-object v0, Lcom/airbnb/lottie/BaseLayer;->-com-airbnb-lottie-Layer$LayerTypeSwitchesValues:[I

    return-object v0

    :catch_50
    move-exception v1

    goto :goto_4d

    :catch_52
    move-exception v1

    goto :goto_44

    :catch_54
    move-exception v1

    goto :goto_3b

    :catch_56
    move-exception v1

    goto :goto_32

    :catch_58
    move-exception v1

    goto :goto_29

    :catch_5a
    move-exception v1

    goto :goto_20

    :catch_5c
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getcom-airbnb-lottie-Mask$MaskModeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/airbnb/lottie/BaseLayer;->-com-airbnb-lottie-Mask$MaskModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/airbnb/lottie/BaseLayer;->-com-airbnb-lottie-Mask$MaskModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/Mask$MaskMode;->values()[Lcom/airbnb/lottie/Mask$MaskMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/Mask$MaskMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3d

    :goto_17
    :try_start_17
    sget-object v1, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/Mask$MaskMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_3b

    :goto_21
    :try_start_21
    sget-object v1, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/Mask$MaskMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2a} :catch_39

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/Mask$MaskMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_34} :catch_37

    :goto_34
    sput-object v0, Lcom/airbnb/lottie/BaseLayer;->-com-airbnb-lottie-Mask$MaskModeSwitchesValues:[I

    return-object v0

    :catch_37
    move-exception v1

    goto :goto_34

    :catch_39
    move-exception v1

    goto :goto_2a

    :catch_3b
    move-exception v1

    goto :goto_21

    :catch_3d
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/airbnb/lottie/BaseLayer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    return-void
.end method

.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    .line 68
    iput-boolean v1, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    .line 71
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 72
    iput-object p2, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/Layer$MatteType;->Invert:Lcom/airbnb/lottie/Layer$MatteType;

    if-ne v0, v1, :cond_d8

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    :goto_8a
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getTransform()Lcom/airbnb/lottie/AnimatableTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/TransformKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 85
    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e5

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e5

    .line 86
    new-instance v0, Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/MaskKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    .line 87
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 88
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 89
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_c5

    .line 78
    :cond_d8
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_8a

    .line 92
    :cond_e5
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->setupInOutAnimations()V

    .line 93
    return-void
.end method

.method private applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .registers 8

    .prologue
    .line 268
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->maskPaint:Landroid/graphics/Paint;

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 269
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 273
    const/4 v0, 0x0

    move v2, v0

    :goto_18
    if-ge v2, v3, :cond_6d

    .line 274
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Mask;

    .line 275
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 276
    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 277
    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 278
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 280
    invoke-static {}, Lcom/airbnb/lottie/BaseLayer;->-getcom-airbnb-lottie-Mask$MaskModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/Mask;->getMaskMode()Lcom/airbnb/lottie/Mask$MaskMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_72

    .line 286
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 288
    :goto_5a
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18

    .line 282
    :pswitch_65
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_5a

    .line 290
    :cond_6d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 291
    return-void

    .line 280
    nop

    :pswitch_data_72
    .packed-switch 0x2
        :pswitch_65
    .end packed-switch
.end method

.method private buildParentLayerListIfNeeded()V
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 315
    return-void

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    if-nez v0, :cond_10

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    .line 319
    return-void

    .line 322
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    .line 323
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    .line 324
    :goto_19
    if-eqz v0, :cond_23

    .line 325
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, v0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    goto :goto_19

    .line 328
    :cond_23
    return-void
.end method

.method private clearCanvas(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 197
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->clearPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    return-void
.end method

.method static forModel(Lcom/airbnb/lottie/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/BaseLayer;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/airbnb/lottie/BaseLayer;->-getcom-airbnb-lottie-Layer$LayerTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getLayerType()Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 43
    const-string/jumbo v0, "LOTTIE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown layer type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getLayerType()Lcom/airbnb/lottie/Layer$LayerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 29
    :pswitch_31
    new-instance v0, Lcom/airbnb/lottie/ShapeLayer;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/ShapeLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    return-object v0

    .line 31
    :pswitch_37
    new-instance v0, Lcom/airbnb/lottie/CompositionLayer;

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieComposition;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 31
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/airbnb/lottie/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    return-object v0

    .line 34
    :pswitch_45
    new-instance v0, Lcom/airbnb/lottie/SolidLayer;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/SolidLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    return-object v0

    .line 36
    :pswitch_4b
    new-instance v0, Lcom/airbnb/lottie/ImageLayer;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/airbnb/lottie/ImageLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;F)V

    return-object v0

    .line 38
    :pswitch_55
    new-instance v0, Lcom/airbnb/lottie/NullLayer;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/NullLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    return-object v0

    .line 27
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_55
        :pswitch_37
        :pswitch_31
        :pswitch_45
    .end packed-switch
.end method

.method private intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_e

    .line 203
    return-void

    .line 206
    :cond_e
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    .line 207
    :goto_19
    if-ge v2, v4, :cond_9f

    .line 208
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Mask;

    .line 209
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 210
    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 211
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 212
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 214
    invoke-static {}, Lcom/airbnb/lottie/BaseLayer;->-getcom-airbnb-lottie-Mask$MaskModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/Mask;->getMaskMode()Lcom/airbnb/lottie/Mask$MaskMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_cc

    .line 221
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 225
    if-nez v2, :cond_69

    .line 226
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 207
    :goto_64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 218
    :pswitch_68
    return-void

    .line 228
    :cond_69
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    .line 229
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 230
    iget-object v5, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 231
    iget-object v6, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 232
    iget-object v7, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/airbnb/lottie/BaseLayer;->tempMaskBoundsRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 228
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_64

    .line 239
    :cond_9f
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 240
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 241
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 242
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->maskBoundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 238
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 244
    return-void

    .line 214
    nop

    :pswitch_data_cc
    .packed-switch 0x2
        :pswitch_68
    .end packed-switch
.end method

.method private intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 8

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-nez v0, :cond_7

    .line 248
    return-void

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/Layer$MatteType;->Invert:Lcom/airbnb/lottie/Layer$MatteType;

    if-ne v0, v1, :cond_12

    .line 253
    return-void

    .line 256
    :cond_12
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 258
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 259
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 260
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 261
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/airbnb/lottie/BaseLayer;->matteBoundsRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 257
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    return-void
.end method

.method private invalidateSelf()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 134
    return-void
.end method

.method private setVisible(Z)V
    .registers 3

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    if-eq p1, v0, :cond_9

    .line 299
    iput-boolean p1, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    .line 300
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->invalidateSelf()V

    .line 302
    :cond_9
    return-void
.end method

.method private setupInOutAnimations()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 118
    new-instance v2, Lcom/airbnb/lottie/FloatKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getInOutKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 119
    invoke-virtual {v2}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->setIsDiscrete()V

    .line 120
    new-instance v0, Lcom/airbnb/lottie/BaseLayer$1;

    invoke-direct {v0, p0, v2}, Lcom/airbnb/lottie/BaseLayer$1;-><init>(Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/FloatKeyframeAnimation;)V

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 125
    invoke-virtual {v2}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3b

    move v0, v1

    :goto_34
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 130
    :goto_3a
    return-void

    .line 125
    :cond_3b
    const/4 v0, 0x0

    goto :goto_34

    .line 128
    :cond_3d
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/BaseLayer;->setVisible(Z)V

    goto :goto_3a
.end method


# virtual methods
.method addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 137
    instance-of v0, p1, Lcom/airbnb/lottie/StaticKeyframeAnimation;

    if-nez v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_9
    return-void
.end method

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
    .line 341
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/airbnb/lottie/BaseLayer;->visible:Z

    if-nez v0, :cond_8

    .line 150
    return-void

    .line 152
    :cond_8
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->buildParentLayerListIfNeeded()V

    .line 153
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 154
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 155
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1e
    if-ltz v1, :cond_37

    .line 156
    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    iget-object v0, v0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 155
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1e

    .line 159
    :cond_37
    int-to-float v0, p3

    div-float v1, v0, v3

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/BaseKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 158
    float-to-int v0, v0

    .line 160
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_70

    .line 161
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 162
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1, v0}, Lcom/airbnb/lottie/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 163
    return-void

    .line 166
    :cond_70
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 168
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/airbnb/lottie/BaseLayer;->intersectBoundsWithMatte(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 170
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 171
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/airbnb/lottie/BaseLayer;->intersectBoundsWithMask(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 173
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->contentPaint:Landroid/graphics/Paint;

    const/16 v3, 0x1f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 177
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1, v0}, Lcom/airbnb/lottie/BaseLayer;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 180
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 181
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/BaseLayer;->applyMasks(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 184
    :cond_c0
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 185
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->mattePaint:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 186
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->clearCanvas(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/airbnb/lottie/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    :cond_da
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 193
    return-void
.end method

.method abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 144
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->transform:Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 145
    return-void
.end method

.method getLayerModel()Lcom/airbnb/lottie/Layer;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasMasksOnThisLayer()Z
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->mask:Lcom/airbnb/lottie/MaskKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/MaskKeyframeAnimation;->getMaskAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method hasMatteOnThisLayer()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onValueChanged()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseLayer;->invalidateSelf()V

    .line 97
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3
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
    .line 336
    return-void
.end method

.method setMatteLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .registers 2
    .param p1    # Lcom/airbnb/lottie/BaseLayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    .line 105
    return-void
.end method

.method setParentLayer(Lcom/airbnb/lottie/BaseLayer;)V
    .registers 2
    .param p1    # Lcom/airbnb/lottie/BaseLayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer;->parentLayer:Lcom/airbnb/lottie/BaseLayer;

    .line 113
    return-void
.end method

.method setProgress(F)V
    .registers 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 305
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    if-eqz v0, :cond_9

    .line 306
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->matteLayer:Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    .line 308
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 309
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->animations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->setProgress(F)V

    .line 308
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 311
    :cond_22
    return-void
.end method
