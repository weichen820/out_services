.class Lcom/airbnb/lottie/GradientColorKeyframeAnimation;
.super Lcom/airbnb/lottie/KeyframeAnimation;
.source "GradientColorKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/KeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/airbnb/lottie/GradientColor;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    iget-object v0, v0, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/GradientColor;

    .line 11
    if-nez v0, :cond_1d

    move v0, v1

    .line 12
    :goto_11
    new-instance v1, Lcom/airbnb/lottie/GradientColor;

    new-array v2, v0, [F

    new-array v0, v0, [I

    invoke-direct {v1, v2, v0}, Lcom/airbnb/lottie/GradientColor;-><init>([F[I)V

    iput-object v1, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    .line 13
    return-void

    .line 11
    :cond_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/GradientColor;->getSize()I

    move-result v0

    goto :goto_11
.end method


# virtual methods
.method getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/GradientColor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Lcom/airbnb/lottie/GradientColor;",
            ">;F)",
            "Lcom/airbnb/lottie/GradientColor;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v2, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    iget-object v0, p1, Lcom/airbnb/lottie/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/GradientColor;

    iget-object v1, p1, Lcom/airbnb/lottie/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/GradientColor;

    invoke-virtual {v2, v0, v1, p2}, Lcom/airbnb/lottie/GradientColor;->lerp(Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/GradientColor;F)V

    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->gradientColor:Lcom/airbnb/lottie/GradientColor;

    return-object v0
.end method

.method bridge synthetic getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/GradientColorKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Lcom/airbnb/lottie/GradientColor;

    move-result-object v0

    return-object v0
.end method
