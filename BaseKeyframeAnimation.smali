.class abstract Lcom/airbnb/lottie/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedKeyframe:Lcom/airbnb/lottie/Keyframe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;"
        }
    .end annotation
.end field

.field private isDiscrete:Z

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    .line 28
    iput-object p1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    .line 29
    return-void
.end method

.method private getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There are no keyframes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_12
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    iget v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/Keyframe;->containsProgress(F)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    return-object v0

    .line 66
    :cond_23
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    .line 67
    iget v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_38

    .line 68
    iput-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    .line 69
    return-object v0

    .line 72
    :cond_38
    :goto_38
    iget v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/Keyframe;->containsProgress(F)Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 76
    :cond_53
    iput-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/Keyframe;

    .line 77
    return-object v0
.end method

.method private getCurrentKeyframeProgress()F
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-boolean v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    if-eqz v0, :cond_6

    .line 86
    return v2

    .line 89
    :cond_6
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 91
    return v2

    .line 93
    :cond_11
    iget v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v2

    sub-float/2addr v1, v2

    .line 94
    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getEndProgress()F

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v3

    sub-float/2addr v2, v3

    .line 96
    iget-object v0, v0, Lcom/airbnb/lottie/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private getEndProgress()F
    .registers 3
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getEndProgress()F

    move-result v0

    goto :goto_a
.end method

.method private getStartDelayProgress()F
    .registers 3
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Keyframe;->getStartProgress()F

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method getProgress()F
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/Keyframe;

    move-result-object v0

    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(Lcom/airbnb/lottie/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/Keyframe",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method setIsDiscrete()V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->isDiscrete:Z

    .line 33
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
    .line 40
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    .line 41
    const/4 p1, 0x0

    .line 46
    :cond_9
    :goto_9
    iget v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1b

    .line 47
    return-void

    .line 42
    :cond_10
    invoke-direct {p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->getEndProgress()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    .line 43
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_9

    .line 49
    :cond_1b
    iput p1, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->progress:F

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 54
    :cond_36
    return-void
.end method
