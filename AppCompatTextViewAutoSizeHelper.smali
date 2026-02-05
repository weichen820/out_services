.class Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# static fields
.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ACTVAutoSizeHelper"

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field private static final VERY_WIDE:I = 0x100000

.field private static sTextViewMethodByNameCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private final mContext:Landroid/content/Context;

.field private mHasPresetAutoSizeValues:Z

.field private mNeedsAutoSizeText:Z

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/Hashtable;

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 78
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 80
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 82
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 84
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 87
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 91
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 98
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 445
    array-length v2, p1

    .line 446
    if-nez v2, :cond_5

    .line 447
    return-object p1

    .line 449
    :cond_5
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 452
    :goto_e
    if-ge v1, v2, :cond_28

    .line 453
    aget v4, p1, v1

    .line 455
    if-lez v4, :cond_25

    .line 456
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_25

    .line 457
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 461
    :cond_28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v2, v1, :cond_2f

    .line 462
    return-object p1

    .line 464
    :cond_2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 465
    new-array v4, v2, [I

    move v1, v0

    .line 466
    :goto_36
    if-ge v1, v2, :cond_48

    .line 467
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 466
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    .line 469
    :cond_48
    return-object v4
.end method

.method private clearAutoSizeConfiguration()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 583
    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 584
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 585
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 586
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 587
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 588
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 589
    return-void
.end method

.method private createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "getTextDirectionHeuristic"

    .line 711
    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 709
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextDirectionHeuristic;

    .line 714
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    .line 713
    invoke-static {p1, v3, v1, v2, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 716
    invoke-virtual {v1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 718
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    .line 719
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    .line 716
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 720
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    .line 716
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 721
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    .line 716
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 722
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    .line 716
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 723
    const/4 v2, -0x1

    if-ne p4, v2, :cond_50

    const p4, 0x7fffffff

    .line 716
    :cond_50
    invoke-virtual {v1, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method private createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 732
    const/high16 v0, 0x3f800000    # 1.0f

    .line 733
    const/4 v1, 0x0

    .line 734
    const/4 v2, 0x1

    .line 736
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_27

    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 739
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    .line 740
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    .line 754
    :goto_1c
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .line 744
    :cond_27
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 745
    const-string/jumbo v4, "getLineSpacingMultiplier"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 744
    invoke-direct {p0, v3, v4, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 746
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 747
    const-string/jumbo v3, "getLineSpacingExtra"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 746
    invoke-direct {p0, v0, v3, v1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 749
    const-string/jumbo v1, "getIncludeFontPadding"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 748
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_1c
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    .line 641
    if-nez v0, :cond_f

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No available text sizes to choose from."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_f
    const/4 v2, 0x1

    .line 647
    add-int/lit8 v0, v0, -0x1

    .line 649
    :goto_12
    if-gt v2, v0, :cond_2d

    .line 650
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    .line 651
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v3, v3, v1

    invoke-direct {p0, v3, p1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 653
    add-int/lit8 v1, v1, 0x1

    :goto_24
    move v4, v1

    move v1, v2

    move v2, v4

    goto :goto_12

    .line 655
    :cond_28
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    move v2, v0

    .line 656
    goto :goto_24

    .line 660
    :cond_2d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v0, v0, v1

    return v0
.end method

.method private getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 785
    :try_start_1
    sget-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 786
    if-nez v0, :cond_1f

    .line 787
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_1f

    .line 789
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 791
    sget-object v1, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    .line 795
    :cond_1f
    return-object v0

    .line 796
    :catch_20
    move-exception v0

    .line 797
    const-string/jumbo v1, "ACTVAutoSizeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to retrieve TextView#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "() method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    return-object v4
.end method

.method private invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 768
    :try_start_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 769
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d
    .catchall {:try_start_1 .. :try_end_b} :catchall_31

    move-result-object p3

    .line 779
    :goto_c
    return-object p3

    .line 770
    :catch_d
    move-exception v0

    .line 771
    const/4 v1, 0x1

    .line 772
    :try_start_f
    const-string/jumbo v2, "ACTVAutoSizeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to invoke TextView#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "() method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_31

    goto :goto_c

    .line 773
    :catchall_31
    move-exception v0

    throw v0
.end method

.method private setRawTextSize(F)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4e

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_60

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    .line 610
    :goto_24
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 612
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 614
    const-string/jumbo v1, "nullLayouts"

    .line 616
    :try_start_31
    const-string/jumbo v1, "nullLayouts"

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 617
    if-eqz v1, :cond_42

    .line 618
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_42} :catch_4f

    .line 624
    :cond_42
    :goto_42
    if-nez v0, :cond_5a

    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 630
    :goto_49
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 633
    :cond_4e
    return-void

    .line 620
    :catch_4f
    move-exception v1

    .line 621
    const-string/jumbo v2, "ACTVAutoSizeHelper"

    const-string/jumbo v3, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 627
    :cond_5a
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    goto :goto_49

    :cond_60
    move v0, v1

    goto :goto_24
.end method

.method private setupAutoSizeText()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 508
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 509
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-ne v0, v2, :cond_52

    .line 512
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v0, v0

    if-nez v0, :cond_4d

    .line 515
    :cond_15
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    move v1, v2

    .line 516
    :goto_1d
    iget v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 517
    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 516
    if-gt v4, v5, :cond_32

    .line 518
    add-int/lit8 v1, v1, 0x1

    .line 519
    iget v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v0, v4

    goto :goto_1d

    .line 521
    :cond_32
    new-array v4, v1, [I

    .line 522
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    move v6, v3

    move v3, v0

    move v0, v6

    .line 523
    :goto_39
    if-ge v0, v1, :cond_47

    .line 524
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v4, v0

    .line 525
    iget v5, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    add-float/2addr v3, v5

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 527
    :cond_47
    invoke-direct {p0, v4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 530
    :cond_4d
    iput-boolean v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 535
    :goto_4f
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    return v0

    .line 532
    :cond_52
    iput-boolean v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    goto :goto_4f
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 420
    new-array v2, v1, [I

    .line 422
    if-lez v1, :cond_1e

    .line 423
    :goto_9
    if-ge v0, v1, :cond_15

    .line 424
    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v2, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 426
    :cond_15
    invoke-direct {p0, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 427
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    .line 429
    :cond_1e
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    array-length v3, v0

    .line 433
    if-lez v3, :cond_27

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 434
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-eqz v0, :cond_24

    .line 435
    iput v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    add-int/lit8 v1, v3, -0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 438
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 440
    :cond_24
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    return v0

    :cond_27
    move v0, v2

    .line 433
    goto :goto_8
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 664
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 665
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_19

    .line 667
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_19

    move-object v1, v0

    .line 673
    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_78

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    move v2, v0

    .line 674
    :goto_26
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_7a

    .line 675
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    .line 679
    :goto_31
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    int-to-float v4, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "getLayoutAlignment"

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 683
    invoke-direct {p0, v0, v4, v5}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    .line 685
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_80

    .line 687
    iget v4, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 686
    invoke-direct {p0, v1, v0, v4, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object v0

    .line 691
    :goto_5f
    if-eq v2, v3, :cond_8b

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v2, :cond_77

    .line 692
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v2, v1, :cond_8b

    .line 693
    :cond_77
    return v6

    :cond_78
    move v2, v3

    .line 673
    goto :goto_26

    .line 677
    :cond_7a
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    goto :goto_31

    .line 689
    :cond_80
    iget v4, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 688
    invoke-direct {p0, v1, v0, v4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->createStaticLayoutForMeasuringPre23(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_5f

    .line 697
    :cond_8b
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_97

    .line 698
    return v6

    .line 701
    :cond_97
    const/4 v0, 0x1

    return v0
.end method

.method private supportsAutoSizeText()Z
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/support/v7/widget/AppCompatEditText;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 483
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_26

    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 485
    const-string/jumbo v2, "px) is less or equal to (0px)"

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_26
    cmpg-float v0, p2, p1

    if-gtz v0, :cond_5d

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Maximum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 490
    const-string/jumbo v2, "px) is less or equal to minimum auto-size "

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 491
    const-string/jumbo v2, "text size ("

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 491
    const-string/jumbo v2, "px)"

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_5d
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_82

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The auto-size step granularity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 496
    const-string/jumbo v2, "px) is less or equal to (0px)"

    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_82
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 501
    iput p1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 502
    iput p2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 503
    iput p3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 505
    return-void
.end method


# virtual methods
.method autoSizeText()V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 545
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 546
    return-void

    .line 549
    :cond_8
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    if-eqz v0, :cond_8a

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1d

    .line 551
    :cond_1c
    return-void

    .line 555
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "getHorizontallyScrolling"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 554
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 556
    if-eqz v0, :cond_4d

    .line 557
    const/high16 v0, 0x100000

    .line 560
    :goto_34
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 561
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    .line 560
    sub-int/2addr v1, v2

    .line 563
    if-lez v0, :cond_4c

    if-gtz v1, :cond_62

    .line 564
    :cond_4c
    return-void

    .line 558
    :cond_4d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 559
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    .line 558
    sub-int/2addr v0, v1

    goto :goto_34

    .line 567
    :cond_62
    sget-object v2, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v2

    .line 568
    :try_start_65
    sget-object v3, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 569
    sget-object v3, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 570
    sget-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 571
    sget-object v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 572
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_89

    .line 573
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V
    :try_end_89
    .catchall {:try_start_65 .. :try_end_89} :catchall_8e

    :cond_89
    monitor-exit v2

    .line 579
    :cond_8a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    .line 580
    return-void

    .line 567
    :catchall_8e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method getAutoSizeMaxTextSize()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 402
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 386
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 370
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    return-object v0
.end method

.method getAutoSizeTextType()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 356
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    return v0
.end method

.method isAutoSizeEnabled()Z
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 810
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 811
    iget v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    .line 810
    :cond_c
    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-virtual {v0, p1, v2, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 109
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 110
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 113
    :cond_1c
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 115
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    .line 114
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 118
    :goto_2a
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 120
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    .line 119
    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 123
    :goto_38
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 125
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    .line 124
    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 128
    :goto_46
    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 130
    sget v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    .line 129
    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 131
    if-lez v5, :cond_64

    .line 132
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 134
    invoke-direct {p0, v5}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    .line 135
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    :cond_64
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 141
    iget v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a0

    .line 145
    iget-boolean v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    if-nez v4, :cond_9d

    .line 147
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 149
    cmpl-float v5, v2, v1

    if-nez v5, :cond_8a

    .line 152
    const/high16 v2, 0x41400000    # 12.0f

    .line 150
    invoke-static {v8, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 156
    :cond_8a
    cmpl-float v5, v3, v1

    if-nez v5, :cond_94

    .line 159
    const/high16 v3, 0x42e00000    # 112.0f

    .line 157
    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 163
    :cond_94
    cmpl-float v1, v0, v1

    if-nez v1, :cond_9a

    .line 165
    const/high16 v0, 0x3f800000    # 1.0f

    .line 168
    :cond_9a
    invoke-direct {p0, v2, v3, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 173
    :cond_9d
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    .line 178
    :cond_a0
    :goto_a0
    return-void

    .line 176
    :cond_a1
    iput v7, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    goto :goto_a0

    :cond_a4
    move v3, v1

    goto :goto_46

    :cond_a6
    move v2, v1

    goto :goto_38

    :cond_a8
    move v0, v1

    goto :goto_2a
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 9
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 264
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 266
    int-to-float v1, p1

    .line 265
    invoke-static {p4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 268
    int-to-float v2, p2

    .line 267
    invoke-static {p4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 270
    int-to-float v3, p3

    .line 269
    invoke-static {p4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 272
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 275
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 279
    :cond_2b
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 8
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 307
    array-length v2, p1

    .line 308
    if-lez v2, :cond_58

    .line 309
    new-array v0, v2, [I

    .line 311
    if-nez p2, :cond_3c

    .line 312
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 323
    :cond_12
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 324
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "None of the preset sizes is valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_3c
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 317
    :goto_46
    if-ge v1, v2, :cond_12

    .line 319
    aget v4, p1, v1

    int-to-float v4, v4

    .line 318
    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v0, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 329
    :cond_58
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 332
    :cond_5a
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 333
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 336
    :cond_63
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 196
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 197
    packed-switch p1, :pswitch_data_4e

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :pswitch_24
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->clearAutoSizeConfiguration()V

    .line 226
    :cond_27
    :goto_27
    return-void

    .line 203
    :pswitch_28
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 206
    const/high16 v1, 0x41400000    # 12.0f

    .line 204
    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 210
    const/high16 v2, 0x42e00000    # 112.0f

    .line 208
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 216
    const/high16 v2, 0x3f800000    # 1.0f

    .line 213
    invoke-direct {p0, v1, v0, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 217
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    goto :goto_27

    .line 197
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method setTextSizeInternal(IF)V
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 595
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 598
    :goto_8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setRawTextSize(F)V

    .line 599
    return-void

    .line 596
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_8
.end method
