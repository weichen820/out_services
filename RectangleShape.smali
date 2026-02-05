.class Lcom/airbnb/lottie/RectangleShape;
.super Ljava/lang/Object;
.source "RectangleShape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/RectangleShape$Factory;
    }
.end annotation


# instance fields
.field private final cornerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

.field private final name:Ljava/lang/String;

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

.field private final size:Lcom/airbnb/lottie/AnimatablePointValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/AnimatableValue",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/AnimatablePointValue;",
            "Lcom/airbnb/lottie/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/RectangleShape;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/airbnb/lottie/RectangleShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    .line 18
    iput-object p3, p0, Lcom/airbnb/lottie/RectangleShape;->size:Lcom/airbnb/lottie/AnimatablePointValue;

    .line 19
    iput-object p4, p0, Lcom/airbnb/lottie/RectangleShape;->cornerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;Lcom/airbnb/lottie/RectangleShape;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/RectangleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/AnimatableValue;Lcom/airbnb/lottie/AnimatablePointValue;Lcom/airbnb/lottie/AnimatableFloatValue;)V

    return-void
.end method


# virtual methods
.method getCornerRadius()Lcom/airbnb/lottie/AnimatableFloatValue;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleShape;->cornerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleShape;->name:Ljava/lang/String;

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
    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    return-object v0
.end method

.method getSize()Lcom/airbnb/lottie/AnimatablePointValue;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/lottie/RectangleShape;->size:Lcom/airbnb/lottie/AnimatablePointValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RectangleShape{cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/RectangleShape;->cornerRadius:Lcom/airbnb/lottie/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AnimatableFloatValue;->getInitialValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    const-string/jumbo v1, ", position="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/airbnb/lottie/RectangleShape;->position:Lcom/airbnb/lottie/AnimatableValue;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    const-string/jumbo v1, ", size="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/airbnb/lottie/RectangleShape;->size:Lcom/airbnb/lottie/AnimatablePointValue;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const/16 v1, 0x7d

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
