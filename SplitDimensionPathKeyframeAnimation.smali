.class Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "SplitDimensionPathKeyframeAnimation.java"


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

.field private final xAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final yAnimation:Lcom/airbnb/lottie/KeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/KeyframeAnimation;Lcom/airbnb/lottie/KeyframeAnimation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/airbnb/lottie/KeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 17
    iput-object p2, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    .line 18
    return-void
.end method


# virtual methods
.method public getValue()Landroid/graphics/PointF;
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;
    .registers 4
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
    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->getValue()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method setProgress(F)V
    .registers 5

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->setProgress(F)V

    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->setProgress(F)V

    .line 23
    iget-object v1, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/airbnb/lottie/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/KeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    const/4 v0, 0x0

    move v1, v0

    :goto_29
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_40

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 27
    :cond_40
    return-void
.end method
