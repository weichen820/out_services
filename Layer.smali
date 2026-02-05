.class Lcom/airbnb/lottie/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/Layer$Factory;,
        Lcom/airbnb/lottie/Layer$LayerType;,
        Lcom/airbnb/lottie/Layer$MatteType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/airbnb/lottie/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/airbnb/lottie/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startProgress:F

.field private final timeStretch:F

.field private final transform:Lcom/airbnb/lottie/AnimatableTransform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/lottie/Layer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/Layer;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILjava/util/List;Lcom/airbnb/lottie/Layer$MatteType;)V
    .registers 22
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;",
            "Lcom/airbnb/lottie/AnimatableTransform;",
            "IIIFFII",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/Layer$MatteType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 62
    iput-object p3, p0, Lcom/airbnb/lottie/Layer;->layerName:Ljava/lang/String;

    .line 63
    iput-wide p4, p0, Lcom/airbnb/lottie/Layer;->layerId:J

    .line 64
    iput-object p6, p0, Lcom/airbnb/lottie/Layer;->layerType:Lcom/airbnb/lottie/Layer$LayerType;

    .line 65
    iput-wide p7, p0, Lcom/airbnb/lottie/Layer;->parentId:J

    .line 66
    iput-object p9, p0, Lcom/airbnb/lottie/Layer;->refId:Ljava/lang/String;

    .line 67
    iput-object p10, p0, Lcom/airbnb/lottie/Layer;->masks:Ljava/util/List;

    .line 68
    iput-object p11, p0, Lcom/airbnb/lottie/Layer;->transform:Lcom/airbnb/lottie/AnimatableTransform;

    .line 69
    iput p12, p0, Lcom/airbnb/lottie/Layer;->solidWidth:I

    .line 70
    iput p13, p0, Lcom/airbnb/lottie/Layer;->solidHeight:I

    .line 71
    iput p14, p0, Lcom/airbnb/lottie/Layer;->solidColor:I

    .line 72
    move/from16 v0, p15

    iput v0, p0, Lcom/airbnb/lottie/Layer;->timeStretch:F

    .line 73
    move/from16 v0, p16

    iput v0, p0, Lcom/airbnb/lottie/Layer;->startProgress:F

    .line 74
    move/from16 v0, p17

    iput v0, p0, Lcom/airbnb/lottie/Layer;->preCompWidth:I

    .line 75
    move/from16 v0, p18

    iput v0, p0, Lcom/airbnb/lottie/Layer;->preCompHeight:I

    .line 76
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/airbnb/lottie/Layer;->inOutKeyframes:Ljava/util/List;

    .line 77
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/airbnb/lottie/Layer;->matteType:Lcom/airbnb/lottie/Layer$MatteType;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILjava/util/List;Lcom/airbnb/lottie/Layer$MatteType;Lcom/airbnb/lottie/Layer;)V
    .registers 22

    invoke-direct/range {p0 .. p20}, Lcom/airbnb/lottie/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/AnimatableTransform;IIIFFIILjava/util/List;Lcom/airbnb/lottie/Layer$MatteType;)V

    return-void
.end method


# virtual methods
.method getComposition()Lcom/airbnb/lottie/LottieComposition;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method getId()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/airbnb/lottie/Layer;->layerId:J

    return-wide v0
.end method

.method getInOutKeyframes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->inOutKeyframes:Ljava/util/List;

    return-object v0
.end method

.method getLayerType()Lcom/airbnb/lottie/Layer$LayerType;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->layerType:Lcom/airbnb/lottie/Layer$LayerType;

    return-object v0
.end method

.method getMasks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/Mask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->masks:Ljava/util/List;

    return-object v0
.end method

.method getMatteType()Lcom/airbnb/lottie/Layer$MatteType;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->matteType:Lcom/airbnb/lottie/Layer$MatteType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->layerName:Ljava/lang/String;

    return-object v0
.end method

.method getParentId()J
    .registers 3

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/airbnb/lottie/Layer;->parentId:J

    return-wide v0
.end method

.method getPreCompHeight()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/airbnb/lottie/Layer;->preCompHeight:I

    return v0
.end method

.method getPreCompWidth()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/airbnb/lottie/Layer;->preCompWidth:I

    return v0
.end method

.method getRefId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->refId:Ljava/lang/String;

    return-object v0
.end method

.method getShapes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    return-object v0
.end method

.method getSolidColor()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidColor:I

    return v0
.end method

.method getSolidHeight()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidHeight:I

    return v0
.end method

.method getSolidWidth()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/airbnb/lottie/Layer;->solidWidth:I

    return v0
.end method

.method getStartProgress()F
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/airbnb/lottie/Layer;->startProgress:F

    return v0
.end method

.method getTimeStretch()F
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/airbnb/lottie/Layer;->timeStretch:F

    return v0
.end method

.method getTransform()Lcom/airbnb/lottie/AnimatableTransform;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->transform:Lcom/airbnb/lottie/AnimatableTransform;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_61

    .line 161
    const-string/jumbo v2, "\t\tParents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v0

    .line 163
    :goto_3c
    if-eqz v0, :cond_57

    .line 164
    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v2, p0, Lcom/airbnb/lottie/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/Layer;->getParentId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/Layer;

    move-result-object v0

    goto :goto_3c

    .line 167
    :cond_57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_61
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 170
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getMasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_88
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidWidth()I

    move-result v0

    if-eqz v0, :cond_ce

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidHeight()I

    move-result v0

    if-eqz v0, :cond_ce

    .line 173
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%dx%d %X\n"

    .line 173
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/airbnb/lottie/Layer;->getSolidColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 173
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_ce
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_106

    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v0, p0, Lcom/airbnb/lottie/Layer;->shapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e6

    .line 182
    :cond_106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
