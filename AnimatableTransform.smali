.class Lcom/airbnb/lottie/AnimatableTransform;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lcom/airbnb/lottie/ModifierContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/AnimatableTransform$Factory;
    }
.end annotation


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/AnimatablePathValue;

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

.field private final position:Lcom/airbnb/lottie/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final scale:Lcom/airbnb/lottie/AnimatableScaleValue;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/AnimatablePathValue;",
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableScaleValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/AnimatableIntegerValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/AnimatablePathValue;

    .line 20
    iput-object p2, p0, Lcom/airbnb/lottie/AnimatableTransform;->position:Lcom/airbnb/lottie/AnimatableValue;

    .line 21
    iput-object p3, p0, Lcom/airbnb/lottie/AnimatableTransform;->scale:Lcom/airbnb/lottie/AnimatableScaleValue;

    .line 22
    iput-object p4, p0, Lcom/airbnb/lottie/AnimatableTransform;->rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 23
    iput-object p5, p0, Lcom/airbnb/lottie/AnimatableTransform;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/AnimatableTransform;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/AnimatableTransform;-><init>(Lcom/airbnb/lottie/AnimatablePathValue;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatableScaleValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/TransformKeyframeAnimation;
    .registers 2

    .prologue
    .line 118
    new-instance v0, Lcom/airbnb/lottie/TransformKeyframeAnimation;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/AnimatableTransform;)V

    return-object v0
.end method

.method getAnchorPoint()Lcom/airbnb/lottie/AnimatablePathValue;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/AnimatablePathValue;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method getPosition()Lcom/airbnb/lottie/AnimatableValue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->position:Lcom/airbnb/lottie/AnimatableValue;

    return-object v0
.end method

.method getRotation()Lcom/airbnb/lottie/AnimatableFloatValue;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->rotation:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getScale()Lcom/airbnb/lottie/AnimatableScaleValue;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/lottie/AnimatableTransform;->scale:Lcom/airbnb/lottie/AnimatableScaleValue;

    return-object v0
.end method
