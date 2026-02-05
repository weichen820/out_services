.class Lcom/airbnb/lottie/BaseLayer$1;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/BaseLayer;->setupInOutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/BaseLayer;

.field final synthetic val$inOutAnimation:Lcom/airbnb/lottie/FloatKeyframeAnimation;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/BaseLayer;Lcom/airbnb/lottie/FloatKeyframeAnimation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/BaseLayer$1;->this$0:Lcom/airbnb/lottie/BaseLayer;

    iput-object p2, p0, Lcom/airbnb/lottie/BaseLayer$1;->val$inOutAnimation:Lcom/airbnb/lottie/FloatKeyframeAnimation;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .registers 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/airbnb/lottie/BaseLayer$1;->this$0:Lcom/airbnb/lottie/BaseLayer;

    iget-object v0, p0, Lcom/airbnb/lottie/BaseLayer$1;->val$inOutAnimation:Lcom/airbnb/lottie/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/KeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-static {v1, v0}, Lcom/airbnb/lottie/BaseLayer;->-wrap0(Lcom/airbnb/lottie/BaseLayer;Z)V

    .line 123
    return-void

    .line 122
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method
