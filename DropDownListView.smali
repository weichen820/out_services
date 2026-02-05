.class Landroid/support/v7/widget/DropDownListView;
.super Landroid/support/v7/widget/ListViewCompat;
.source "DropDownListView.java"


# instance fields
.field private mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 85
    sget v0, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-boolean p2, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 88
    return-void
.end method

.method private clearPressedItem()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    iput-boolean v2, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 174
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->drawableStateChanged()V

    .line 178
    iget v0, p0, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1a

    .line 180
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 183
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_25

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 185
    iput-object v3, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 187
    :cond_25
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 157
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 158
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 159
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .registers 11

    .prologue
    const/16 v5, 0x15

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 190
    iput-boolean v3, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_d

    .line 194
    invoke-virtual {p0, p3, p4}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 196
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 197
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 201
    :cond_16
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 205
    iget v0, p0, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    .line 206
    iget v0, p0, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_36

    if-eq v0, p1, :cond_36

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 208
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 211
    :cond_36
    iput p2, p0, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p3, v0

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p4, v1

    .line 216
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_4d

    .line 217
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 219
    :cond_4d
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_56

    .line 220
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 224
    :cond_56
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 229
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/ListViewCompat;->setSelectorEnabled(Z)V

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 234
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .registers 2

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->hasFocus()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 254
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->hasWindowFocus()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 264
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->isFocused()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public isInTouchMode()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_d

    :cond_8
    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->isInTouchMode()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 101
    packed-switch v3, :pswitch_data_6e

    move v0, v1

    move v3, v2

    .line 134
    :goto_b
    if-eqz v3, :cond_f

    if-eqz v0, :cond_12

    .line 135
    :cond_f
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->clearPressedItem()V

    .line 139
    :cond_12
    if-eqz v3, :cond_62

    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v0, :cond_1f

    .line 141
    new-instance v0, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 143
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 149
    :cond_29
    :goto_29
    return v3

    :pswitch_2a
    move v0, v1

    move v3, v1

    .line 104
    goto :goto_b

    :pswitch_2d
    move v0, v1

    .line 109
    :goto_2e
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 110
    if-gez v4, :cond_37

    move v0, v1

    move v3, v1

    .line 112
    goto :goto_b

    .line 115
    :cond_37
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 116
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 117
    invoke-virtual {p0, v5, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v6

    .line 118
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4b

    move v3, v0

    move v0, v2

    .line 120
    goto :goto_b

    .line 123
    :cond_4b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    int-to-float v5, v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v6, v5, v4}, Landroid/support/v7/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 127
    if-ne v3, v2, :cond_5f

    .line 128
    invoke-direct {p0, v0, v6}, Landroid/support/v7/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    :cond_5f
    move v0, v1

    move v3, v2

    .line 130
    goto :goto_b

    .line 145
    :cond_62
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v0, :cond_29

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    goto :goto_29

    :pswitch_6c
    move v0, v2

    goto :goto_2e

    .line 101
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_6c
        :pswitch_2a
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .registers 2

    .prologue
    .line 169
    iput-boolean p1, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    .line 170
    return-void
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method
