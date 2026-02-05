.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    .line 199
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 90
    :goto_d
    return-void

    .line 200
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 201
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_d

    .line 203
    :cond_1c
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 257
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    const v0, -0x33333334

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 189
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 260
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 264
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 265
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 267
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 268
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 269
    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 861
    :cond_c
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 862
    const/4 v0, 0x1

    return v0

    .line 864
    :cond_10
    return v1
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 971
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_44

    if-eqz p3, :cond_44

    .line 972
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    .line 973
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 974
    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p3

    or-int/2addr v1, v2

    .line 975
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_29

    .line 976
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 978
    :cond_29
    iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 979
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v1, v5, :cond_40

    .line 980
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 982
    :cond_40
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 991
    :cond_43
    :goto_43
    return-void

    .line 983
    :cond_44
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_43

    .line 984
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_53

    .line 985
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 987
    :cond_53
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 988
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_43
.end method

.method private openPane(Landroid/view/View;I)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 868
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 869
    :cond_d
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 870
    return v1

    .line 872
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private parallaxOtherViews(F)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1168
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v3

    .line 1169
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1170
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_32

    .line 1171
    if-eqz v3, :cond_2d

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_17
    if-gtz v0, :cond_30

    const/4 v0, 0x1

    .line 1172
    :goto_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v2, v1

    .line 1173
    :goto_1f
    if-ge v2, v4, :cond_5f

    .line 1174
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1175
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v5, v1, :cond_34

    .line 1173
    :cond_29
    :goto_29
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    .line 1171
    :cond_2d
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_17

    :cond_30
    move v0, v1

    goto :goto_1a

    :cond_32
    move v0, v1

    .line 1170
    goto :goto_1a

    .line 1177
    :cond_34
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v1, v8, v1

    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v6, v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 1178
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1179
    sub-float v6, v8, p1

    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 1180
    sub-int/2addr v1, v6

    .line 1182
    if-eqz v3, :cond_4a

    neg-int v1, v1

    :cond_4a
    invoke-virtual {v5, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1184
    if-eqz v0, :cond_29

    .line 1185
    if-eqz v3, :cond_5a

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v1, v8

    .line 1186
    :goto_54
    iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 1185
    invoke-direct {p0, v5, v1, v6}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_29

    .line 1186
    :cond_5a
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v1, v8, v1

    goto :goto_54

    .line 1189
    :cond_5f
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 408
    return v0

    .line 414
    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_10

    .line 415
    return v1

    .line 418
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 419
    if-eqz v2, :cond_20

    .line 420
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d

    .line 422
    :cond_20
    return v1
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 16

    .prologue
    .line 1203
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5b

    move-object v6, p1

    .line 1204
    nop

    nop

    .line 1205
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 1206
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 1207
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1209
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_16
    if-ltz v7, :cond_5b

    .line 1212
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1213
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_57

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_57

    .line 1214
    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_57

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_57

    .line 1215
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v4, v0, v2

    .line 1216
    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v5, v0, v2

    .line 1215
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 1213
    if-eqz v0, :cond_57

    .line 1217
    const/4 v0, 0x1

    return v0

    .line 1209
    :cond_57
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_16

    .line 1222
    :cond_5b
    if-eqz p2, :cond_6a

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_68

    :goto_63
    invoke-virtual {p1, p3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    :goto_67
    return v0

    :cond_68
    neg-int p3, p3

    goto :goto_63

    :cond_6a
    const/4 v0, 0x0

    goto :goto_67
.end method

.method public canSlide()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 927
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 1247
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public closePane()Z
    .registers 3

    .prologue
    .line 908
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1057
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_13

    .line 1058
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 1059
    return-void

    .line 1062
    :cond_13
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1064
    :cond_16
    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_9

    .line 346
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 348
    :cond_9
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 349
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_9

    .line 339
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 341
    :cond_9
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 342
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_b

    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 335
    :cond_b
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1134
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1135
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 1137
    if-eqz v0, :cond_1c

    .line 1138
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1143
    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_17

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1144
    :cond_17
    if-eqz v1, :cond_1b

    if-nez v0, :cond_1f

    .line 1146
    :cond_1b
    return-void

    .line 1140
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    .line 1149
    :cond_1f
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1150
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1152
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1155
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1156
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1157
    add-int v1, v2, v5

    .line 1163
    :goto_37
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1164
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1165
    return-void

    .line 1159
    :cond_3e
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1160
    sub-int v2, v1, v5

    goto :goto_37
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 10

    .prologue
    .line 995
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 999
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_3a

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 1001
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1002
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1003
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1007
    :goto_35
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1010
    :cond_3a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1012
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1014
    return v0

    .line 1005
    :cond_42
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_35
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1235
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 1252
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1240
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1241
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    nop

    nop

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1240
    :goto_b
    return-object v0

    .line 1242
    :cond_c
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getCoveredFadeColor()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 324
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 306
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1018
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1019
    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1226
    if-nez p1, :cond_4

    .line 1227
    return v1

    .line 1229
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1230
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_1b

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method isLayoutRtlSupport()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1641
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isOpen()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 918
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSlideable()Z
    .registers 2

    .prologue
    .line 937
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 427
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 429
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 433
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 436
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_1f

    .line 437
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 438
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 436
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 440
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 441
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 764
    iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v3, :cond_2c

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v3, v1, :cond_2c

    .line 766
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 767
    if-eqz v3, :cond_2c

    .line 768
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 768
    invoke-virtual {v4, v3, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 773
    :cond_2c
    iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_36

    iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v3, :cond_40

    if-eqz v2, :cond_40

    .line 774
    :cond_36
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 775
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 778
    :cond_40
    const/4 v3, 0x3

    if-eq v2, v3, :cond_45

    if-ne v2, v1, :cond_4b

    .line 779
    :cond_45
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 780
    return v0

    .line 785
    :cond_4b
    packed-switch v2, :pswitch_data_aa

    .line 814
    :cond_4e
    :goto_4e
    :pswitch_4e
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 816
    if-nez v2, :cond_57

    move v1, v0

    :cond_57
    return v1

    .line 787
    :pswitch_58
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 790
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 791
    iput v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 793
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v4, v5, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 794
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v2

    .line 793
    if-eqz v2, :cond_4e

    move v0, v1

    .line 795
    goto :goto_4e

    .line 801
    :pswitch_7c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 803
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 804
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 805
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    .line 806
    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4e

    cmpl-float v2, v3, v2

    if-lez v2, :cond_4e

    .line 807
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 808
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 809
    return v0

    .line 785
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_58
        :pswitch_4e
        :pswitch_7c
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    .prologue
    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v9

    .line 658
    if-eqz v9, :cond_58

    .line 659
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 663
    :goto_e
    sub-int v10, p4, p2

    .line 664
    if-eqz v9, :cond_61

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 665
    :goto_16
    if-eqz v9, :cond_66

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    move v2, v1

    .line 666
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 672
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_3d

    .line 673
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_6c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    if-eqz v1, :cond_6c

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_39
    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 676
    :cond_3d
    const/4 v1, 0x0

    move v8, v1

    move v6, v5

    :goto_40
    if-ge v8, v12, :cond_ff

    .line 677
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 679
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6e

    move v1, v5

    move v3, v6

    .line 676
    :goto_52
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v5, v1

    move v6, v3

    goto :goto_40

    .line 661
    :cond_58
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_e

    .line 664
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    goto :goto_16

    .line 665
    :cond_66
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    move v2, v1

    goto :goto_1d

    .line 673
    :cond_6c
    const/4 v1, 0x0

    goto :goto_39

    .line 683
    :cond_6e
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 685
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 686
    const/4 v7, 0x0

    .line 688
    iget-boolean v3, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v3, :cond_da

    .line 689
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 691
    sub-int v4, v10, v2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int/2addr v4, v15

    .line 690
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v6

    sub-int v15, v4, v3

    .line 692
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 693
    if-eqz v9, :cond_d5

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 694
    :goto_98
    add-int v4, v6, v3

    add-int/2addr v4, v15

    div-int/lit8 v16, v14, 0x2

    add-int v4, v4, v16

    sub-int v16, v10, v2

    move/from16 v0, v16

    if-le v4, v0, :cond_d8

    const/4 v4, 0x1

    :goto_a6
    iput-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 695
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 696
    add-int/2addr v3, v1

    add-int v4, v6, v3

    .line 697
    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move v1, v7

    .line 707
    :goto_be
    if-eqz v9, :cond_fa

    .line 708
    sub-int v3, v10, v4

    add-int/2addr v3, v1

    .line 709
    sub-int v1, v3, v14

    .line 716
    :goto_c5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v11

    .line 717
    invoke-virtual {v13, v1, v11, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 719
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v5

    move v3, v4

    goto/16 :goto_52

    .line 693
    :cond_d5
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_98

    .line 694
    :cond_d8
    const/4 v4, 0x0

    goto :goto_a6

    .line 698
    :cond_da
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_f7

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v1, :cond_f7

    .line 699
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    move v4, v5

    .line 698
    goto :goto_be

    :cond_f7
    move v1, v7

    move v4, v5

    .line 702
    goto :goto_be

    .line 711
    :cond_fa
    sub-int v1, v4, v1

    .line 712
    add-int v3, v1, v14

    goto :goto_c5

    .line 722
    :cond_ff
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_142

    .line 723
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_148

    .line 724
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v1, :cond_11a

    .line 725
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 727
    :cond_11a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v1, :cond_139

    .line 728
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 736
    :cond_139
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 739
    :cond_142
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 740
    return-void

    .line 732
    :cond_148
    const/4 v1, 0x0

    :goto_149
    if-ge v1, v12, :cond_139

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_149
.end method

.method protected onMeasure(II)V
    .registers 20

    .prologue
    .line 445
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 446
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 447
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 448
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 450
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_89

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 456
    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_78

    move v10, v2

    move v12, v3

    move v3, v1

    .line 479
    :goto_21
    const/4 v2, 0x0

    .line 480
    const/4 v1, 0x0

    .line 481
    sparse-switch v10, :sswitch_data_282

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    .line 490
    :goto_2b
    const/4 v4, 0x0

    .line 491
    const/4 v7, 0x0

    .line 492
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v3, v12, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v11, v3, v5

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 496
    const/4 v3, 0x2

    if-le v13, v3, :cond_49

    .line 497
    const-string/jumbo v3, "SlidingPaneLayout"

    const-string/jumbo v5, "onMeasure: More than two child views are not supported."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_49
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 505
    const/4 v3, 0x0

    move v9, v3

    move v6, v11

    move v8, v1

    move v3, v4

    :goto_53
    if-ge v9, v13, :cond_150

    .line 506
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 507
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 509
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_c4

    .line 510
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move v1, v6

    move v4, v3

    move v5, v8

    move v3, v7

    .line 505
    :goto_70
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v7, v3

    move v8, v5

    move v3, v4

    move v6, v1

    goto :goto_53

    .line 458
    :cond_78
    if-nez v4, :cond_27c

    .line 460
    const/16 v3, 0x12c

    move v10, v2

    move v12, v3

    move v3, v1

    goto :goto_21

    .line 463
    :cond_80
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_89
    if-nez v2, :cond_27c

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 470
    if-nez v2, :cond_27c

    .line 471
    const/high16 v2, -0x80000000

    .line 472
    const/16 v1, 0x12c

    move v10, v2

    move v12, v3

    move v3, v1

    goto :goto_21

    .line 475
    :cond_9b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Height must not be UNSPECIFIED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    :sswitch_a4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    .line 484
    goto/16 :goto_2b

    .line 486
    :sswitch_b2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    .line 487
    goto/16 :goto_2b

    .line 514
    :cond_c4
    iget v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d7

    .line 515
    iget v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    add-float/2addr v3, v4

    .line 519
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v4, :cond_d7

    move v1, v6

    move v4, v3

    move v5, v8

    move v3, v7

    goto :goto_70

    .line 523
    :cond_d7
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 524
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, -0x2

    if-ne v5, v15, :cond_122

    .line 525
    sub-int v4, v11, v4

    .line 526
    const/high16 v5, -0x80000000

    .line 525
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 535
    :goto_e9
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v15, -0x2

    if-ne v5, v15, :cond_139

    .line 536
    const/high16 v5, -0x80000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 543
    :goto_f4
    invoke-virtual {v14, v4, v5}, Landroid/view/View;->measure(II)V

    .line 544
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 545
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 547
    const/high16 v15, -0x80000000

    if-ne v10, v15, :cond_109

    if-le v5, v8, :cond_109

    .line 548
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 551
    :cond_109
    sub-int v5, v6, v4

    .line 552
    if-gez v5, :cond_14e

    const/4 v4, 0x1

    :goto_10e
    iput-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int/2addr v4, v7

    .line 553
    iget-boolean v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v1, :cond_273

    .line 554
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v1, v5

    move v5, v8

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_70

    .line 527
    :cond_122
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v5, v15, :cond_130

    .line 528
    sub-int v4, v11, v4

    .line 529
    const/high16 v5, 0x40000000    # 2.0f

    .line 528
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_e9

    .line 531
    :cond_130
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_e9

    .line 537
    :cond_139
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v5, v15, :cond_145

    .line 538
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_f4

    .line 540
    :cond_145
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_f4

    .line 552
    :cond_14e
    const/4 v4, 0x0

    goto :goto_10e

    .line 559
    :cond_150
    if-nez v7, :cond_157

    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_24a

    .line 560
    :cond_157
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v14, v11, v1

    .line 562
    const/4 v1, 0x0

    move v10, v1

    :goto_15f
    if-ge v10, v13, :cond_24a

    .line 563
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 565
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_173

    .line 562
    :cond_16f
    :goto_16f
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_15f

    .line 569
    :cond_173
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 571
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_16f

    .line 575
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v4, :cond_1be

    iget v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1be

    const/4 v4, 0x1

    move v9, v4

    .line 576
    :goto_18e
    if-eqz v9, :cond_1c1

    const/4 v4, 0x0

    move v5, v4

    .line 577
    :goto_192
    if-eqz v7, :cond_1e7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq v15, v4, :cond_1e7

    .line 578
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_16f

    if-gt v5, v14, :cond_1a7

    iget v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16f

    .line 582
    :cond_1a7
    if-eqz v9, :cond_1dc

    .line 585
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1c7

    .line 587
    const/high16 v1, -0x80000000

    .line 586
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 600
    :goto_1b4
    const/high16 v4, 0x40000000    # 2.0f

    .line 599
    invoke-static {v14, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 601
    invoke-virtual {v15, v4, v1}, Landroid/view/View;->measure(II)V

    goto :goto_16f

    .line 575
    :cond_1be
    const/4 v4, 0x0

    move v9, v4

    goto :goto_18e

    .line 576
    :cond_1c1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move v5, v4

    goto :goto_192

    .line 588
    :cond_1c7
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1d3

    .line 590
    const/high16 v1, 0x40000000    # 2.0f

    .line 589
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1b4

    .line 592
    :cond_1d3
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 593
    const/high16 v4, 0x40000000    # 2.0f

    .line 592
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1b4

    .line 597
    :cond_1dc
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    .line 596
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1b4

    .line 603
    :cond_1e7
    iget v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-lez v4, :cond_16f

    .line 605
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v4, :cond_228

    .line 607
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, -0x2

    if-ne v4, v9, :cond_213

    .line 609
    const/high16 v4, -0x80000000

    .line 608
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 622
    :goto_1fd
    if-eqz v7, :cond_233

    .line 624
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v9

    .line 625
    sub-int v1, v11, v1

    .line 627
    const/high16 v9, 0x40000000    # 2.0f

    .line 626
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 628
    if-eq v5, v1, :cond_16f

    .line 629
    invoke-virtual {v15, v9, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_16f

    .line 610
    :cond_213
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_21f

    .line 612
    const/high16 v4, 0x40000000    # 2.0f

    .line 611
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1fd

    .line 614
    :cond_21f
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 615
    const/high16 v9, 0x40000000    # 2.0f

    .line 614
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1fd

    .line 619
    :cond_228
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    .line 618
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1fd

    .line 633
    :cond_233
    const/4 v9, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 634
    iget v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    int-to-float v9, v9

    mul-float/2addr v1, v9

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 636
    add-int/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    .line 635
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 637
    invoke-virtual {v15, v1, v4}, Landroid/view/View;->measure(II)V

    goto/16 :goto_16f

    .line 644
    :cond_24a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 646
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 647
    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-eqz v1, :cond_272

    xor-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_272

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 653
    :cond_272
    return-void

    :cond_273
    move v1, v5

    move v5, v8

    move/from16 v16, v3

    move v3, v4

    move/from16 v4, v16

    goto/16 :goto_70

    :cond_27c
    move v10, v2

    move v12, v3

    move v3, v1

    goto/16 :goto_21

    .line 481
    nop

    :sswitch_data_282
    .sparse-switch
        -0x80000000 -> :sswitch_b2
        0x40000000 -> :sswitch_a4
    .end sparse-switch
.end method

.method onPanelDragged(I)V
    .registers 6

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 944
    return-void

    .line 946
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v3

    .line 947
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 949
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 950
    if-eqz v3, :cond_23

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int p1, v2, v1

    .line 952
    :cond_23
    if-eqz v3, :cond_54

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    move v2, v1

    .line 953
    :goto_2a
    if-eqz v3, :cond_5a

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 954
    :goto_2e
    add-int/2addr v1, v2

    .line 956
    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 958
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v1, :cond_41

    .line 959
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 962
    :cond_41
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v0, :cond_4e

    .line 963
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 965
    :cond_4e
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 966
    return-void

    .line 952
    :cond_54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    move v2, v1

    goto :goto_2a

    .line 953
    :cond_5a
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2e
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .prologue
    .line 1267
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_8

    .line 1268
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1269
    return-void

    .line 1272
    :cond_8
    nop

    nop

    .line 1273
    invoke-virtual {p1}, Landroid/support/v4/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1275
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_1d

    .line 1276
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 1280
    :goto_18
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1281
    return-void

    .line 1278
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_18
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1257
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1259
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1260
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    :goto_13
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1262
    return-object v1

    .line 1260
    :cond_16
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_13
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 744
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 746
    if-eq p1, p3, :cond_8

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 749
    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    .line 821
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_9

    .line 822
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 825
    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 827
    const/4 v0, 0x1

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_60

    .line 856
    :cond_16
    :goto_16
    return v0

    .line 831
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 833
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 834
    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    goto :goto_16

    .line 839
    :pswitch_24
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 842
    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v3, v1, v3

    .line 843
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v4, v2, v4

    .line 844
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 845
    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-int v4, v5, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_16

    .line 846
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    .line 845
    if-eqz v1, :cond_16

    .line 848
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_16

    .line 829
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_17
        :pswitch_24
    .end packed-switch
.end method

.method public openPane()Z
    .registers 3

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 753
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 754
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    .line 755
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 757
    :cond_16
    return-void

    .line 755
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method setAllChildrenVisible()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_19

    .line 399
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 400
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    .line 401
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 404
    :cond_19
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 316
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 317
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .registers 2

    .prologue
    .line 328
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .line 329
    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    .prologue
    .line 279
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 281
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1076
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 1085
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1086
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 1095
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1096
    return-void
.end method

.method public setShadowResource(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1110
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .registers 3

    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    return-void
.end method

.method public setShadowResourceRight(I)V
    .registers 3

    .prologue
    .line 1129
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 298
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 299
    return-void
.end method

.method public smoothSlideClosed()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 898
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 899
    return-void
.end method

.method public smoothSlideOpen()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 881
    return-void
.end method

.method smoothSlideTo(FI)Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1028
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_6

    .line 1030
    return v4

    .line 1033
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 1034
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1037
    if-eqz v1, :cond_49

    .line 1038
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 1039
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1040
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float v0, v2, v0

    float-to-int v0, v0

    .line 1046
    :goto_31
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1047
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1048
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1049
    const/4 v0, 0x1

    return v0

    .line 1042
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    .line 1043
    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_31

    .line 1051
    :cond_58
    return v4
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .registers 19

    .prologue
    .line 352
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v9

    .line 353
    if-eqz v9, :cond_4f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v7, v1, v2

    .line 354
    :goto_10
    if-eqz v9, :cond_54

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 355
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v11, v2, v3

    .line 361
    if-eqz p1, :cond_5e

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 370
    :goto_3c
    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v8, v6

    :goto_42
    if-ge v8, v12, :cond_4e

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 373
    move-object/from16 v0, p1

    if-ne v13, v0, :cond_63

    .line 395
    :cond_4e
    return-void

    .line 353
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    goto :goto_10

    .line 354
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_16

    .line 367
    :cond_5e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_3c

    .line 376
    :cond_63
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v14, 0x8

    if-ne v6, v14, :cond_6f

    .line 370
    :goto_6b
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_42

    .line 381
    :cond_6f
    if-eqz v9, :cond_a8

    move v6, v1

    :goto_72
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 380
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 382
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 384
    if-eqz v9, :cond_aa

    move v6, v7

    :goto_85
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v16

    .line 383
    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 385
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 387
    if-lt v14, v5, :cond_ac

    if-lt v15, v3, :cond_ac

    .line 388
    if-gt v6, v4, :cond_ac

    move/from16 v0, v16

    if-gt v0, v2, :cond_ac

    .line 389
    const/4 v6, 0x4

    .line 393
    :goto_a4
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6b

    :cond_a8
    move v6, v7

    .line 381
    goto :goto_72

    :cond_aa
    move v6, v1

    .line 384
    goto :goto_85

    .line 391
    :cond_ac
    const/4 v6, 0x0

    goto :goto_a4
.end method
