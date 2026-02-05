.class Lcom/airbnb/lottie/GradientColor;
.super Ljava/lang/Object;
.source "GradientColor.java"


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method constructor <init>([F[I)V
    .registers 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/airbnb/lottie/GradientColor;->positions:[F

    .line 9
    iput-object p2, p0, Lcom/airbnb/lottie/GradientColor;->colors:[I

    .line 10
    return-void
.end method


# virtual methods
.method getColors()[I
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColor;->colors:[I

    return-object v0
.end method

.method getPositions()[F
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColor;->positions:[F

    return-object v0
.end method

.method getSize()I
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v0, v0

    return v0
.end method

.method lerp(Lcom/airbnb/lottie/GradientColor;Lcom/airbnb/lottie/GradientColor;F)V
    .registers 8

    .prologue
    .line 25
    iget-object v0, p1, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v0, v0

    iget-object v1, p2, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v1, v1

    if-eq v0, v1, :cond_3a

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    iget-object v2, p1, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v2, v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    const-string/jumbo v2, " vs "

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    iget-object v2, p2, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v2, v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    const-string/jumbo v2, ")"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    iget-object v1, p1, Lcom/airbnb/lottie/GradientColor;->colors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_63

    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/GradientColor;->positions:[F

    iget-object v2, p1, Lcom/airbnb/lottie/GradientColor;->positions:[F

    aget v2, v2, v0

    iget-object v3, p2, Lcom/airbnb/lottie/GradientColor;->positions:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/MiscUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 32
    iget-object v1, p0, Lcom/airbnb/lottie/GradientColor;->colors:[I

    iget-object v2, p1, Lcom/airbnb/lottie/GradientColor;->colors:[I

    aget v2, v2, v0

    iget-object v3, p2, Lcom/airbnb/lottie/GradientColor;->colors:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, Lcom/airbnb/lottie/GammaEvaluator;->evaluate(FII)I

    move-result v2

    aput v2, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 34
    :cond_63
    return-void
.end method
