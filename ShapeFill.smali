.class Lcom/airbnb/lottie/ShapeFill;
.super Ljava/lang/Object;
.source "ShapeFill.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/ShapeFill$Factory;
    }
.end annotation


# instance fields
.field private final color:Lcom/airbnb/lottie/AnimatableColorValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V
    .registers 6
    .param p4    # Lcom/airbnb/lottie/AnimatableColorValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/lottie/AnimatableIntegerValue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/ShapeFill;->name:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/airbnb/lottie/ShapeFill;->fillEnabled:Z

    .line 19
    iput-object p3, p0, Lcom/airbnb/lottie/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    .line 20
    iput-object p4, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    .line 21
    iput-object p5, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;Lcom/airbnb/lottie/ShapeFill;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/AnimatableColorValue;Lcom/airbnb/lottie/AnimatableIntegerValue;)V

    return-void
.end method


# virtual methods
.method getColor()Lcom/airbnb/lottie/AnimatableColorValue;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    return-object v0
.end method

.method getFillType()Landroid/graphics/Path$FillType;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->name:Ljava/lang/String;

    return-object v0
.end method

.method getOpacity()Lcom/airbnb/lottie/AnimatableIntegerValue;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ShapeFill{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    if-nez v0, :cond_41

    const-string/jumbo v0, "null"

    .line 70
    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, ", fillEnabled="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    iget-boolean v1, p0, Lcom/airbnb/lottie/ShapeFill;->fillEnabled:Z

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string/jumbo v1, ", opacity="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    if-nez v0, :cond_52

    const-string/jumbo v0, "null"

    .line 70
    :goto_32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const/16 v1, 0x7d

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_41
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->color:Lcom/airbnb/lottie/AnimatableColorValue;

    invoke-virtual {v0}, Lcom/airbnb/lottie/BaseAnimatableValue;->getInitialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 73
    :cond_52
    iget-object v0, p0, Lcom/airbnb/lottie/ShapeFill;->opacity:Lcom/airbnb/lottie/AnimatableIntegerValue;

    invoke-virtual {v0}, Lcom/airbnb/lottie/AnimatableIntegerValue;->getInitialValue()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_32
.end method
