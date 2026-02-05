.class Lcom/airbnb/lottie/TrimPathContent;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Lcom/airbnb/lottie/Content;
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final endAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private final offsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final startAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/airbnb/lottie/ShapeTrimPath$Type;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/ShapeTrimPath;)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->listeners:Ljava/util/List;

    .line 16
    invoke-virtual {p2}, Lcom/airbnb/lottie/ShapeTrimPath;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/airbnb/lottie/ShapeTrimPath;->getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->type:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    .line 18
    invoke-virtual {p2}, Lcom/airbnb/lottie/ShapeTrimPath;->getStart()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 19
    invoke-virtual {p2}, Lcom/airbnb/lottie/ShapeTrimPath;->getEnd()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 20
    invoke-virtual {p2}, Lcom/airbnb/lottie/ShapeTrimPath;->getOffset()Lcom/airbnb/lottie/AnimatableFloatValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/KeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 23
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/BaseLayer;->addAnimation(Lcom/airbnb/lottie/BaseKeyframeAnimation;)V

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method addListener(Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;)V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public getEnd()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->endAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->offsetAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    return-object v0
.end method

.method public getStart()Lcom/airbnb/lottie/BaseKeyframeAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->startAnimation:Lcom/airbnb/lottie/BaseKeyframeAnimation;

    return-object v0
.end method

.method getType()Lcom/airbnb/lottie/ShapeTrimPath$Type;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->type:Lcom/airbnb/lottie/ShapeTrimPath$Type;

    return-object v0
.end method

.method public onValueChanged()V
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/TrimPathContent;->listeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v0}, Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    .line 32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 35
    :cond_19
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
    .line 39
    return-void
.end method
