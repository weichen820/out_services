.class public final Landroid/support/v7/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/support/v4/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mNeedToApplyIconTint:Z

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mShowAsAction:I

.field private mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x1000

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 66
    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 76
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 89
    iput-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 90
    iput-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 91
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 92
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 93
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 95
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 103
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 108
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 152
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 153
    iput p3, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    .line 154
    iput p2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mGroup:I

    .line 155
    iput p4, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 156
    iput p5, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    .line 157
    iput-object p6, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 158
    iput p7, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 159
    return-void
.end method

.method private applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 556
    if-eqz p1, :cond_2b

    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_2b

    .line 557
    :cond_e
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 560
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    if-eqz v0, :cond_1f

    .line 561
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 564
    :cond_1f
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    if-eqz v0, :cond_28

    .line 565
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 568
    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 571
    :cond_2b
    return-object p1
.end method


# virtual methods
.method public actionFormatChanged()V
    .registers 2

    .prologue
    .line 677
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 678
    return-void
.end method

.method public collapseActionView()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 818
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    .line 819
    return v1

    .line 821
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 823
    const/4 v0, 0x1

    return v0

    .line 826
    :cond_e
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_1a

    .line 827
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    .line 826
    if-eqz v0, :cond_21

    .line 828
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0

    .line 831
    :cond_21
    return v1
.end method

.method public expandActionView()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 804
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v0

    if-nez v0, :cond_8

    .line 805
    return v1

    .line 808
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_14

    .line 809
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    .line 808
    if-eqz v0, :cond_1b

    .line 810
    :cond_14
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0

    .line 813
    :cond_1b
    return v1
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    .prologue
    .line 768
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 769
    const-string/jumbo v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    .line 768
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 751
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    .line 752
    :cond_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_17

    .line 753
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 754
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0

    .line 756
    :cond_17
    return-object v1
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 256
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 871
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 487
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 490
    :cond_d
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_26

    .line 491
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    invoke-static {v0, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 492
    iput v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 493
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 494
    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->applyIconTintIfNecessary(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 497
    :cond_26
    return-object v1
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 222
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 673
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 293
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_a
    return v0

    :cond_b
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_a
.end method

.method getShortcutLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    .line 366
    if-nez v0, :cond_a

    .line 367
    const-string/jumbo v0, ""

    return-object v0

    .line 370
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    sparse-switch v0, :sswitch_data_2e

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :goto_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :sswitch_1c
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 378
    :sswitch_22
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 382
    :sswitch_28
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 371
    :sswitch_data_2e
    .sparse-switch
        0x8 -> :sswitch_22
        0xa -> :sswitch_1c
        0x20 -> :sswitch_28
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 459
    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1c

    if-eqz v0, :cond_1c

    instance-of v1, v0, Ljava/lang/String;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    .line 463
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 457
    :cond_19
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_6

    .line 466
    :cond_1c
    return-object v0
.end method

.method getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 432
    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/support/v7/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 433
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 432
    :goto_c
    return-object v0

    .line 434
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 885
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasCollapsibleActionView()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 835
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1d

    .line 836
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_17

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_17

    .line 837
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 839
    :cond_17
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    .line 841
    :cond_1d
    return v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public invoke()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    return v3

    .line 171
    :cond_e
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 172
    return v3

    .line 175
    :cond_19
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_23

    .line 176
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 177
    return v3

    .line 180
    :cond_23
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3d

    .line 182
    :try_start_27
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27 .. :try_end_32} :catch_33

    .line 183
    return v3

    .line 184
    :catch_33
    move-exception v0

    .line 185
    const-string/jumbo v1, "MenuItemImpl"

    const-string/jumbo v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_3d
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 190
    return v3

    .line 193
    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method public isActionButton()Z
    .registers 3

    .prologue
    .line 688
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 851
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 576
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    .line 600
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 198
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isExclusiveCheckable()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 595
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isVisible()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 626
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 627
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_19

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v0

    :cond_19
    return v0

    .line 629
    :cond_1a
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public requestsActionButton()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 692
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public requiresActionButton()Z
    .registers 3

    .prologue
    .line 696
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 762
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 763
    const-string/jumbo v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    .line 762
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 5

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 743
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 744
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 745
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 731
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 732
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 733
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_17

    .line 734
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 736
    :cond_17
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 737
    return-object p0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setActionViewExpanded(Z)V
    .registers 4

    .prologue
    .line 845
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 846
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 847
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 261
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_5

    .line 262
    return-object p0

    .line 265
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 267
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 269
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 5

    .prologue
    .line 274
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_9

    .line 275
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    if-ne v0, p2, :cond_9

    .line 276
    return-object p0

    .line 279
    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 280
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 282
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 283
    return-object p0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 250
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 251
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 581
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 582
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 583
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v2, v0, :cond_16

    .line 584
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 587
    :cond_16
    return-object p0

    :cond_17
    move v0, v1

    .line 582
    goto :goto_a
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 605
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 608
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 613
    :goto_b
    return-object p0

    .line 610
    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_b
.end method

.method setCheckedInt(Z)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 617
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 618
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_17

    const/4 v0, 0x2

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 619
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v2, v0, :cond_16

    .line 620
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 622
    :cond_16
    return-void

    :cond_17
    move v0, v1

    .line 618
    goto :goto_a
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    .prologue
    .line 862
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 864
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 866
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 203
    if-eqz p1, :cond_f

    .line 204
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 209
    :goto_8
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 211
    return-object p0

    .line 206
    :cond_f
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_8
.end method

.method public setExclusiveCheckable(Z)V
    .registers 4

    .prologue
    .line 591
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 592
    return-void

    .line 591
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 513
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 517
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 519
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 502
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconResId:I

    .line 503
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 505
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 507
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 525
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 526
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTint:Z

    .line 527
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 529
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 531
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 541
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 542
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mHasIconTintMode:Z

    .line 543
    iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mNeedToApplyIconTint:Z

    .line 545
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 547
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 241
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 242
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 3

    .prologue
    .line 700
    if-eqz p1, :cond_9

    .line 701
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 705
    :goto_8
    return-void

    .line 703
    :cond_9
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_8
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .prologue
    .line 668
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 669
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 303
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_5

    .line 304
    return-object p0

    .line 307
    :cond_5
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 309
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 311
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 5

    .prologue
    .line 316
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_9

    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    if-ne v0, p2, :cond_9

    .line 317
    return-object p0

    .line 320
    :cond_9
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 321
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 323
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 325
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 856
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 857
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 658
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 659
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 5

    .prologue
    .line 330
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 331
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 333
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 335
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 7

    .prologue
    .line 341
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 342
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 343
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 344
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 346
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 348
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    .prologue
    .line 713
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_16

    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :pswitch_e
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 726
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 727
    return-void

    .line 713
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    .prologue
    .line 798
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 799
    return-object p0
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsActionFlags(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .registers 3

    .prologue
    .line 414
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 417
    return-void
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 779
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_a

    .line 780
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->reset()V

    .line 782
    :cond_a
    iput-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 783
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 784
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 785
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_22

    .line 786
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mActionProvider:Landroid/support/v4/view/ActionProvider;

    new-instance v1, Landroid/support/v7/view/menu/MenuItemImpl$1;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/MenuItemImpl$1;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 793
    :cond_22
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 439
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 441
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 443
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_11

    .line 444
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mSubMenu:Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 447
    :cond_11
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    .prologue
    .line 472
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 475
    if-nez p1, :cond_6

    .line 476
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 479
    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 481
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    .prologue
    .line 876
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTooltipText:Ljava/lang/CharSequence;

    .line 878
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 880
    return-object p0
.end method

.method public bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 3

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 653
    :cond_b
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 641
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 642
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_13

    move v0, v1

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    .line 643
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mFlags:I

    if-eq v2, v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    .line 642
    :cond_13
    const/16 v0, 0x8

    goto :goto_a
.end method

.method public shouldShowIcon()Z
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public showsTextAsAction()Z
    .registers 3

    .prologue
    .line 708
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 664
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method
