.class Landroid/support/v4/view/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    .line 1
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 10

    .prologue
    .line 430
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 433
    return-object v1

    .line 443
    :cond_b
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    .line 444
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 445
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 446
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 447
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 449
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_2c
    if-ge v0, v3, :cond_6b

    .line 451
    iget-object v4, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 450
    invoke-static {v4, v1}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v4

    .line 454
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    .line 455
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 454
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 456
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    .line 457
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 456
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 458
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    .line 459
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 458
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 460
    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    .line 461
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 460
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 466
    :cond_6b
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 465
    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
