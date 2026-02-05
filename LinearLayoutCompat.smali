.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$DividerMode;,
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;,
        Landroid/support/v7/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    iput-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 107
    iput v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 114
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 118
    const v0, 0x800033

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 154
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 153
    invoke-static {p1, p2, v0, p3, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 156
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 157
    if-ltz v1, :cond_22

    .line 158
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 161
    :cond_22
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 162
    if-ltz v1, :cond_2d

    .line 163
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 166
    :cond_2d
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 167
    if-nez v1, :cond_38

    .line 168
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 171
    :cond_38
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 174
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 173
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 176
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 178
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 182
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 183
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 1314
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1315
    const/high16 v1, 0x40000000    # 2.0f

    .line 1314
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v3

    .line 1316
    :goto_c
    if-ge v7, p1, :cond_3a

    .line 1317
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1318
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_36

    .line 1319
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1321
    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_36

    .line 1324
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1325
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1328
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1329
    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1316
    :cond_36
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c

    .line 1333
    :cond_3a
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 892
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 893
    const/high16 v1, 0x40000000    # 2.0f

    .line 892
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    .line 894
    :goto_c
    if-ge v7, p1, :cond_3a

    .line 895
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 896
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_36

    .line 897
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 899
    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_36

    .line 902
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 903
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 906
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 907
    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 894
    :cond_36
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c

    .line 911
    :cond_3a
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8

    .prologue
    .line 1642
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1643
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 1748
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    .line 321
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 322
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_42

    .line 323
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 325
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_32

    .line 326
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 327
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 329
    if-eqz v3, :cond_36

    .line 330
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    .line 334
    :goto_2f
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 322
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 332
    :cond_36
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v4

    goto :goto_2f

    .line 339
    :cond_42
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 340
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 342
    if-nez v1, :cond_67

    .line 343
    if-eqz v3, :cond_5a

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 356
    :goto_56
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 358
    :cond_59
    return-void

    .line 346
    :cond_5a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_56

    .line 349
    :cond_67
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 350
    if-eqz v3, :cond_7b

    .line 351
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_56

    .line 353
    :cond_7b
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_56
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    move v1, v0

    .line 294
    :goto_6
    if-ge v1, v2, :cond_34

    .line 295
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 297
    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_30

    .line 298
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 299
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 300
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v3

    .line 301
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 294
    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 306
    :cond_34
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 307
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 309
    if-nez v1, :cond_52

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    .line 315
    :goto_4e
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 317
    :cond_51
    return-void

    .line 312
    :cond_52
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 313
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_4e
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 362
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 361
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 364
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 368
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 367
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 1731
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-nez v0, :cond_b

    .line 1732
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1733
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1734
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1736
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1721
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .prologue
    .line 1718
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .prologue
    .line 1741
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1716
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1739
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 421
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_a

    .line 422
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 425
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gt v0, v1, :cond_1b

    .line 426
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_1b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 431
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 433
    if-ne v3, v4, :cond_35

    .line 434
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_2c

    .line 436
    return v4

    .line 440
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_35
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 452
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_47

    .line 453
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    .line 454
    const/16 v4, 0x30

    if-eq v1, v4, :cond_47

    .line 455
    sparse-switch v1, :sswitch_data_82

    :cond_47
    move v1, v0

    .line 468
    :goto_48
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 469
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 457
    :sswitch_53
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 458
    goto :goto_48

    .line 461
    :sswitch_66
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    .line 462
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 461
    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    .line 463
    goto :goto_48

    .line 455
    nop

    :sswitch_data_82
    .sparse-switch
        0x10 -> :sswitch_66
        0x50 -> :sswitch_53
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .prologue
    .line 478
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4

    .prologue
    .line 1344
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 276
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 1697
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1386
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 1398
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 1664
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .prologue
    .line 527
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 563
    if-nez p1, :cond_d

    .line 564
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a

    .line 565
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_1c

    .line 566
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1a

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19

    .line 567
    :cond_1c
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_36

    .line 569
    add-int/lit8 v2, p1, -0x1

    :goto_24
    if-ltz v2, :cond_37

    .line 570
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_33

    .line 575
    :goto_32
    return v0

    .line 569
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 577
    :cond_36
    return v1

    :cond_37
    move v0, v1

    goto :goto_32
.end method

.method public isBaselineAligned()Z
    .registers 2

    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 27

    .prologue
    .line 1518
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    .line 1525
    sub-int v2, p4, p2

    .line 1526
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v15, v2, v3

    .line 1529
    sub-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v16, v2, v3

    .line 1531
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v17

    .line 1533
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v3, 0x800007

    and-int/2addr v2, v3

    .line 1534
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v14, v3, 0x70

    .line 1536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v18, v0

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v19, v0

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v20, v0

    .line 1541
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1542
    invoke-static {v2, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_138

    .line 1555
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    .line 1559
    :goto_4a
    const/4 v3, 0x0

    .line 1560
    const/4 v2, 0x1

    .line 1562
    if-eqz v4, :cond_134

    .line 1563
    add-int/lit8 v3, v17, -0x1

    .line 1564
    const/4 v2, -0x1

    move v9, v2

    move v10, v3

    .line 1567
    :goto_53
    const/4 v13, 0x0

    :goto_54
    move/from16 v0, v17

    if-ge v13, v0, :cond_12a

    .line 1568
    mul-int v2, v9, v13

    add-int v21, v10, v2

    .line 1569
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1571
    if-nez v3, :cond_92

    .line 1572
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    move v2, v13

    .line 1567
    :goto_70
    add-int/lit8 v13, v2, 0x1

    goto :goto_54

    .line 1545
    :sswitch_73
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v12, v2, v3

    .line 1546
    goto :goto_4a

    .line 1550
    :sswitch_82
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v3, p3, p1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    .line 1551
    goto :goto_4a

    .line 1573
    :cond_92
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_131

    .line 1574
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1575
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1576
    const/4 v4, -0x1

    .line 1579
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1581
    if-eqz v18, :cond_f6

    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_f6

    .line 1582
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 1585
    :goto_b5
    iget v4, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1586
    if-gez v4, :cond_ba

    move v4, v14

    .line 1590
    :cond_ba
    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_142

    move v5, v11

    .line 1626
    :goto_c0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 1627
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, v12

    .line 1630
    :goto_cf
    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v12, v2, v4

    .line 1631
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1633
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    .line 1634
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .line 1633
    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1636
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v13

    goto/16 :goto_70

    :cond_f6
    move v2, v4

    .line 1581
    goto :goto_b5

    .line 1592
    :sswitch_f8
    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v11

    .line 1593
    const/4 v5, -0x1

    if-eq v2, v5, :cond_12f

    .line 1594
    const/4 v5, 0x1

    aget v5, v19, v5

    sub-int v2, v5, v2

    add-int/2addr v2, v4

    :goto_104
    move v5, v2

    .line 1596
    goto :goto_c0

    .line 1610
    :sswitch_106
    sub-int v2, v16, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    .line 1611
    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1610
    add-int/2addr v2, v4

    .line 1611
    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1610
    sub-int/2addr v2, v4

    move v5, v2

    .line 1612
    goto :goto_c0

    .line 1615
    :sswitch_113
    sub-int v4, v15, v7

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 1616
    const/4 v5, -0x1

    if-eq v2, v5, :cond_12d

    .line 1617
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v2, v5, v2

    .line 1618
    const/4 v5, 0x2

    aget v5, v20, v5

    sub-int v2, v5, v2

    sub-int v2, v4, v2

    :goto_128
    move v5, v2

    .line 1620
    goto :goto_c0

    .line 1639
    :cond_12a
    return-void

    :cond_12b
    move v2, v12

    goto :goto_cf

    :cond_12d
    move v2, v4

    goto :goto_128

    :cond_12f
    move v2, v4

    goto :goto_104

    :cond_131
    move v2, v13

    goto/16 :goto_70

    :cond_134
    move v9, v2

    move v10, v3

    goto/16 :goto_53

    .line 1542
    :sswitch_data_138
    .sparse-switch
        0x1 -> :sswitch_82
        0x5 -> :sswitch_73
    .end sparse-switch

    .line 1590
    :sswitch_data_142
    .sparse-switch
        0x10 -> :sswitch_106
        0x30 -> :sswitch_f8
        0x50 -> :sswitch_113
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .registers 19

    .prologue
    .line 1423
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    .line 1429
    sub-int v0, p3, p1

    .line 1430
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1433
    sub-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 1435
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v12

    .line 1437
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    .line 1438
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v2, 0x800007

    and-int v7, v1, v2

    .line 1440
    sparse-switch v0, :sswitch_data_c4

    .line 1453
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 1457
    :goto_29
    const/4 v8, 0x0

    move v3, v0

    :goto_2b
    if-ge v8, v12, :cond_bd

    .line 1458
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1459
    if-nez v1, :cond_55

    .line 1460
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v8

    .line 1457
    :goto_39
    add-int/lit8 v8, v0, 0x1

    goto :goto_2b

    .line 1443
    :sswitch_3c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1444
    goto :goto_29

    .line 1448
    :sswitch_48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1449
    goto :goto_29

    .line 1461
    :cond_55
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_c0

    .line 1462
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1463
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1466
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1468
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1469
    if-gez v0, :cond_71

    move v0, v7

    .line 1472
    :cond_71
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1473
    invoke-static {v0, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1475
    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_ce

    .line 1487
    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v9, v0

    .line 1491
    :goto_82
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1492
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v3

    .line 1495
    :goto_8b
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v13, v0, v3

    .line 1496
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v13, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1498
    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    add-int v3, v13, v0

    .line 1500
    invoke-virtual {p0, v1, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_39

    .line 1477
    :sswitch_a9
    sub-int v0, v11, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v9

    .line 1478
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1477
    add-int/2addr v0, v2

    .line 1478
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1477
    sub-int v2, v0, v2

    .line 1479
    goto :goto_82

    .line 1482
    :sswitch_b6
    sub-int v0, v10, v4

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v0, v2

    .line 1483
    goto :goto_82

    .line 1503
    :cond_bd
    return-void

    :cond_be
    move v0, v3

    goto :goto_8b

    :cond_c0
    move v0, v8

    goto/16 :goto_39

    .line 1440
    nop

    :sswitch_data_c4
    .sparse-switch
        0x10 -> :sswitch_48
        0x50 -> :sswitch_3c
    .end sparse-switch

    .line 1475
    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_a9
        0x5 -> :sswitch_b6
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1374
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1376
    return-void
.end method

.method measureHorizontal(II)V
    .registers 33

    .prologue
    .line 925
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 926
    const/16 v20, 0x0

    .line 927
    const/16 v19, 0x0

    .line 928
    const/4 v15, 0x0

    .line 929
    const/4 v14, 0x0

    .line 930
    const/16 v18, 0x1

    .line 931
    const/4 v6, 0x0

    .line 933
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v22

    .line 935
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 936
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 938
    const/4 v13, 0x0

    .line 939
    const/4 v12, 0x0

    .line 941
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v3, :cond_36

    .line 942
    :cond_28
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 943
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 946
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v25, v0

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v26, v0

    .line 949
    const/4 v3, -0x1

    const/4 v4, 0x3

    aput v3, v25, v4

    const/4 v3, -0x1

    const/4 v4, 0x2

    aput v3, v25, v4

    const/4 v3, -0x1

    const/4 v4, 0x1

    aput v3, v25, v4

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput v3, v25, v4

    .line 950
    const/4 v3, -0x1

    const/4 v4, 0x3

    aput v3, v26, v4

    const/4 v3, -0x1

    const/4 v4, 0x2

    aput v3, v26, v4

    const/4 v3, -0x1

    const/4 v4, 0x1

    aput v3, v26, v4

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput v3, v26, v4

    .line 952
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    move/from16 v27, v0

    .line 953
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v28, v0

    .line 955
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_a9

    const/4 v3, 0x1

    move v11, v3

    .line 957
    :goto_76
    const/16 v16, 0x0

    .line 960
    const/4 v5, 0x0

    :goto_79
    move/from16 v0, v22

    if-ge v5, v0, :cond_253

    .line 961
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 963
    if-nez v4, :cond_ac

    .line 964
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v3, v16

    move v4, v6

    move/from16 v7, v18

    move/from16 v8, v20

    move/from16 v6, v19

    .line 960
    :goto_9d
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v3

    move/from16 v18, v7

    move/from16 v19, v6

    move/from16 v20, v8

    move v6, v4

    goto :goto_79

    .line 955
    :cond_a9
    const/4 v3, 0x0

    move v11, v3

    goto :goto_76

    .line 968
    :cond_ac
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_c5

    .line 969
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move/from16 v3, v16

    move v4, v6

    move/from16 v7, v18

    move/from16 v8, v20

    move/from16 v6, v19

    .line 970
    goto :goto_9d

    .line 973
    :cond_c5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 974
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 978
    :cond_da
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    .line 977
    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 980
    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v17, v6, v3

    .line 982
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_1bd

    iget v3, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_1bd

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1bd

    .line 986
    if-eqz v11, :cond_1a6

    .line 987
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 999
    :goto_106
    if-eqz v27, :cond_1ba

    .line 1000
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1001
    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    move v3, v12

    :goto_112
    move/from16 v12, v16

    move/from16 v16, v3

    .line 1044
    :goto_116
    const/4 v3, 0x0

    .line 1045
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v6, :cond_23a

    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_23a

    .line 1049
    const/4 v6, 0x1

    .line 1050
    const/4 v3, 0x1

    .line 1053
    :goto_124
    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    .line 1054
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v7, v8

    .line 1055
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 1057
    if-eqz v27, :cond_16e

    .line 1058
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v19

    .line 1059
    const/4 v7, -0x1

    move/from16 v0, v19

    if-eq v0, v7, :cond_16e

    .line 1062
    iget v7, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v7, :cond_23d

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    :goto_14c
    and-int/lit8 v7, v7, 0x70

    .line 1064
    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    .line 1067
    aget v21, v25, v7

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    aput v21, v25, v7

    .line 1068
    aget v21, v26, v7

    sub-int v19, v9, v19

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    aput v19, v26, v7

    .line 1072
    :cond_16e
    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1074
    if-eqz v18, :cond_241

    iget v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_241

    const/4 v7, 0x1

    .line 1075
    :goto_17f
    iget v10, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/16 v18, 0x0

    cmpl-float v10, v10, v18

    if-lez v10, :cond_247

    .line 1081
    if-eqz v3, :cond_244

    move v3, v8

    .line 1080
    :goto_18a
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v15

    .line 1087
    :goto_18f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move/from16 v4, v17

    move v14, v3

    move v15, v8

    move v3, v12

    move/from16 v8, v19

    move/from16 v12, v16

    move/from16 v29, v13

    move v13, v6

    move/from16 v6, v29

    goto/16 :goto_9d

    .line 989
    :cond_1a6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 991
    iget v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 990
    add-int/2addr v6, v3

    .line 991
    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 990
    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_106

    .line 1003
    :cond_1ba
    const/4 v3, 0x1

    goto/16 :goto_112

    .line 1006
    :cond_1bd
    const/high16 v3, -0x80000000

    .line 1008
    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v6, :cond_219

    iget v6, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_219

    .line 1013
    const/4 v3, 0x0

    .line 1014
    const/4 v6, -0x2

    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v3

    .line 1022
    :goto_1d0
    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-nez v3, :cond_21c

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1023
    :goto_1d9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    .line 1021
    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1025
    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-eq v0, v3, :cond_1ed

    .line 1026
    move/from16 v0, v21

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1029
    :cond_1ed
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1030
    if-eqz v11, :cond_21e

    .line 1031
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v3

    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 1032
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    .line 1031
    add-int/2addr v7, v8

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1039
    :goto_209
    if-eqz v28, :cond_5e2

    .line 1040
    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v29, v16

    move/from16 v16, v12

    move/from16 v12, v29

    goto/16 :goto_116

    :cond_219
    move/from16 v21, v3

    .line 1008
    goto :goto_1d0

    .line 1022
    :cond_21c
    const/4 v7, 0x0

    goto :goto_1d9

    .line 1034
    :cond_21e
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1035
    add-int v7, v6, v3

    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    .line 1036
    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1035
    add-int/2addr v7, v8

    .line 1036
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    .line 1035
    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_209

    :cond_23a
    move v6, v13

    .line 1045
    goto/16 :goto_124

    .line 1062
    :cond_23d
    iget v7, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto/16 :goto_14c

    .line 1074
    :cond_241
    const/4 v7, 0x0

    goto/16 :goto_17f

    :cond_244
    move v3, v9

    .line 1081
    goto/16 :goto_18a

    .line 1084
    :cond_247
    if-eqz v3, :cond_251

    .line 1083
    :goto_249
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v14

    goto/16 :goto_18f

    :cond_251
    move v8, v9

    .line 1084
    goto :goto_249

    .line 1090
    :cond_253
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_270

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_270

    .line 1091
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1096
    :cond_270
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_27c

    .line 1097
    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2e2

    .line 1100
    :cond_27c
    const/4 v3, 0x3

    aget v3, v25, v3

    .line 1101
    const/4 v4, 0x0

    aget v4, v25, v4

    .line 1102
    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v7, 0x2

    aget v7, v25, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1101
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1100
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1103
    const/4 v4, 0x3

    aget v4, v26, v4

    .line 1104
    const/4 v5, 0x0

    aget v5, v26, v5

    .line 1105
    const/4 v7, 0x1

    aget v7, v26, v7

    const/4 v8, 0x2

    aget v8, v26, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1104
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1103
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1106
    add-int/2addr v3, v4

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1109
    :goto_2b3
    if-eqz v28, :cond_33f

    .line 1110
    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_2bd

    if-nez v23, :cond_33f

    .line 1111
    :cond_2bd
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1113
    const/4 v4, 0x0

    :goto_2c3
    move/from16 v0, v22

    if-ge v4, v0, :cond_33f

    .line 1114
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1116
    if-nez v7, :cond_2f1

    .line 1117
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v7

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    .line 1113
    :goto_2df
    add-int/lit8 v4, v3, 0x1

    goto :goto_2c3

    .line 1098
    :cond_2e2
    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_27c

    .line 1099
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_27c

    move/from16 v5, v20

    goto :goto_2b3

    .line 1121
    :cond_2f1
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_301

    .line 1122
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 1123
    goto :goto_2df

    .line 1127
    :cond_301
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1126
    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1128
    if-eqz v11, :cond_322

    .line 1129
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v9, v9, v16

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v9

    .line 1130
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    .line 1129
    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_2df

    .line 1132
    :cond_322
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1133
    add-int v9, v8, v16

    .line 1134
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1133
    add-int/2addr v9, v10

    .line 1134
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1133
    add-int/2addr v3, v9

    .line 1134
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    .line 1133
    add-int/2addr v3, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_2df

    .line 1140
    :cond_33f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1142
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1145
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1148
    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v17

    .line 1149
    const v3, 0xffffff

    and-int v3, v3, v17

    .line 1154
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v4, v3, v4

    .line 1155
    if-nez v12, :cond_378

    if-eqz v4, :cond_582

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_582

    .line 1156
    :cond_378
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_385

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 1158
    :cond_385
    const/4 v3, -0x1

    const/4 v5, 0x3

    aput v3, v25, v5

    const/4 v3, -0x1

    const/4 v5, 0x2

    aput v3, v25, v5

    const/4 v3, -0x1

    const/4 v5, 0x1

    aput v3, v25, v5

    const/4 v3, -0x1

    const/4 v5, 0x0

    aput v3, v25, v5

    .line 1159
    const/4 v3, -0x1

    const/4 v5, 0x3

    aput v3, v26, v5

    const/4 v3, -0x1

    const/4 v5, 0x2

    aput v3, v26, v5

    const/4 v3, -0x1

    const/4 v5, 0x1

    aput v3, v26, v5

    const/4 v3, -0x1

    const/4 v5, 0x0

    aput v3, v26, v5

    .line 1160
    const/4 v14, -0x1

    .line 1162
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1164
    const/4 v3, 0x0

    move v5, v6

    move/from16 v9, v18

    move v10, v15

    move/from16 v7, v19

    move v6, v4

    move v15, v3

    :goto_3b4
    move/from16 v0, v22

    if-ge v15, v0, :cond_4e3

    .line 1165
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1167
    if-eqz v16, :cond_3c8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3d6

    :cond_3c8
    move v3, v5

    move v4, v6

    move v8, v14

    move v6, v10

    move v5, v9

    .line 1164
    :goto_3cd
    add-int/lit8 v9, v15, 0x1

    move v15, v9

    move v10, v6

    move v14, v8

    move v9, v5

    move v6, v4

    move v5, v3

    goto :goto_3b4

    .line 1172
    :cond_3d6
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1174
    iget v8, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1175
    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_5dd

    .line 1177
    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1178
    sub-float/2addr v5, v8

    .line 1179
    sub-int v8, v6, v4

    .line 1183
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v6, v12

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v12

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v12

    .line 1184
    iget v12, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1181
    move/from16 v0, p2

    invoke-static {v0, v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v6

    .line 1188
    iget v12, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v12, :cond_40b

    const/high16 v12, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v12, :cond_4a3

    .line 1191
    :cond_40b
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v4, v12

    .line 1192
    if-gez v4, :cond_413

    .line 1193
    const/4 v4, 0x0

    .line 1197
    :cond_413
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1196
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    .line 1208
    :goto_41e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    const/high16 v6, -0x1000000

    and-int/2addr v4, v6

    .line 1207
    invoke-static {v7, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move v7, v5

    .line 1211
    :goto_42a
    if-eqz v11, :cond_4b4

    .line 1212
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 1213
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1212
    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1220
    :goto_448
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v4, :cond_4d9

    .line 1221
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4d6

    const/4 v4, 0x1

    .line 1223
    :goto_454
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1224
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 1225
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1227
    if-eqz v4, :cond_4dc

    move v4, v5

    .line 1226
    :goto_465
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1229
    if-eqz v9, :cond_4de

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_4de

    const/4 v4, 0x1

    .line 1231
    :goto_471
    if-eqz v27, :cond_5d5

    .line 1232
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1233
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5d5

    .line 1235
    iget v10, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v10, :cond_4e0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    :goto_482
    and-int/lit8 v3, v3, 0x70

    .line 1237
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 1240
    aget v10, v25, v3

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v25, v3

    .line 1241
    aget v10, v26, v3

    .line 1242
    sub-int/2addr v6, v9

    .line 1241
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v26, v3

    move v3, v7

    move v6, v5

    move v5, v4

    move v7, v12

    move v4, v8

    move v8, v14

    goto/16 :goto_3cd

    .line 1202
    :cond_4a3
    if-lez v4, :cond_4b2

    :goto_4a5
    const/high16 v12, 0x40000000    # 2.0f

    .line 1201
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_41e

    .line 1202
    :cond_4b2
    const/4 v4, 0x0

    goto :goto_4a5

    .line 1215
    :cond_4b4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1216
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 1217
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1216
    add-int/2addr v5, v6

    .line 1217
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1216
    add-int/2addr v5, v6

    .line 1217
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    .line 1216
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_448

    .line 1221
    :cond_4d6
    const/4 v4, 0x0

    goto/16 :goto_454

    .line 1220
    :cond_4d9
    const/4 v4, 0x0

    goto/16 :goto_454

    :cond_4dc
    move v4, v6

    .line 1227
    goto :goto_465

    .line 1229
    :cond_4de
    const/4 v4, 0x0

    goto :goto_471

    .line 1235
    :cond_4e0
    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto :goto_482

    .line 1248
    :cond_4e3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1253
    const/4 v3, 0x1

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_501

    .line 1254
    const/4 v3, 0x0

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_575

    .line 1257
    :cond_501
    :goto_501
    const/4 v3, 0x3

    aget v3, v25, v3

    .line 1258
    const/4 v4, 0x0

    aget v4, v25, v4

    .line 1259
    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1258
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1257
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1260
    const/4 v4, 0x3

    aget v4, v26, v4

    .line 1261
    const/4 v5, 0x0

    aget v5, v26, v5

    .line 1262
    const/4 v6, 0x1

    aget v6, v26, v6

    const/4 v8, 0x2

    aget v8, v26, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1261
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1260
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1263
    add-int/2addr v3, v4

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_536
    move/from16 v18, v9

    move v3, v10

    move/from16 v19, v7

    move v4, v14

    .line 1292
    :goto_53c
    if-nez v18, :cond_5ce

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-eq v0, v5, :cond_5ce

    .line 1296
    :goto_544
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1299
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1301
    const/high16 v4, -0x1000000

    and-int v4, v4, v19

    or-int v4, v4, v17

    .line 1303
    shl-int/lit8 v5, v19, 0x10

    .line 1302
    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1301
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1305
    if-eqz v13, :cond_574

    .line 1306
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    .line 1308
    :cond_574
    return-void

    .line 1255
    :cond_575
    const/4 v3, 0x2

    aget v3, v25, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_501

    .line 1256
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_536

    goto :goto_501

    .line 1266
    :cond_582
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1270
    if-eqz v28, :cond_5a8

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_5a8

    .line 1271
    const/4 v3, 0x0

    move v4, v3

    :goto_590
    move/from16 v0, v22

    if-ge v4, v0, :cond_5d1

    .line 1272
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1274
    if-eqz v6, :cond_5a4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_5ab

    .line 1271
    :cond_5a4
    :goto_5a4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_590

    :cond_5a8
    move v3, v10

    move v4, v5

    .line 1270
    goto :goto_53c

    .line 1279
    :cond_5ab
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1281
    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1282
    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_5a4

    .line 1284
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1285
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1286
    const/high16 v8, 0x40000000    # 2.0f

    .line 1285
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1283
    invoke-virtual {v6, v3, v7}, Landroid/view/View;->measure(II)V

    goto :goto_5a4

    :cond_5ce
    move v3, v4

    .line 1292
    goto/16 :goto_544

    :cond_5d1
    move v3, v10

    move v4, v5

    goto/16 :goto_53c

    :cond_5d5
    move v3, v7

    move v6, v5

    move v5, v4

    move v7, v12

    move v4, v8

    move v8, v14

    goto/16 :goto_3cd

    :cond_5dd
    move v8, v6

    move v12, v7

    move v7, v5

    goto/16 :goto_42a

    :cond_5e2
    move/from16 v29, v16

    move/from16 v16, v12

    move/from16 v12, v29

    goto/16 :goto_116
.end method

.method measureNullChild(I)I
    .registers 3

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 30

    .prologue
    .line 592
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 593
    const/16 v19, 0x0

    .line 594
    const/16 v18, 0x0

    .line 595
    const/4 v13, 0x0

    .line 596
    const/4 v12, 0x0

    .line 597
    const/16 v17, 0x1

    .line 598
    const/4 v6, 0x0

    .line 600
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v21

    .line 602
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 603
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 605
    const/4 v11, 0x0

    .line 606
    const/4 v15, 0x0

    .line 608
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    move/from16 v24, v0

    .line 609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v25, v0

    .line 611
    const/4 v14, 0x0

    .line 614
    const/4 v5, 0x0

    :goto_2a
    move/from16 v0, v21

    if-ge v5, v0, :cond_19b

    .line 615
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 617
    if-nez v4, :cond_58

    .line 618
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v14

    move v4, v15

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    .line 614
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    move v14, v3

    move v15, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    goto :goto_2a

    .line 622
    :cond_58
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_70

    .line 623
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v14

    move v4, v15

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    .line 624
    goto :goto_4d

    .line 627
    :cond_70
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 628
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 631
    :cond_85
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 633
    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v16, v6, v3

    .line 635
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_d8

    iget v3, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v3, :cond_d8

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d8

    .line 639
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 640
    iget v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v3

    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 641
    const/4 v15, 0x1

    .line 680
    :cond_b4
    :goto_b4
    if-ltz v24, :cond_c4

    add-int/lit8 v3, v5, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_c4

    .line 681
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 687
    :cond_c4
    move/from16 v0, v24

    if-ge v5, v0, :cond_133

    iget v3, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_133

    .line 688
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :cond_d8
    const/high16 v3, -0x80000000

    .line 645
    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v6, :cond_12e

    iget v6, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_12e

    .line 650
    const/4 v3, 0x0

    .line 651
    const/4 v6, -0x2

    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v3

    .line 660
    :goto_eb
    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-nez v3, :cond_131

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 659
    :goto_f4
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    .line 658
    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 662
    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_108

    .line 663
    move/from16 v0, v20

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 666
    :cond_108
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 667
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 668
    add-int v7, v6, v3

    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    .line 669
    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 668
    add-int/2addr v7, v8

    .line 669
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    .line 668
    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 671
    if-eqz v25, :cond_b4

    .line 672
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_b4

    :cond_12e
    move/from16 v20, v3

    .line 645
    goto :goto_eb

    .line 660
    :cond_131
    const/4 v9, 0x0

    goto :goto_f4

    .line 694
    :cond_133
    const/4 v3, 0x0

    .line 695
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v6, :cond_18a

    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_18a

    .line 700
    const/4 v6, 0x1

    .line 701
    const/4 v3, 0x1

    .line 704
    :goto_141
    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    .line 705
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v9, v7, v8

    .line 706
    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 708
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    .line 707
    move/from16 v0, v18

    invoke-static {v0, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    .line 710
    if-eqz v17, :cond_18c

    iget v7, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_18c

    const/4 v7, 0x1

    .line 711
    :goto_167
    iget v10, v10, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/16 v17, 0x0

    cmpl-float v10, v10, v17

    if-lez v10, :cond_190

    .line 717
    if-eqz v3, :cond_18e

    move v3, v8

    .line 716
    :goto_172
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v13

    .line 723
    :goto_177
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v5, v4

    move v4, v15

    move v12, v3

    move v13, v8

    move/from16 v9, v19

    move v3, v14

    move v8, v11

    move v11, v6

    move/from16 v6, v16

    goto/16 :goto_4d

    :cond_18a
    move v6, v11

    .line 695
    goto :goto_141

    .line 710
    :cond_18c
    const/4 v7, 0x0

    goto :goto_167

    :cond_18e
    move v3, v9

    .line 717
    goto :goto_172

    .line 720
    :cond_190
    if-eqz v3, :cond_199

    .line 719
    :goto_192
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, v12

    goto :goto_177

    :cond_199
    move v8, v9

    .line 720
    goto :goto_192

    .line 726
    :cond_19b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_1b8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 727
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 730
    :cond_1b8
    if-eqz v25, :cond_21a

    .line 731
    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_1c2

    if-nez v23, :cond_21a

    .line 732
    :cond_1c2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 734
    const/4 v4, 0x0

    :goto_1c8
    move/from16 v0, v21

    if-ge v4, v0, :cond_21a

    .line 735
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 737
    if-nez v5, :cond_1e7

    .line 738
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    .line 734
    :goto_1e4
    add-int/lit8 v4, v3, 0x1

    goto :goto_1c8

    .line 742
    :cond_1e7
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1f7

    .line 743
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v3, v4

    .line 744
    goto :goto_1e4

    .line 748
    :cond_1f7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 747
    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 750
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 751
    add-int v8, v7, v14

    .line 752
    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 751
    add-int/2addr v8, v9

    .line 752
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 751
    add-int/2addr v3, v8

    .line 752
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    .line 751
    add-int/2addr v3, v5

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_1e4

    .line 757
    :cond_21a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 759
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 765
    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v16

    .line 766
    const v3, 0xffffff

    and-int v3, v3, v16

    .line 771
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v4, v3, v4

    .line 772
    if-nez v15, :cond_253

    if-eqz v4, :cond_399

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-lez v3, :cond_399

    .line 773
    :cond_253
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_260

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 775
    :cond_260
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 777
    const/4 v3, 0x0

    move v14, v3

    move v5, v6

    move/from16 v9, v17

    move v10, v13

    move/from16 v7, v18

    move/from16 v12, v19

    move v6, v4

    :goto_270
    move/from16 v0, v21

    if-ge v14, v0, :cond_34c

    .line 778
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 780
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_28e

    move v3, v10

    move v4, v7

    move v8, v12

    move v7, v9

    .line 777
    :goto_286
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v10, v3

    move v12, v8

    move v9, v7

    move v7, v4

    goto :goto_270

    .line 784
    :cond_28e
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 786
    iget v8, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 787
    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_3eb

    .line 789
    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 790
    sub-float/2addr v5, v8

    .line 791
    sub-int/2addr v6, v4

    .line 794
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int/2addr v8, v13

    .line 795
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 794
    add-int/2addr v8, v13

    .line 795
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 794
    add-int/2addr v8, v13

    .line 795
    iget v13, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 793
    move/from16 v0, p1

    invoke-static {v0, v8, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v8

    .line 799
    iget v13, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v13, :cond_2c2

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v13, :cond_336

    .line 802
    :cond_2c2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v4, v13

    .line 803
    if-gez v4, :cond_2ca

    .line 804
    const/4 v4, 0x0

    .line 808
    :cond_2ca
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 807
    invoke-virtual {v15, v8, v4}, Landroid/view/View;->measure(II)V

    .line 819
    :goto_2d3
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    .line 818
    invoke-static {v7, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    move/from16 v26, v5

    move v5, v6

    move v6, v4

    move/from16 v4, v26

    .line 823
    :goto_2e3
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 824
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    .line 825
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 827
    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v13, :cond_346

    .line 828
    iget v13, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_344

    const/4 v13, 0x1

    .line 831
    :goto_300
    if-eqz v13, :cond_348

    .line 830
    :goto_302
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 833
    if-eqz v9, :cond_34a

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_34a

    const/4 v7, 0x1

    .line 835
    :goto_30e
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 836
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v9

    .line 837
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 836
    add-int/2addr v10, v13

    .line 837
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 836
    add-int/2addr v3, v10

    .line 837
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v10

    .line 836
    add-int/2addr v3, v10

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v8

    move v8, v12

    move/from16 v26, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v26

    goto/16 :goto_286

    .line 813
    :cond_336
    if-lez v4, :cond_342

    .line 814
    :goto_338
    const/high16 v13, 0x40000000    # 2.0f

    .line 813
    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 812
    invoke-virtual {v15, v8, v4}, Landroid/view/View;->measure(II)V

    goto :goto_2d3

    .line 813
    :cond_342
    const/4 v4, 0x0

    goto :goto_338

    .line 828
    :cond_344
    const/4 v13, 0x0

    goto :goto_300

    .line 827
    :cond_346
    const/4 v13, 0x0

    goto :goto_300

    :cond_348
    move v7, v8

    .line 831
    goto :goto_302

    .line 833
    :cond_34a
    const/4 v7, 0x0

    goto :goto_30e

    .line 841
    :cond_34c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v17, v9

    move v3, v10

    move/from16 v18, v7

    move v4, v12

    .line 873
    :goto_364
    if-nez v17, :cond_3e4

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_3e4

    .line 877
    :goto_36c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 882
    move/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 885
    if-eqz v11, :cond_398

    .line 886
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 888
    :cond_398
    return-void

    .line 844
    :cond_399
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 850
    if-eqz v25, :cond_3bf

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_3bf

    .line 851
    const/4 v3, 0x0

    move v4, v3

    :goto_3a7
    move/from16 v0, v21

    if-ge v4, v0, :cond_3e6

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 854
    if-eqz v5, :cond_3bb

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3c3

    .line 851
    :cond_3bb
    :goto_3bb
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3a7

    :cond_3bf
    move v3, v10

    move/from16 v4, v19

    .line 850
    goto :goto_364

    .line 859
    :cond_3c3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 861
    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 862
    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3bb

    .line 864
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 865
    const/high16 v6, 0x40000000    # 2.0f

    .line 864
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 867
    const/high16 v6, 0x40000000    # 2.0f

    .line 866
    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 863
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3bb

    :cond_3e4
    move v3, v4

    .line 873
    goto :goto_36c

    :cond_3e6
    move v3, v10

    move/from16 v4, v19

    goto/16 :goto_364

    :cond_3eb
    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_2e3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 282
    return-void

    .line 285
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 286
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 290
    :goto_d
    return-void

    .line 288
    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_d
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .prologue
    .line 1753
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1754
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1755
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .prologue
    .line 1759
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1760
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1761
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .prologue
    .line 1403
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1404
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    .line 1408
    :goto_8
    return-void

    .line 1406
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 548
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 549
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V

    .line 553
    :goto_8
    return-void

    .line 551
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    goto :goto_8
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    .prologue
    .line 390
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 391
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5

    .prologue
    .line 486
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2d

    .line 487
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    const-string/jumbo v2, ")"

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_2d
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 491
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_6

    .line 231
    return-void

    .line 233
    :cond_6
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 234
    if-eqz p1, :cond_20

    .line 235
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 236
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 241
    :goto_16
    if-nez p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 243
    return-void

    .line 238
    :cond_20
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 239
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_16
.end method

.method public setDividerPadding(I)V
    .registers 2

    .prologue
    .line 255
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 256
    return-void
.end method

.method public setGravity(I)V
    .registers 4

    .prologue
    .line 1676
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1677
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_1a

    .line 1678
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 1681
    :goto_e
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_14

    .line 1682
    or-int/lit8 v0, v0, 0x30

    .line 1685
    :cond_14
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1686
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1688
    :cond_19
    return-void

    :cond_1a
    move v0, p1

    goto :goto_e
.end method

.method public setHorizontalGravity(I)V
    .registers 5

    .prologue
    const v2, 0x800007

    .line 1701
    and-int v0, p1, v2

    .line 1702
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_16

    .line 1703
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1704
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1706
    :cond_16
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2

    .prologue
    .line 416
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 417
    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .prologue
    .line 1651
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1652
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    .line 1653
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1655
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    .prologue
    .line 193
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 196
    :cond_7
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 197
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4

    .prologue
    .line 1709
    and-int/lit8 v0, p1, 0x70

    .line 1710
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1711
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1712
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1714
    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 544
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method
