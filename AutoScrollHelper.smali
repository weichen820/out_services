.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 9

    .prologue
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 139
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    new-array v0, v1, [F

    fill-array-data v0, :array_80

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 151
    new-array v0, v1, [F

    fill-array-data v0, :array_88

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 160
    new-array v0, v1, [F

    fill-array-data v0, :array_90

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 163
    new-array v0, v1, [F

    fill-array-data v0, :array_98

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 166
    new-array v0, v1, [F

    fill-array-data v0, :array_a0

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 209
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 212
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x44c4e000    # 1575.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 213
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x439d8000    # 315.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 214
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 215
    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 218
    invoke-virtual {p0, v6, v6}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 219
    invoke-virtual {p0, v3, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 220
    invoke-virtual {p0, v5, v5}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 221
    sget v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 222
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 223
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 224
    return-void

    .line 148
    :array_80
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 151
    :array_88
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 160
    :array_90
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 163
    :array_98
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 166
    :array_a0
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 538
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    .line 539
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    .line 540
    invoke-direct {p0, v0, p3, v1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v0

    .line 541
    cmpl-float v1, v0, v4

    if-nez v1, :cond_12

    .line 543
    return v4

    .line 546
    :cond_12
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v1, v1, p1

    .line 547
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v2, v2, p1

    .line 548
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v3, v3, p1

    .line 549
    mul-float/2addr v1, p4

    .line 554
    cmpl-float v4, v0, v4

    if-lez v4, :cond_29

    .line 555
    mul-float/2addr v0, v1

    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0

    .line 557
    :cond_29
    neg-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0, v2, v3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method static constrain(FFF)F
    .registers 4

    .prologue
    .line 662
    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    .line 663
    return p2

    .line 664
    :cond_5
    cmpg-float v0, p0, p1

    if-gez v0, :cond_a

    .line 665
    return p1

    .line 667
    :cond_a
    return p0
.end method

.method static constrain(III)I
    .registers 3

    .prologue
    .line 652
    if-le p0, p2, :cond_3

    .line 653
    return p2

    .line 654
    :cond_3
    if-ge p0, p1, :cond_6

    .line 655
    return p1

    .line 657
    :cond_6
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 623
    cmpl-float v0, p2, v2

    if-nez v0, :cond_8

    .line 624
    return v2

    .line 627
    :cond_8
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v0, :pswitch_data_2e

    .line 648
    :cond_d
    return v2

    .line 630
    :pswitch_e
    cmpg-float v0, p1, p2

    if-gez v0, :cond_d

    .line 631
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1b

    .line 633
    div-float v0, p1, p2

    sub-float v0, v3, v0

    return v0

    .line 634
    :cond_1b
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 636
    return v3

    .line 641
    :pswitch_25
    cmpg-float v0, p1, v2

    if-gez v0, :cond_d

    .line 643
    neg-float v0, p2

    div-float v0, p1, v0

    return v0

    .line 627
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 606
    mul-float v0, p1, p2

    invoke-static {v0, v3, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 607
    invoke-direct {p0, p4, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v1

    .line 608
    sub-float v2, p2, p4

    invoke-direct {p0, v2, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v0

    .line 609
    sub-float/2addr v0, v1

    .line 611
    cmpg-float v1, v0, v3

    if-gez v1, :cond_27

    .line 612
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v0, v0

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    .line 619
    :goto_1e
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    return v0

    .line 613
    :cond_27
    cmpl-float v1, v0, v3

    if-lez v1, :cond_32

    .line 614
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_1e

    .line 616
    :cond_32
    return v3
.end method

.method private requestStop()V
    .registers 2

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_8

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 534
    :goto_7
    return-void

    .line 532
    :cond_8
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_7
.end method

.method private startAnimating()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 503
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 504
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 507
    :cond_c
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 508
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 510
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v0, :cond_25

    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v0, :cond_25

    .line 511
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 518
    :goto_22
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 519
    return-void

    .line 513
    :cond_25
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_22
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 678
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 677
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 679
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 680
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 681
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 246
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .registers 2

    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 455
    iget-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v1, :cond_7

    .line 456
    return v0

    .line 459
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 460
    packed-switch v1, :pswitch_data_58

    .line 484
    :cond_e
    :goto_e
    iget-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v1, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    :cond_14
    return v0

    .line 462
    :pswitch_15
    iput-boolean v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 463
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 467
    :pswitch_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 466
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v1

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 468
    invoke-direct {p0, v5, v2, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v2

    .line 470
    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v3, v1, v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 474
    iget-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v1, :cond_e

    invoke-virtual {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 475
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_e

    .line 480
    :pswitch_54
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_e

    .line 460
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_15
        :pswitch_54
        :pswitch_19
        :pswitch_54
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    .prologue
    .line 411
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    .line 412
    return-object p0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    .prologue
    .line 353
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    .line 354
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_b

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    .line 235
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    .line 238
    :cond_b
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    .line 239
    return-object p0
.end method

.method public setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    .prologue
    .line 262
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    .line 263
    return-object p0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 5

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 395
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 396
    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 7

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 293
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    div-float v1, p1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 294
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    div-float v1, p2, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 295
    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 7

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 311
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    div-float v1, p1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 312
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    div-float v1, p2, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 313
    return-object p0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 442
    return-object p0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 427
    return-object p0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 5

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 373
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 374
    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 7

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 332
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    div-float v1, p1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    div-float v1, p2, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 334
    return-object p0
.end method

.method shouldAnimate()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 492
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v2

    .line 493
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v1

    .line 495
    if-eqz v2, :cond_13

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 496
    :cond_13
    if-eqz v1, :cond_19

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v0

    .line 495
    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method
