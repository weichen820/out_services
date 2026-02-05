.class public Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    .line 502
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    .line 501
    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v5, 0x0

    .line 510
    const/4 v4, 0x0

    .line 514
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    move-object v13, v4

    .line 516
    :cond_7
    :goto_7
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_14

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v15, :cond_f2

    .line 517
    :cond_14
    const/4 v6, 0x1

    if-eq v4, v6, :cond_f2

    .line 519
    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    .line 523
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 524
    const/4 v14, 0x0

    .line 526
    const-string/jumbo v6, "objectAnimator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v8, p7

    move-object/from16 v9, p3

    .line 527
    invoke-static/range {v4 .. v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move v4, v14

    .line 552
    :goto_39
    if-eqz p5, :cond_ef

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_122

    .line 553
    if-nez v13, :cond_46

    .line 554
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 556
    :cond_46
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v13

    :goto_4a
    move-object v13, v4

    goto :goto_7

    .line 528
    :cond_4c
    const-string/jumbo v6, "animator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 529
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v9, p7

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v5

    move v4, v14

    goto :goto_39

    .line 530
    :cond_68
    const-string/jumbo v6, "set"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 531
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 533
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    .line 532
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 535
    const-string/jumbo v4, "ordering"

    .line 536
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 535
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4, v5, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    move-object v9, v12

    .line 538
    nop

    nop

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v11, p7

    invoke-static/range {v4 .. v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 540
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    move v4, v14

    move-object v5, v12

    goto :goto_39

    .line 541
    :cond_a7
    const-string/jumbo v6, "propertyValuesHolder"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 543
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 544
    if-eqz v6, :cond_ce

    if-eqz v5, :cond_ce

    instance-of v4, v5, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_ce

    move-object v4, v5

    .line 545
    nop

    nop

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 547
    :cond_ce
    const/4 v4, 0x1

    goto/16 :goto_39

    .line 549
    :cond_d1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_ef
    move-object v4, v13

    .line 552
    goto/16 :goto_4a

    .line 559
    :cond_f2
    if-eqz p5, :cond_11b

    if-eqz v13, :cond_11b

    .line 560
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v8, v4, [Landroid/animation/Animator;

    .line 561
    const/4 v4, 0x0

    .line 562
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v4

    :goto_102
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_114

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 563
    add-int/lit8 v7, v6, 0x1

    aput-object v4, v8, v6

    move v6, v7

    goto :goto_102

    .line 565
    :cond_114
    if-nez p6, :cond_11c

    .line 566
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 571
    :cond_11b
    :goto_11b
    return-object v5

    .line 568
    :cond_11c
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_11b

    :cond_122
    move-object v4, v13

    goto/16 :goto_4a
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4

    .prologue
    .line 779
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    .line 780
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 779
    :goto_c
    return-object v0

    .line 781
    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    .line 782
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_c

    .line 783
    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_c
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 7

    .prologue
    .line 806
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    .line 807
    int-to-float v0, v0

    div-float v0, p1, v0

    .line 808
    :goto_7
    if-gt p2, p3, :cond_1a

    .line 809
    aget-object v1, p0, p2

    add-int/lit8 v2, p2, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 808
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 811
    :cond_1a
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 673
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    .line 674
    :cond_6
    return-void

    .line 676
    :cond_7
    const-string/jumbo v1, "AnimatorInflater"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    array-length v3, p0

    move v2, v0

    .line 678
    :goto_f
    if-ge v2, v3, :cond_73

    .line 679
    aget-object v0, p0, v2

    check-cast v0, Landroid/animation/Keyframe;

    .line 680
    const-string/jumbo v4, "AnimatorInflater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Keyframe "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ": fraction "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 681
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    const/4 v6, 0x0

    cmpg-float v1, v1, v6

    if-gez v1, :cond_66

    const-string/jumbo v1, "null"

    .line 680
    :goto_3b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 681
    const-string/jumbo v5, ", "

    .line 680
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 682
    const-string/jumbo v5, ", value : "

    .line 680
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 682
    invoke-virtual {v0}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 680
    :goto_57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    .line 681
    :cond_66
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_3b

    .line 682
    :cond_6f
    const-string/jumbo v0, "null"

    goto :goto_57

    .line 684
    :cond_73
    return-void
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 16

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_7e

    move v8, v5

    .line 208
    :goto_c
    if-eqz v8, :cond_80

    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 209
    :goto_10
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_82

    move v7, v5

    .line 211
    :goto_17
    if-eqz v7, :cond_84

    iget v3, v3, Landroid/util/TypedValue;->type:I

    move v6, v3

    .line 213
    :goto_1c
    const/4 v3, 0x4

    if-ne p1, v3, :cond_30

    .line 215
    if-eqz v8, :cond_27

    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_27
    if-eqz v7, :cond_86

    invoke-static {v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 216
    :cond_2f
    const/4 p1, 0x3

    .line 222
    :cond_30
    :goto_30
    if-nez p1, :cond_88

    move v4, v5

    .line 226
    :goto_33
    const/4 v3, 0x2

    if-ne p1, v3, :cond_b1

    .line 227
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v4

    .line 233
    invoke-static {v3}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v6

    .line 234
    if-nez v4, :cond_4a

    if-eqz v6, :cond_8a

    .line 235
    :cond_4a
    if-eqz v4, :cond_a1

    .line 236
    new-instance v7, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v7, v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;)V

    .line 237
    if-eqz v6, :cond_98

    .line 238
    invoke-static {v4, v6}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 239
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Can\'t morph from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7e
    move v8, v1

    .line 207
    goto :goto_c

    :cond_80
    move v0, v1

    .line 208
    goto :goto_10

    :cond_82
    move v7, v1

    .line 210
    goto :goto_17

    :cond_84
    move v6, v1

    .line 211
    goto :goto_1c

    :cond_86
    move p1, v1

    .line 218
    goto :goto_30

    :cond_88
    move v4, v1

    .line 222
    goto :goto_33

    :cond_8a
    move-object v0, v2

    .line 330
    :cond_8b
    :goto_8b
    return-object v0

    .line 242
    :cond_8c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 243
    aput-object v4, v0, v1

    aput-object v6, v0, v5

    .line 242
    invoke-static {p4, v7, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_8b

    .line 245
    :cond_98
    new-array v0, v5, [Ljava/lang/Object;

    .line 246
    aput-object v4, v0, v1

    .line 245
    invoke-static {p4, v7, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_8b

    .line 248
    :cond_a1
    if-eqz v6, :cond_179

    .line 249
    new-instance v0, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v0, v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;)V

    .line 250
    new-array v2, v5, [Ljava/lang/Object;

    .line 251
    aput-object v6, v2, v1

    .line 250
    invoke-static {p4, v0, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_8b

    .line 257
    :cond_b1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_176

    .line 259
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    .line 261
    :goto_b8
    if-eqz v4, :cond_106

    .line 264
    if-eqz v8, :cond_f2

    .line 265
    if-ne v0, v10, :cond_de

    .line 266
    invoke-virtual {p0, p2, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    move v2, v0

    .line 270
    :goto_c3
    if-eqz v7, :cond_e9

    .line 271
    if-ne v6, v10, :cond_e4

    .line 272
    invoke-virtual {p0, p3, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 276
    :goto_cb
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 277
    aput v2, v4, v1

    aput v0, v4, v5

    .line 276
    invoke-static {p4, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 325
    :goto_d6
    if-eqz v0, :cond_8b

    if-eqz v3, :cond_8b

    .line 326
    invoke-virtual {v0, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_8b

    .line 268
    :cond_de
    invoke-virtual {p0, p2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    move v2, v0

    goto :goto_c3

    .line 274
    :cond_e4
    invoke-virtual {p0, p3, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_cb

    .line 279
    :cond_e9
    new-array v0, v5, [F

    aput v2, v0, v1

    invoke-static {p4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_d6

    .line 282
    :cond_f2
    if-ne v6, v10, :cond_101

    .line 283
    invoke-virtual {p0, p3, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 287
    :goto_f8
    new-array v2, v5, [F

    aput v0, v2, v1

    invoke-static {p4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_d6

    .line 285
    :cond_101
    invoke-virtual {p0, p3, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_f8

    .line 292
    :cond_106
    if-eqz v8, :cond_150

    .line 293
    if-ne v0, v10, :cond_125

    .line 294
    invoke-virtual {p0, p2, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    .line 300
    :goto_110
    if-eqz v7, :cond_147

    .line 301
    if-ne v6, v10, :cond_137

    .line 302
    invoke-virtual {p0, p3, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 308
    :goto_119
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v1

    aput v0, v4, v5

    invoke-static {p4, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_d6

    .line 295
    :cond_125
    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 296
    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    move v2, v0

    goto :goto_110

    .line 298
    :cond_131
    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v2, v0

    goto :goto_110

    .line 303
    :cond_137
    invoke-static {v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 304
    invoke-virtual {p0, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_119

    .line 306
    :cond_142
    invoke-virtual {p0, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    goto :goto_119

    .line 310
    :cond_147
    new-array v0, v5, [I

    aput v2, v0, v1

    invoke-static {p4, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_d6

    .line 313
    :cond_150
    if-eqz v7, :cond_173

    .line 314
    if-ne v6, v10, :cond_163

    .line 315
    invoke-virtual {p0, p3, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 321
    :goto_159
    new-array v2, v5, [I

    aput v0, v2, v1

    invoke-static {p4, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto/16 :goto_d6

    .line 316
    :cond_163
    invoke-static {v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 317
    invoke-virtual {p0, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_159

    .line 319
    :cond_16e
    invoke-virtual {p0, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    goto :goto_159

    :cond_173
    move-object v0, v2

    goto/16 :goto_d6

    :cond_176
    move-object v3, v2

    goto/16 :goto_b8

    :cond_179
    move-object v0, v2

    goto/16 :goto_8b
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 655
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_2a

    move v4, v2

    .line 657
    :goto_9
    if-eqz v4, :cond_2c

    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 658
    :goto_d
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 659
    if-eqz v5, :cond_2e

    move v3, v2

    .line 660
    :goto_14
    if-eqz v3, :cond_30

    iget v2, v5, Landroid/util/TypedValue;->type:I

    .line 664
    :goto_18
    if-eqz v4, :cond_20

    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_20
    if-eqz v3, :cond_29

    invoke-static {v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 665
    :cond_28
    const/4 v1, 0x3

    .line 669
    :cond_29
    return v1

    :cond_2a
    move v4, v1

    .line 656
    goto :goto_9

    :cond_2c
    move v0, v1

    .line 657
    goto :goto_d

    :cond_2e
    move v3, v1

    .line 659
    goto :goto_14

    :cond_30
    move v2, v1

    .line 660
    goto :goto_18
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 637
    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    .line 636
    invoke-static {p0, p1, p2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 639
    const-string/jumbo v1, "value"

    invoke-static {v2, p3, v1, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v3

    .line 641
    if-eqz v3, :cond_20

    const/4 v1, 0x1

    .line 644
    :goto_11
    if-eqz v1, :cond_1c

    iget v1, v3, Landroid/util/TypedValue;->type:I

    invoke-static {v1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 645
    const/4 v0, 0x3

    .line 649
    :cond_1c
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 650
    return v0

    :cond_20
    move v1, v0

    .line 641
    goto :goto_11
.end method

.method private static isColorType(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 917
    const/16 v1, 0x1c

    if-lt p0, v1, :cond_a

    .line 918
    const/16 v1, 0x1f

    .line 917
    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 100
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 104
    :goto_a
    return-object v0

    .line 102
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_a
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 5
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 10
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    :try_start_1
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 131
    invoke-static {p0, p1, p2, v1, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_8} :catch_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_f
    .catchall {:try_start_1 .. :try_end_8} :catchall_31

    move-result-object v0

    .line 146
    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 132
    :cond_e
    return-object v0

    .line 139
    :catch_f
    move-exception v0

    .line 141
    :try_start_10
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v2
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_31

    .line 145
    :catchall_31
    move-exception v0

    .line 146
    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 145
    :cond_37
    throw v0

    .line 133
    :catch_38
    move-exception v0

    .line 135
    :try_start_39
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v2
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_31
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 891
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    .line 890
    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 893
    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    .line 892
    invoke-static {p1, p2, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 895
    if-nez p4, :cond_14

    .line 896
    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 899
    :cond_14
    invoke-static {p4, v0, v1, p5, p6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 902
    const-string/jumbo v2, "interpolator"

    invoke-static {v0, p6, v2, v3, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 904
    if-lez v2, :cond_27

    .line 905
    invoke-static {p0, v2}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 906
    invoke-virtual {p4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    :cond_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 910
    if-eqz v1, :cond_2f

    .line 911
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 913
    :cond_2f
    return-object p4
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 819
    sget-object v3, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    .line 818
    invoke-static {p1, p2, p3, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 823
    const-string/jumbo v3, "fraction"

    .line 824
    const/high16 v6, -0x40800000    # -1.0f

    .line 823
    invoke-static {v5, p5, v3, v1, v6}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v6

    .line 826
    const-string/jumbo v3, "value"

    invoke-static {v5, p5, v3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v7

    .line 828
    if-eqz v7, :cond_44

    move v3, v4

    .line 829
    :goto_1d
    const/4 v8, 0x4

    if-ne p4, v8, :cond_2b

    .line 832
    if-eqz v3, :cond_46

    iget v7, v7, Landroid/util/TypedValue;->type:I

    invoke-static {v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_46

    move p4, v1

    .line 839
    :cond_2b
    :goto_2b
    if-eqz v3, :cond_61

    .line 840
    packed-switch p4, :pswitch_data_6e

    .line 858
    :goto_30
    :pswitch_30
    const-string/jumbo v1, "interpolator"

    invoke-static {v5, p5, v1, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 860
    if-lez v1, :cond_40

    .line 861
    invoke-static {p0, v1}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 862
    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 864
    :cond_40
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 866
    return-object v0

    :cond_44
    move v3, v2

    .line 828
    goto :goto_1d

    :cond_46
    move p4, v2

    .line 835
    goto :goto_2b

    .line 842
    :pswitch_48
    const-string/jumbo v0, "value"

    .line 843
    const/4 v1, 0x0

    .line 842
    invoke-static {v5, p5, v0, v2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 844
    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_30

    .line 848
    :pswitch_55
    const-string/jumbo v0, "value"

    invoke-static {v5, p5, v0, v2, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 850
    invoke-static {v6, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_30

    .line 854
    :cond_61
    if-nez p4, :cond_68

    invoke-static {v6}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_30

    .line 855
    :cond_68
    invoke-static {v6}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_30

    .line 840
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_48
        :pswitch_55
        :pswitch_30
        :pswitch_55
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 872
    new-instance v4, Landroid/animation/ObjectAnimator;

    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 874
    invoke-static/range {v0 .. v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 876
    return-object v4
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    const/4 v7, 0x0

    .line 693
    const/4 v0, 0x0

    move-object v6, v0

    .line 696
    :goto_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    .line 697
    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    .line 698
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 699
    const-string/jumbo v1, "keyframe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 700
    const/4 v0, 0x4

    if-ne p5, v0, :cond_105

    .line 701
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    .line 704
    :goto_25
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_3d

    .line 707
    if-nez v6, :cond_3a

    .line 708
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 710
    :cond_3a
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_3d
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object v0, v6

    move p5, v4

    :goto_42
    move-object v6, v0

    goto :goto_3

    .line 717
    :cond_44
    if-eqz v6, :cond_9e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9e

    .line 723
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    .line 724
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe;

    .line 725
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    .line 726
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_102

    .line 727
    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a0

    .line 728
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    move v1, v2

    .line 734
    :goto_70
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    .line 735
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_82

    .line 736
    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b0

    .line 737
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 743
    :cond_82
    :goto_82
    new-array v4, v1, [Landroid/animation/Keyframe;

    .line 744
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 745
    const/4 v3, 0x0

    :goto_88
    if-ge v3, v1, :cond_f3

    .line 746
    aget-object v0, v4, v3

    .line 747
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_9b

    .line 748
    if-nez v3, :cond_bc

    .line 749
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 745
    :cond_9b
    :goto_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    :cond_9e
    move-object v0, v7

    .line 775
    :cond_9f
    :goto_9f
    return-object v0

    .line 730
    :cond_a0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 731
    add-int/lit8 v1, v2, 0x1

    goto :goto_70

    .line 739
    :cond_b0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .line 750
    :cond_bc
    add-int/lit8 v2, v1, -0x1

    if-ne v3, v2, :cond_c6

    .line 751
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_9b

    .line 757
    :cond_c6
    add-int/lit8 v0, v3, 0x1

    move v2, v3

    :goto_c9
    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_d8

    .line 758
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_ed

    .line 763
    :cond_d8
    add-int/lit8 v0, v2, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    .line 764
    add-int/lit8 v5, v3, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    .line 763
    sub-float/2addr v0, v5

    .line 765
    invoke-static {v4, v0, v3, v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_9b

    .line 757
    :cond_ed
    add-int/lit8 v2, v0, 0x1

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_c9

    .line 769
    :cond_f3
    invoke-static {p4, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 770
    const/4 v1, 0x3

    if-ne p5, v1, :cond_9f

    .line 771
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_9f

    :cond_102
    move v1, v2

    goto/16 :goto_70

    :cond_105
    move v4, p5

    goto/16 :goto_25

    :cond_108
    move-object v0, v6

    goto/16 :goto_42
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x0

    move-object v6, v0

    .line 579
    :goto_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5c

    .line 580
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    .line 582
    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 583
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 587
    :cond_13
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 589
    const-string/jumbo v1, "propertyValuesHolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 591
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    .line 590
    invoke-static {p1, p2, p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 593
    const-string/jumbo v0, "propertyName"

    .line 594
    const/4 v1, 0x3

    .line 593
    invoke-static {v7, p3, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 595
    const-string/jumbo v0, "valueType"

    .line 596
    const/4 v1, 0x2

    .line 597
    const/4 v2, 0x4

    .line 595
    invoke-static {v7, p3, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 599
    invoke-static/range {v0 .. v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 601
    if-nez v0, :cond_47

    .line 603
    const/4 v0, 0x0

    .line 604
    const/4 v1, 0x1

    .line 602
    invoke-static {v7, v5, v0, v1, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 607
    :cond_47
    if-eqz v0, :cond_53

    .line 608
    if-nez v6, :cond_50

    .line 609
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 611
    :cond_50
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_53
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v6

    .line 616
    :goto_57
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object v6, v0

    goto :goto_2

    .line 619
    :cond_5c
    const/4 v0, 0x0

    .line 620
    if-eqz v6, :cond_76

    .line 621
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 622
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    .line 623
    const/4 v0, 0x0

    move v2, v0

    :goto_67
    if-ge v2, v3, :cond_75

    .line 624
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    .line 623
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_67

    :cond_75
    move-object v0, v1

    .line 627
    :cond_76
    return-object v0

    :cond_77
    move-object v0, v6

    goto :goto_57
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .registers 16

    .prologue
    const/4 v10, 0x6

    const/4 v6, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 344
    const-string/jumbo v0, "duration"

    .line 345
    const/16 v1, 0x12c

    .line 344
    invoke-static {p1, p4, v0, v8, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v2, v0

    .line 346
    const-string/jumbo v0, "startOffset"

    .line 347
    const/4 v1, 0x2

    .line 346
    invoke-static {p1, p4, v0, v1, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v4, v0

    .line 348
    const-string/jumbo v0, "valueType"

    .line 349
    const/4 v1, 0x7

    .line 348
    invoke-static {p1, p4, v0, v1, v9}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 352
    const-string/jumbo v1, "valueFrom"

    invoke-static {p4, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 353
    const-string/jumbo v1, "valueTo"

    invoke-static {p4, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 352
    if-eqz v1, :cond_48

    .line 354
    if-ne v0, v9, :cond_38

    .line 355
    invoke-static {p1, v6, v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v0

    .line 361
    :cond_38
    const-string/jumbo v1, ""

    .line 359
    invoke-static {p1, v0, v6, v10, v1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_48

    .line 363
    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 366
    :cond_48
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 369
    const-string/jumbo v1, "repeatCount"

    .line 370
    const/4 v2, 0x3

    .line 369
    invoke-static {p1, p4, v1, v2, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 371
    const-string/jumbo v1, "repeatMode"

    invoke-static {p1, p4, v1, v9, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 374
    if-eqz p2, :cond_68

    .line 375
    invoke-static {p0, p2, v0, p3, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 377
    :cond_68
    return-void
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .registers 10

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 389
    check-cast p0, Landroid/animation/ObjectAnimator;

    .line 390
    const-string/jumbo v0, "pathData"

    .line 391
    const/4 v1, 0x1

    .line 390
    invoke-static {p1, p4, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_4d

    .line 403
    const-string/jumbo v1, "propertyXName"

    .line 402
    invoke-static {p1, p4, v1, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 405
    const-string/jumbo v2, "propertyYName"

    const/4 v3, 0x3

    .line 404
    invoke-static {p1, p4, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 408
    if-eq p2, v4, :cond_20

    const/4 v3, 0x4

    .line 413
    :cond_20
    if-nez v1, :cond_42

    if-nez v2, :cond_42

    .line 414
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 415
    const-string/jumbo v2, " propertyXName or propertyYName is needed for PathData"

    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_42
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    .line 418
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, p3

    invoke-static {v0, p0, v3, v1, v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_4c
    return-void

    .line 422
    :cond_4d
    const-string/jumbo v0, "propertyName"

    invoke-static {p1, p4, v0, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_4c
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    .prologue
    .line 435
    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 436
    const/4 v1, 0x0

    .line 439
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 440
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_14
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    .line 443
    add-float/2addr v1, v3

    .line 444
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v3

    if-nez v3, :cond_14

    .line 449
    new-instance v6, Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-direct {v6, p0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 451
    div-float v2, v1, p2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 453
    new-array v8, v7, [F

    .line 454
    new-array v9, v7, [F

    .line 455
    const/4 v2, 0x2

    new-array v10, v2, [F

    .line 457
    const/4 v3, 0x0

    .line 458
    add-int/lit8 v2, v7, -0x1

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 459
    const/4 v2, 0x0

    .line 464
    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    :goto_48
    if-ge v4, v7, :cond_91

    .line 465
    const/4 v2, 0x0

    invoke-virtual {v6, v1, v10, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 466
    const/4 v2, 0x0

    invoke-virtual {v6, v1, v10, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 468
    const/4 v2, 0x0

    aget v2, v10, v2

    aput v2, v8, v4

    .line 469
    const/4 v2, 0x1

    aget v2, v10, v2

    aput v2, v9, v4

    .line 470
    add-float v2, v1, v11

    .line 471
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_8e

    .line 472
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_8e

    .line 473
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    .line 474
    add-int/lit8 v2, v3, 0x1

    .line 475
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 464
    :goto_89
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_48

    :cond_8e
    move v1, v2

    move v2, v3

    .line 472
    goto :goto_89

    .line 480
    :cond_91
    const/4 v2, 0x0

    .line 481
    const/4 v1, 0x0

    .line 482
    if-eqz p3, :cond_9b

    .line 483
    move-object/from16 v0, p3

    invoke-static {v0, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 485
    :cond_9b
    if-eqz p4, :cond_a3

    .line 486
    move-object/from16 v0, p4

    invoke-static {v0, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 488
    :cond_a3
    if-nez v2, :cond_af

    .line 489
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 495
    :goto_ae
    return-void

    .line 490
    :cond_af
    if-nez v1, :cond_bb

    .line 491
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_ae

    .line 493
    :cond_bb
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_ae
.end method
