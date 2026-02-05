.class Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatBaseImpl"
.end annotation


# static fields
.field static sAccessibilityDelegateCheckFailed:Z

.field static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 452
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    .line 440
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    .line 440
    return-void
.end method

.method private bindTempDetach()V
    .registers 4

    .prologue
    .line 636
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 637
    const-string/jumbo v1, "dispatchStartTemporaryDetach"

    .line 636
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 638
    const-class v0, Landroid/view/View;

    .line 639
    const-string/jumbo v1, "dispatchFinishTemporaryDetach"

    .line 638
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_20

    .line 643
    :goto_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mTempDetachBound:Z

    .line 644
    return-void

    .line 640
    :catch_20
    move-exception v0

    .line 641
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 948
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 949
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 950
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 951
    return-void
.end method


# virtual methods
.method public addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1001
    return-void
.end method

.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .prologue
    .line 693
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 694
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    .line 696
    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 697
    if-nez v0, :cond_1f

    .line 698
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 699
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_1f
    return-object v0
.end method

.method public cancelDragAndDrop(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 497
    return-void
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .prologue
    .line 781
    return-object p2
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 615
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mTempDetachBound:Z

    if-nez v0, :cond_7

    .line 616
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->bindTempDetach()V

    .line 618
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 620
    :try_start_b
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    .line 628
    :goto_13
    return-void

    .line 621
    :catch_14
    move-exception v0

    .line 622
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 626
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_13
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    .prologue
    .line 869
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 870
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0

    .line 873
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    .prologue
    .line 877
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 878
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0

    .line 880
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 7

    .prologue
    .line 860
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 861
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0

    .line 864
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 13

    .prologue
    .line 851
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 852
    check-cast v0, Landroid/support/v4/view/NestedScrollingChild;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0

    .line 855
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 599
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mTempDetachBound:Z

    if-nez v0, :cond_7

    .line 600
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->bindTempDetach()V

    .line 602
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 604
    :try_start_b
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    .line 612
    :goto_13
    return-void

    .line 605
    :catch_14
    move-exception v0

    .line 606
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 610
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_13
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    .prologue
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    .line 806
    instance-of v0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    .line 807
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p1}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 806
    :goto_a
    return-object v0

    .line 808
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .prologue
    .line 824
    instance-of v0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    .line 825
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p1}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 824
    :goto_a
    return-object v0

    .line 826
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 4

    .prologue
    .line 958
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 959
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 960
    const-string/jumbo v1, "window"

    .line 959
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 961
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 963
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method getFrameTime()J
    .registers 3

    .prologue
    .line 529
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public getImportantForAutofill(Landroid/view/View;)I
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 670
    sget-boolean v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightFieldFetched:Z

    if-nez v0, :cond_18

    .line 672
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 673
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_2c

    .line 677
    :goto_16
    sput-boolean v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightFieldFetched:Z

    .line 680
    :cond_18
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2a

    .line 682
    :try_start_1c
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-result v0

    return v0

    .line 683
    :catch_29
    move-exception v0

    .line 689
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 674
    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 647
    sget-boolean v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthFieldFetched:Z

    if-nez v0, :cond_18

    .line 649
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 650
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_2c

    .line 654
    :goto_16
    sput-boolean v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthFieldFetched:Z

    .line 657
    :cond_18
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2a

    .line 659
    :try_start_1c
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-result v0

    return v0

    .line 660
    :catch_29
    move-exception v0

    .line 666
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 651
    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method public getNextClusterForwardId(Landroid/view/View;)I
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 970
    const/4 v0, -0x1

    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getScrollIndicators(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 912
    const/4 v0, 0x0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 712
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_6

    .line 713
    return-object v1

    .line 715
    :cond_6
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .registers 3

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .registers 4

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getElevation(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 464
    sget-boolean v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    if-eqz v2, :cond_7

    .line 465
    return v1

    .line 467
    :cond_7
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1c

    .line 469
    :try_start_b
    const-class v2, Landroid/view/View;

    .line 470
    const-string/jumbo v3, "mAccessibilityDelegate"

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 471
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1c} :catch_25

    .line 478
    :cond_1c
    :try_start_1c
    sget-object v2, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_21} :catch_2b

    move-result-object v2

    if-eqz v2, :cond_29

    :goto_24
    return v0

    .line 472
    :catch_25
    move-exception v2

    .line 473
    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    .line 474
    return v1

    :cond_29
    move v0, v1

    .line 478
    goto :goto_24

    .line 479
    :catch_2b
    move-exception v2

    .line 480
    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    .line 481
    return v1
.end method

.method public hasExplicitFocusable(Landroid/view/View;)Z
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1008
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 843
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 844
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    return v0

    .line 846
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public hasOnClickListeners(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 908
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFocusedByDefault(Landroid/view/View;)Z
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 540
    const/4 v0, 0x1

    return v0
.end method

.method public isImportantForAutofill(Landroid/view/View;)Z
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1021
    const/4 v0, 0x1

    return v0
.end method

.method public isInLayout(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyboardNavigationCluster(Landroid/view/View;)Z
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 795
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 796
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    .line 798
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 995
    const/4 v0, 0x0

    return-object v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 924
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 926
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 928
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 929
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_19

    .line 930
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 933
    :cond_19
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 936
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 937
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 938
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 941
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_19

    .line 942
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 945
    :cond_19
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .prologue
    .line 777
    return-object p2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .prologue
    .line 486
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 487
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 514
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6

    .prologue
    .line 517
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    .line 518
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 8

    .prologue
    .line 525
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 526
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 723
    return-void
.end method

.method public restoreDefaultFocus(Landroid/view/View;)Z
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1004
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 4
    .param p2    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 460
    if-nez p2, :cond_7

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 461
    return-void

    .line 460
    :cond_7
    invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    goto :goto_3
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 584
    return-void
.end method

.method public varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 456
    return-void
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 802
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    .line 812
    instance-of v0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 813
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p1, p2}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 815
    :cond_9
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .prologue
    .line 818
    instance-of v0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 819
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p1, p2}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 821
    :cond_9
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 747
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1d

    .line 749
    :try_start_5
    const-class v0, Landroid/view/ViewGroup;

    .line 750
    const-string/jumbo v1, "setChildrenDrawingOrderEnabled"

    .line 749
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 750
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 749
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_18} :catch_2d

    .line 754
    :goto_18
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 757
    :cond_1d
    :try_start_1d
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2c} :catch_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2c} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2c} :catch_38

    .line 765
    :goto_2c
    return-void

    .line 751
    :catch_2d
    move-exception v0

    .line 752
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 762
    :catch_38
    move-exception v0

    .line 763
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 760
    :catch_43
    move-exception v0

    .line 761
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 758
    :catch_4e
    move-exception v0

    .line 759
    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .prologue
    .line 740
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 726
    return-void
.end method

.method public setFocusedByDefault(Landroid/view/View;Z)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 991
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    .prologue
    .line 510
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 537
    return-void
.end method

.method public setImportantForAutofill(Landroid/view/View;I)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1018
    return-void
.end method

.method public setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 983
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 556
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 564
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 572
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 789
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    .line 790
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 792
    :cond_9
    return-void
.end method

.method public setNextClusterForwardId(Landroid/view/View;I)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 975
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .prologue
    .line 774
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .registers 6

    .prologue
    .line 595
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 596
    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .registers 3

    .prologue
    .line 955
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 917
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .registers 4

    .prologue
    .line 921
    return-void
.end method

.method public setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 967
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 705
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 706
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    .line 708
    :cond_b
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 733
    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 901
    return-void
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 7

    .prologue
    .line 492
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .registers 4

    .prologue
    .line 830
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 831
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    return v0

    .line 833
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 837
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    .line 838
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 840
    :cond_9
    return-void
.end method

.method public updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 3

    .prologue
    .line 501
    return-void
.end method
