.class Lcom/airbnb/lottie/PointKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "PointKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final point:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    .line 12
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 16
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_11
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 20
    iget-object v1, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    .line 22
    iget-object v2, p0, Lcom/airbnb/lottie/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 23
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v1, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v4

    .line 22
    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/PointKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
