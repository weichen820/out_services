.class Lcom/airbnb/lottie/ScaleKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/ScaleXY;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/ScaleXY;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/ScaleXY;",
            ">;F)",
            "Lcom/airbnb/lottie/ScaleXY;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 14
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_11
    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/ScaleXY;

    .line 17
    iget-object v1, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/ScaleXY;

    .line 18
    new-instance v2, Lcom/airbnb/lottie/ScaleXY;

    .line 19
    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v3

    invoke-virtual {v1}, Lcom/airbnb/lottie/ScaleXY;->getScaleX()F

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v3

    .line 20
    invoke-virtual {v0}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/ScaleXY;->getScaleY()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v0

    .line 18
    invoke-direct {v2, v3, v0}, Lcom/airbnb/lottie/ScaleXY;-><init>(FF)V

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/ScaleKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/ScaleXY;

    move-result-object v0

    return-object v0
.end method
