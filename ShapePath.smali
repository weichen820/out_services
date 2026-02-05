.class Lcom/airbnb/lottie/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapePath$Factory;
    }
.end annotation


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;

.field private final shapePath:Lcom/airbnb/lottie/AnimatableShapeValue;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/airbnb/lottie/AnimatableShapeValue;)V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/airbnb/lottie/ShapePath;->name:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/airbnb/lottie/ShapePath;->index:I

    .line 15
    iput-object p3, p0, Lcom/airbnb/lottie/ShapePath;->shapePath:Lcom/airbnb/lottie/AnimatableShapeValue;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/airbnb/lottie/AnimatableShapeValue;Lcom/airbnb/lottie/ShapePath;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/AnimatableShapeValue;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/ShapePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method getShapePath()Lcom/airbnb/lottie/AnimatableShapeValue;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/ShapePath;->shapePath:Lcom/airbnb/lottie/AnimatableShapeValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/ShapePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    const-string/jumbo v1, ", index="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    iget v1, p0, Lcom/airbnb/lottie/ShapePath;->index:I

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    const-string/jumbo v1, ", hasAnimation="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/airbnb/lottie/ShapePath;->shapePath:Lcom/airbnb/lottie/AnimatableShapeValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/BaseAnimatableValue;->hasAnimation()Z

    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    const/16 v1, 0x7d

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
