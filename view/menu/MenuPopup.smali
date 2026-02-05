.class abstract Landroid/support/v7/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/ShowableListMenu;
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 146
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 147
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 148
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v6, v0

    move v3, v0

    move-object v5, v4

    move v2, v0

    move-object v0, p1

    .line 149
    :goto_13
    if-ge v6, v9, :cond_39

    .line 150
    invoke-interface {p0, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 151
    if-eq v1, v3, :cond_3c

    move v3, v1

    move-object v1, v4

    .line 156
    :goto_1d
    if-nez v0, :cond_24

    .line 157
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 160
    :cond_24
    invoke-interface {p0, v6, v1, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 161
    invoke-virtual {v5, v7, v8}, Landroid/view/View;->measure(II)V

    .line 163
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 164
    if-lt v1, p3, :cond_32

    .line 165
    return p3

    .line 166
    :cond_32
    if-le v1, v2, :cond_3a

    .line 149
    :goto_34
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_13

    .line 171
    :cond_39
    return v2

    :cond_3a
    move v1, v2

    goto :goto_34

    :cond_3c
    move-object v1, v5

    goto :goto_1d
.end method

.method protected static shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    move v1, v0

    .line 204
    :goto_6
    if-ge v1, v2, :cond_19

    .line 205
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 206
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 207
    const/4 v0, 0x1

    .line 212
    :cond_19
    return v0

    .line 204
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;
    .registers 2

    .prologue
    .line 183
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_d

    .line 184
    nop

    nop

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuAdapter;

    return-object v0

    .line 186
    :cond_d
    check-cast p0, Landroid/support/v7/view/menu/MenuAdapter;

    return-object p0
.end method


# virtual methods
.method public abstract addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .registers 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "MenuPopups manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 123
    invoke-static {v0}, Landroid/support/v7/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v1

    .line 127
    iget-object v2, v1, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 128
    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 130
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    .line 127
    :goto_19
    invoke-virtual {v2, v0, p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    .line 131
    return-void

    .line 130
    :cond_1d
    const/4 v1, 0x4

    goto :goto_19
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 71
    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
