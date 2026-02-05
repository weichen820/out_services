.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$1;,
        Landroid/support/v4/widget/SwipeRefreshLayout$2;,
        Landroid/support/v4/widget/SwipeRefreshLayout$3;,
        Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;,
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field static final CIRCLE_DIAMETER:I = 0x28
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CIRCLE_DIAMETER_LARGE:I = 0x38
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

.field private mCircleDiameter:I

.field mCircleView:Landroid/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNestedScrollInProgress:Z

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field mNotify:Z

.field protected mOriginalOffsetTop:I

.field private final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field mRefreshing:Z

.field private mReturningToStart:Z

.field mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field mSpinnerOffsetEnd:I

.field mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 78
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 135
    const v1, 0x101000e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 134
    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 108
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 116
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 117
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    .line 126
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 139
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 170
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1099
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    .line 1123
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    .line 332
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 335
    const v1, 0x10e0001

    .line 334
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    .line 337
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 338
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 341
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 343
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    .line 344
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 346
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 347
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 348
    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 350
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 351
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 353
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    neg-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 354
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    .line 356
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 357
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 358
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 359
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1071
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1072
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1073
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1074
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1075
    if-eqz p2, :cond_1c

    .line 1076
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1078
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1079
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1080
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1083
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_8

    .line 1085
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 1097
    :goto_7
    return-void

    .line 1087
    :cond_8
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1088
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1089
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1090
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1091
    if-eqz p2, :cond_24

    .line 1092
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1094
    :cond_24
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1095
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7
.end method

.method private createProgressView()V
    .registers 4

    .prologue
    .line 378
    new-instance v0, Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    .line 379
    new-instance v0, Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    .line 380
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setStyle(I)V

    .line 381
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private ensureTarget()V
    .registers 4

    .prologue
    .line 572
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_19

    .line 573
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 574
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 575
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 576
    iput-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 581
    :cond_19
    return-void

    .line 573
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private finishSpinner(F)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 950
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 951
    invoke-direct {p0, v3, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    .line 980
    :goto_c
    return-void

    .line 954
    :cond_d
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 955
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 956
    const/4 v0, 0x0

    .line 957
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_1e

    .line 958
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 977
    :cond_1e
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 978
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    goto :goto_c
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .registers 3

    .prologue
    .line 897
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private moveSpinner(F)V
    .registers 16

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 901
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setArrowEnabled(Z)V

    .line 902
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v0, p1, v0

    .line 904
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 905
    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    .line 906
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float v3, v0, v3

    .line 907
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v0, :cond_da

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v0, v4

    :goto_42
    int-to-float v0, v0

    .line 909
    mul-float v4, v0, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 911
    div-float v4, v3, v6

    float-to-double v4, v4

    .line 912
    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 911
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v3, v11

    .line 913
    mul-float v4, v0, v3

    mul-float/2addr v4, v11

    .line 915
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v5

    .line 917
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_73

    .line 918
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 920
    :cond_73
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-nez v1, :cond_81

    .line 921
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setScaleX(F)V

    .line 922
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setScaleY(F)V

    .line 925
    :cond_81
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v1, :cond_90

    .line 926
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float v1, p1, v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 928
    :cond_90
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_de

    .line 929
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0x4c

    if-le v1, v4, :cond_ad

    .line 930
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 929
    if-eqz v1, :cond_ad

    .line 932
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    .line 940
    :cond_ad
    :goto_ad
    mul-float v1, v2, v13

    .line 941
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v4, v12, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setStartEndTrim(FF)V

    .line 942
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/CircularProgressDrawable;->setArrowScale(F)V

    .line 944
    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const/high16 v2, -0x41800000    # -0.25f

    add-float/2addr v1, v2

    mul-float v2, v3, v11

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 945
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setProgressRotation(F)V

    .line 946
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 947
    return-void

    .line 908
    :cond_da
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto/16 :goto_42

    .line 935
    :cond_de
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v1

    const/16 v4, 0xff

    if-ge v1, v4, :cond_ad

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_ad

    .line 937
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    goto :goto_ad
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1158
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1159
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v2, v3, :cond_16

    .line 1162
    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 1163
    :cond_10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1165
    :cond_16
    return-void
.end method

.method private setColorViewAlpha(I)V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 228
    return-void
.end method

.method private setRefreshing(ZZ)V
    .registers 5

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_16

    .line 451
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 452
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 453
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 454
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_17

    .line 455
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 460
    :cond_16
    :goto_16
    return-void

    .line 457
    :cond_17
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_16
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .registers 7

    .prologue
    .line 484
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    .line 491
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 493
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 494
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 495
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 496
    return-object v0
.end method

.method private startDragging(F)V
    .registers 4

    .prologue
    .line 1062
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    sub-float v0, p1, v0

    .line 1063
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_23

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    .line 1064
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1066
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 1068
    :cond_23
    return-void
.end method

.method private startProgressAlphaMaxAnimation()V
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    .line 481
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .registers 3

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    .line 477
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 7

    .prologue
    .line 1132
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    .line 1133
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    .line 1134
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    .line 1142
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1143
    if-eqz p2, :cond_1f

    .line 1144
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1146
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1147
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 424
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 426
    :cond_13
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 432
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 433
    if-eqz p1, :cond_29

    .line 434
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 436
    :cond_29
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 437
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 657
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    if-eqz v0, :cond_e

    .line 658
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;->canChildScrollUp(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/View;)Z

    move-result v0

    return v0

    .line 660
    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_1d

    .line 661
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0, v1}, Landroid/support/v4/widget/ListViewCompat;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    return v0

    .line 663
    :cond_1d
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    .prologue
    .line 888
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    .prologue
    .line 870
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .prologue
    .line 864
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    .prologue
    .line 363
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-gez v0, :cond_5

    .line 364
    return p2

    .line 365
    :cond_5
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_c

    .line 367
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    return v0

    .line 368
    :cond_c
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    if-lt p2, v0, :cond_13

    .line 370
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 373
    :cond_13
    return p2
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getProgressCircleDiameter()I
    .registers 2

    .prologue
    .line 649
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 858
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshing()Z
    .registers 2

    .prologue
    .line 566
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    return v0
.end method

.method moveToStart(F)V
    .registers 5

    .prologue
    .line 1118
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1119
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1120
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1121
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 222
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 223
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 677
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 682
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v1, :cond_11

    if-nez v0, :cond_11

    .line 683
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 686
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_29

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_29

    .line 687
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 686
    if-nez v1, :cond_29

    .line 687
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 686
    if-eqz v1, :cond_2a

    .line 689
    :cond_29
    return v2

    .line 692
    :cond_2a
    packed-switch v0, :pswitch_data_7c

    .line 730
    :goto_2d
    :pswitch_2d
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    return v0

    .line 694
    :pswitch_30
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 695
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 696
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 698
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 699
    if-gez v0, :cond_4d

    .line 700
    return v2

    .line 702
    :cond_4d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    goto :goto_2d

    .line 706
    :pswitch_54
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    if-ne v0, v3, :cond_61

    .line 707
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return v2

    .line 711
    :cond_61
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 712
    if-gez v0, :cond_6a

    .line 713
    return v2

    .line 715
    :cond_6a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 716
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    goto :goto_2d

    .line 720
    :pswitch_72
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_2d

    .line 725
    :pswitch_76
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 726
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_2d

    .line 692
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_30
        :pswitch_76
        :pswitch_54
        :pswitch_76
        :pswitch_2d
        :pswitch_2d
        :pswitch_72
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 595
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 597
    return-void

    .line 599
    :cond_f
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v2, :cond_16

    .line 600
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 602
    :cond_16
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v2, :cond_1b

    .line 603
    return-void

    .line 605
    :cond_1b
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 606
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 607
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 608
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 609
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 610
    add-int/2addr v5, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 611
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 612
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 613
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 614
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr v1, v2

    .line 613
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 615
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 619
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 620
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_c

    .line 621
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 623
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-nez v0, :cond_11

    .line 624
    return-void

    .line 626
    :cond_11
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    .line 627
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 626
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 629
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 628
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 626
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 630
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 631
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 632
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 634
    const/4 v0, 0x0

    :goto_4f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 635
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    if-ne v1, v2, :cond_60

    .line 636
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    .line 640
    :cond_5f
    return-void

    .line 634
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    .prologue
    .line 883
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    .prologue
    .line 877
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 768
    if-lez p3, :cond_20

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_20

    .line 769
    int-to-float v0, p3

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5d

    .line 770
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    float-to-int v0, v0

    sub-int v0, p3, v0

    aput v0, p4, v5

    .line 771
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 776
    :goto_1b
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 783
    :cond_20
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v0, :cond_3d

    if-lez p3, :cond_3d

    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3d

    .line 784
    aget v0, p4, v5

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_3d

    .line 785
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 789
    :cond_3d
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    .line 790
    aget v1, p4, v4

    sub-int v1, p2, v1

    aget v2, p4, v5

    sub-int v2, p3, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 791
    aget v1, p4, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p4, v4

    .line 792
    aget v1, p4, v5

    aget v0, v0, v5

    add-int/2addr v0, v1

    aput v0, p4, v5

    .line 794
    :cond_5c
    return-void

    .line 773
    :cond_5d
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 774
    aput p3, p4, v5

    goto :goto_1b
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .prologue
    .line 820
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 819
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 827
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p5

    .line 828
    if-gez v0, :cond_29

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_29

    .line 829
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 830
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    .line 832
    :cond_29
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 759
    and-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 762
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 750
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    .line 751
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 750
    :cond_18
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 807
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    .line 808
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 809
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    .line 812
    :cond_16
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 813
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 987
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    .line 988
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    .line 991
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    if-nez v1, :cond_28

    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v1

    if-nez v1, :cond_28

    .line 992
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 991
    if-nez v1, :cond_28

    .line 992
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollInProgress:Z

    .line 991
    if-eqz v1, :cond_29

    .line 994
    :cond_28
    return v2

    .line 997
    :cond_29
    packed-switch v0, :pswitch_data_a2

    .line 1058
    :cond_2c
    :goto_2c
    :pswitch_2c
    const/4 v0, 0x1

    return v0

    .line 999
    :pswitch_2e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1000
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    goto :goto_2c

    .line 1004
    :pswitch_37
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1005
    if-gez v0, :cond_48

    .line 1006
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return v2

    .line 1010
    :cond_48
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1011
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startDragging(F)V

    .line 1013
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_2c

    .line 1014
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 1015
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_60

    .line 1016
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    goto :goto_2c

    .line 1018
    :cond_60
    return v2

    .line 1024
    :pswitch_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1025
    if-gez v0, :cond_70

    .line 1026
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    .line 1027
    const-string/jumbo v1, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    .line 1026
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return v2

    .line 1030
    :cond_70
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    goto :goto_2c

    .line 1035
    :pswitch_77
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_2c

    .line 1039
    :pswitch_7b
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1040
    if-gez v0, :cond_8c

    .line 1041
    sget-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return v2

    .line 1045
    :cond_8c
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_9d

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1047
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    .line 1048
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 1049
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    .line 1051
    :cond_9d
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    .line 1052
    return v2

    .line 1055
    :pswitch_a0
    return v2

    .line 997
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_7b
        :pswitch_37
        :pswitch_a0
        :pswitch_2c
        :pswitch_61
        :pswitch_77
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4

    .prologue
    .line 738
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_1a

    .line 739
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 738
    if-eqz v0, :cond_1b

    .line 744
    :cond_1a
    :goto_1a
    return-void

    .line 742
    :cond_1b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1a
.end method

.method reset()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircularProgressDrawable;->stop()V

    .line 200
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    .line 203
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_27

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 208
    :goto_1e
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 209
    return-void

    .line 206
    :cond_27
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    goto :goto_1e
.end method

.method setAnimationProgress(F)V
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 446
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 447
    return-void
.end method

.method public varargs setColorScheme([I)V
    .registers 2
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 531
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    .line 558
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 559
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .registers 6
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 542
    array-length v0, p1

    new-array v2, v0, [I

    .line 543
    const/4 v0, 0x0

    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_16

    .line 544
    aget v3, p1, v0

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v0

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 546
    :cond_16
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 547
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .registers 3

    .prologue
    .line 589
    int-to-float v0, p1

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    .line 590
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 214
    if-nez p1, :cond_8

    .line 215
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 217
    :cond_8
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .prologue
    .line 838
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 839
    return-void
.end method

.method public setOnChildScrollUpCallback(Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;)V
    .registers 2
    .param p1    # Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 672
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mChildScrollUpCallback:Landroid/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback;

    .line 673
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .registers 2

    .prologue
    .line 391
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 392
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    .line 505
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    .line 523
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 514
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .registers 4

    .prologue
    .line 288
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 289
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 290
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 291
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .registers 5

    .prologue
    .line 250
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    .line 251
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 252
    iput p3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    .line 254
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 256
    return-void
.end method

.method public setRefreshing(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 401
    if-eqz p1, :cond_23

    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_23

    .line 403
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 405
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez v0, :cond_20

    .line 406
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    add-int/2addr v0, v1

    .line 410
    :goto_12
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 411
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    .line 412
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 416
    :goto_1f
    return-void

    .line 408
    :cond_20
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I

    goto :goto_12

    .line 414
    :cond_23
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    goto :goto_1f
.end method

.method public setSize(I)V
    .registers 4

    .prologue
    .line 297
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 298
    return-void

    .line 300
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 301
    if-nez p1, :cond_2b

    .line 302
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    .line 309
    :goto_18
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setStyle(I)V

    .line 311
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/CircularProgressDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void

    .line 304
    :cond_2b
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleDiameter:I

    goto :goto_18
.end method

.method setTargetOffsetTopAndBottom(I)V
    .registers 3

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1152
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1153
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 1154
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .prologue
    .line 848
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 6

    .prologue
    .line 463
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 469
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 470
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 471
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 472
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 473
    return-void
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 853
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 854
    return-void
.end method
