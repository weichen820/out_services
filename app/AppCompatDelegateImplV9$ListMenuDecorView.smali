.class Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 2110
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    .line 2111
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2112
    return-void
.end method

.method private isOutOfBounds(II)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x5

    .line 2140
    if-lt p1, v1, :cond_6

    if-ge p2, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-gt p1, v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-gt p2, v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 2116
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2117
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2116
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2123
    if-nez v0, :cond_1e

    .line 2124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2126
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2127
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(I)V

    .line 2128
    const/4 v0, 0x1

    return v0

    .line 2131
    :cond_1e
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .prologue
    .line 2136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2137
    return-void
.end method
