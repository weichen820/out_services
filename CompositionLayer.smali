.class Lcom/airbnb/lottie/CompositionLayer;
.super Lcom/airbnb/lottie/BaseLayer;
.source "CompositionLayer.java"


# static fields
.field private static final synthetic -com-airbnb-lottie-Layer$MatteTypeSwitchesValues:[I


# instance fields
.field private hasMasks:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private hasMatte:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final newClipRect:Landroid/graphics/RectF;

.field private final originalClipRect:Landroid/graphics/Rect;

.field private final rect:Landroid/graphics/RectF;


# direct methods
.method private static synthetic -getcom-airbnb-lottie-Layer$MatteTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/airbnb/lottie/CompositionLayer;->-com-airbnb-lottie-Layer$MatteTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/airbnb/lottie/CompositionLayer;->-com-airbnb-lottie-Layer$MatteTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/Layer$MatteType;->values()[Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/airbnb/lottie/Layer$MatteType;->Add:Lcom/airbnb/lottie/Layer$MatteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/airbnb/lottie/Layer$MatteType;->Invert:Lcom/airbnb/lottie/Layer$MatteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/airbnb/lottie/Layer$MatteType;->None:Lcom/airbnb/lottie/Layer$MatteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/airbnb/lottie/Layer$MatteType;->Unknown:Lcom/airbnb/lottie/Layer$MatteType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/airbnb/lottie/CompositionLayer;->-com-airbnb-lottie-Layer$MatteTypeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/Layer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Layer;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->originalClipRect:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    .line 30
    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p4}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 33
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move-object v1, v2

    :goto_36
    if-ltz v5, :cond_76

    .line 34
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Layer;

    .line 35
    invoke-static {v0, p1, p4}, Lcom/airbnb/lottie/BaseLayer;->forModel(Lcom/airbnb/lottie/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/BaseLayer;

    move-result-object v3

    .line 36
    if-nez v3, :cond_4a

    move-object v0, v1

    .line 33
    :goto_45
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move-object v1, v0

    goto :goto_36

    .line 39
    :cond_4a
    invoke-virtual {v3}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/lottie/Layer;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 40
    if-eqz v1, :cond_5c

    .line 41
    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/BaseLayer;->setMatteLayer(Lcom/airbnb/lottie/BaseLayer;)V

    move-object v0, v2

    .line 42
    goto :goto_45

    .line 44
    :cond_5c
    iget-object v7, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v7, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/airbnb/lottie/CompositionLayer;->-getcom-airbnb-lottie-Layer$MatteTypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getMatteType()Lcom/airbnb/lottie/Layer$MatteType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_a0

    move-object v0, v1

    goto :goto_45

    :pswitch_74
    move-object v0, v3

    .line 49
    goto :goto_45

    :cond_76
    move v2, v4

    .line 54
    :goto_77
    invoke-virtual {v6}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_9e

    .line 55
    invoke-virtual {v6, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    .line 56
    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    .line 57
    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BaseLayer;

    .line 58
    if-eqz v1, :cond_9a

    .line 59
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/BaseLayer;->setParentLayer(Lcom/airbnb/lottie/BaseLayer;)V

    .line 54
    :cond_9a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_77

    .line 62
    :cond_9e
    return-void

    .line 45
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_74
        :pswitch_74
    .end packed-switch
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 8
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
    const/4 v3, 0x0

    .line 146
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    .line 148
    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseLayer;->getLayerModel()Lcom/airbnb/lottie/Layer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    .line 149
    if-nez p1, :cond_24

    .line 150
    invoke-virtual {v0, v3, v3, p3}, Lcom/airbnb/lottie/BaseLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 146
    :cond_20
    :goto_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 151
    :cond_24
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 152
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/BaseLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_20

    .line 155
    :cond_2e
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->originalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 66
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/Layer;->getPreCompWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/Layer;->getPreCompHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_27
    if-ltz v1, :cond_49

    .line 70
    const/4 v0, 0x1

    .line 71
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->newClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v0

    .line 74
    :cond_38
    if-eqz v0, :cond_45

    .line 75
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/BaseLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 69
    :cond_45
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_27

    .line 78
    :cond_49
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->originalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->originalClipRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 81
    :cond_58
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_5e

    .line 87
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    .line 88
    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 90
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 86
    :goto_2e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    .line 93
    :cond_32
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 94
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 95
    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 96
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/airbnb/lottie/CompositionLayer;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 92
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2e

    .line 100
    :cond_5e
    return-void
.end method

.method hasMasks()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    if-nez v0, :cond_34

    .line 112
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_2e

    .line 113
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    .line 114
    instance-of v2, v0, Lcom/airbnb/lottie/ShapeLayer;

    if-eqz v2, :cond_2a

    .line 115
    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseLayer;->hasMasksOnThisLayer()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 116
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 117
    return v4

    .line 112
    :cond_2a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 121
    :cond_2e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    .line 123
    :cond_34
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMasks:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasMatte()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    .line 128
    invoke-virtual {p0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 130
    return v2

    .line 133
    :cond_13
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1c
    if-ltz v1, :cond_37

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseLayer;->hasMatteOnThisLayer()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 136
    return v2

    .line 133
    :cond_33
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1c

    .line 139
    :cond_37
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    .line 141
    :cond_3d
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->hasMatte:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setProgress(F)V
    .registers 5
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    .line 104
    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer;->layerModel:Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getStartProgress()F

    move-result v0

    sub-float v2, p1, v0

    .line 105
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_14
    if-ltz v1, :cond_25

    .line 106
    iget-object v0, p0, Lcom/airbnb/lottie/CompositionLayer;->layers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseLayer;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/BaseLayer;->setProgress(F)V

    .line 105
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_14

    .line 108
    :cond_25
    return-void
.end method
