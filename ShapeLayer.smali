.class Lcom/airbnb/lottie/ShapeLayer;
.super Lcom/airbnb/lottie/BaseLayer;
.source "ShapeLayer.java"


# instance fields
.field private final contentGroup:Lcom/airbnb/lottie/ContentGroup;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V
    .registers 6

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/Layer;)V

    .line 18
    new-instance v0, Lcom/airbnb/lottie/ShapeGroup;

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/airbnb/lottie/Layer;->getShapes()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 19
    new-instance v1, Lcom/airbnb/lottie/ContentGroup;

    invoke-direct {v1, p1, p0, v0}, Lcom/airbnb/lottie/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeGroup;)V

    iput-object v1, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .registers 5
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
    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/ContentGroup;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 35
    return-void
.end method

.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 25
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 5

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeLayer;->contentGroup:Lcom/airbnb/lottie/ContentGroup;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/airbnb/lottie/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 30
    return-void
.end method
