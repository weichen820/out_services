.class Lcom/airbnb/lottie/MergePathsContent;
.super Ljava/lang/Object;
.source "MergePathsContent.java"

# interfaces
.implements Lcom/airbnb/lottie/PathContent;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final synthetic -com-airbnb-lottie-MergePaths$MergePathsModeSwitchesValues:[I


# instance fields
.field private final firstPath:Landroid/graphics/Path;

.field private final mergePaths:Lcom/airbnb/lottie/MergePaths;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final pathContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final remainderPath:Landroid/graphics/Path;


# direct methods
.method private static synthetic -getcom-airbnb-lottie-MergePaths$MergePathsModeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/airbnb/lottie/MergePathsContent;->-com-airbnb-lottie-MergePaths$MergePathsModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/airbnb/lottie/MergePathsContent;->-com-airbnb-lottie-MergePaths$MergePathsModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/MergePaths$MergePathsMode;->values()[Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/airbnb/lottie/MergePaths$MergePathsMode;->Add:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Lcom/airbnb/lottie/MergePaths$MergePathsMode;->ExcludeIntersections:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Lcom/airbnb/lottie/MergePaths$MergePathsMode;->Intersect:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Lcom/airbnb/lottie/MergePaths$MergePathsMode;->Merge:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Lcom/airbnb/lottie/MergePaths$MergePathsMode;->Subtract:Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lcom/airbnb/lottie/MergePathsContent;->-com-airbnb-lottie-MergePaths$MergePathsModeSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method constructor <init>(Lcom/airbnb/lottie/MergePaths;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2e

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Merge paths are not supported pre-KitKat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_2e
    invoke-virtual {p1}, Lcom/airbnb/lottie/MergePaths;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->name:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/airbnb/lottie/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/MergePaths;

    .line 26
    return-void
.end method

.method private addPaths()V
    .registers 4

    .prologue
    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 70
    iget-object v2, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 72
    :cond_1f
    return-void
.end method

.method private opFirstPathWithRest(Landroid/graphics/Path$Op;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 77
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 79
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_14
    const/4 v0, 0x1

    if-lt v4, v0, :cond_5d

    .line 80
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    .line 82
    instance-of v1, v0, Lcom/airbnb/lottie/ContentGroup;

    if-eqz v1, :cond_50

    move-object v1, v0

    .line 83
    nop

    nop

    invoke-virtual {v1}, Lcom/airbnb/lottie/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v5

    .line 84
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_31
    if-ltz v3, :cond_59

    .line 85
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v6

    move-object v1, v0

    .line 86
    nop

    nop

    invoke-virtual {v1}, Lcom/airbnb/lottie/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 87
    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v1, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 84
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_31

    .line 90
    :cond_50
    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 79
    :cond_59
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_14

    .line 94
    :cond_5d
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    .line 95
    instance-of v1, v0, Lcom/airbnb/lottie/ContentGroup;

    if-eqz v1, :cond_93

    move-object v1, v0

    .line 96
    nop

    nop

    invoke-virtual {v1}, Lcom/airbnb/lottie/ContentGroup;->getPathList()Ljava/util/List;

    move-result-object v3

    .line 97
    :goto_70
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9c

    .line 98
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v1}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    move-object v1, v0

    .line 99
    nop

    nop

    invoke-virtual {v1}, Lcom/airbnb/lottie/ContentGroup;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 100
    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 97
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_70

    .line 103
    :cond_93
    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    invoke-interface {v0}, Lcom/airbnb/lottie/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 106
    :cond_9c
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->firstPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/MergePathsContent;->remainderPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 107
    return-void
.end method


# virtual methods
.method addContentIfNeeded(Lcom/airbnb/lottie/Content;)V
    .registers 3

    .prologue
    .line 29
    instance-of v0, p1, Lcom/airbnb/lottie/PathContent;

    if-eqz v0, :cond_b

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    check-cast p1, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_b
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 43
    invoke-static {}, Lcom/airbnb/lottie/MergePathsContent;->-getcom-airbnb-lottie-MergePaths$MergePathsModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/MergePathsContent;->mergePaths:Lcom/airbnb/lottie/MergePaths;

    invoke-virtual {v1}, Lcom/airbnb/lottie/MergePaths;->getMode()Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 61
    :goto_18
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->path:Landroid/graphics/Path;

    return-object v0

    .line 45
    :pswitch_1b
    invoke-direct {p0}, Lcom/airbnb/lottie/MergePathsContent;->addPaths()V

    goto :goto_18

    .line 48
    :pswitch_1f
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_18

    .line 51
    :pswitch_25
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_18

    .line 54
    :pswitch_2b
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_18

    .line 57
    :pswitch_31
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/MergePathsContent;->opFirstPathWithRest(Landroid/graphics/Path$Op;)V

    goto :goto_18

    .line 43
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_31
        :pswitch_2b
        :pswitch_1b
        :pswitch_25
    .end packed-switch
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .registers 5
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
    .line 35
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/MergePathsContent;->pathContents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/PathContent;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/lottie/PathContent;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 38
    :cond_19
    return-void
.end method
