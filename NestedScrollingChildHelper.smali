.class public Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 57
    return-void
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .registers 3

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_c

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 384
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object v0

    .line 386
    :pswitch_8
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object v0

    .line 382
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .registers 3

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_a

    .line 400
    :goto_3
    return-void

    .line 394
    :pswitch_4
    iput-object p2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    goto :goto_3

    .line 397
    :pswitch_7
    iput-object p2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_3

    .line 392
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 327
    invoke-direct {p0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_14

    .line 329
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0

    .line 333
    :cond_14
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 347
    invoke-direct {p0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_14

    .line 349
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0

    .line 353
    :cond_14
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11
    .param p3    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 16
    .param p3    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 278
    invoke-direct {p0, p5}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 279
    if-nez v0, :cond_f

    .line 280
    return v7

    .line 283
    :cond_f
    if-nez p1, :cond_13

    if-eqz p2, :cond_56

    .line 286
    :cond_13
    if-eqz p4, :cond_5f

    .line 287
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 288
    aget v2, p4, v7

    .line 289
    aget v1, p4, v6

    move v8, v1

    move v9, v2

    .line 292
    :goto_20
    if-nez p3, :cond_5d

    .line 293
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v1, :cond_2b

    .line 294
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 296
    :cond_2b
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 298
    :goto_2d
    aput v7, v4, v7

    .line 299
    aput v7, v4, v6

    .line 300
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 302
    if-eqz p4, :cond_4a

    .line 303
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 304
    aget v0, p4, v7

    sub-int/2addr v0, v9

    aput v0, p4, v7

    .line 305
    aget v0, p4, v6

    sub-int/2addr v0, v8

    aput v0, p4, v6

    .line 307
    :cond_4a
    aget v0, v4, v7

    if-nez v0, :cond_52

    aget v0, v4, v6

    if-eqz v0, :cond_54

    :cond_52
    move v0, v6

    :goto_53
    return v0

    :cond_54
    move v0, v7

    goto :goto_53

    .line 308
    :cond_56
    if-eqz p4, :cond_5c

    .line 309
    aput v7, p4, v7

    .line 310
    aput v7, p4, v6

    .line 313
    :cond_5c
    return v7

    :cond_5d
    move-object v4, p3

    goto :goto_2d

    :cond_5f
    move v8, v7

    move v9, v7

    goto :goto_20
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 13
    .param p5    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 204
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 203
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 16
    .param p5    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 220
    invoke-direct {p0, p6}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 221
    if-nez v0, :cond_e

    .line 222
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_e
    if-nez p1, :cond_12

    if-eqz p2, :cond_42

    .line 226
    :cond_12
    const/4 v2, 0x0

    .line 227
    const/4 v1, 0x0

    .line 228
    if-eqz p5, :cond_52

    .line 229
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    const/4 v1, 0x0

    aget v2, p5, v1

    .line 231
    const/4 v1, 0x1

    aget v1, p5, v1

    move v7, v1

    move v8, v2

    .line 234
    :goto_23
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 237
    if-eqz p5, :cond_40

    .line 238
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 239
    const/4 v0, 0x0

    aget v1, p5, v0

    sub-int/2addr v1, v8

    aput v1, p5, v0

    .line 240
    const/4 v0, 0x1

    aget v1, p5, v0

    sub-int/2addr v1, v7

    aput v1, p5, v0

    .line 242
    :cond_40
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_42
    if-nez p3, :cond_12

    if-nez p4, :cond_12

    .line 243
    if-eqz p5, :cond_50

    .line 245
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, p5, v1

    .line 246
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p5, v1

    .line 249
    :cond_50
    const/4 v0, 0x0

    return v0

    :cond_52
    move v7, v1

    move v8, v2

    goto :goto_23
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 379
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 72
    :cond_9
    iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 73
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 144
    invoke-virtual {p0, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    return v3

    .line 148
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 149
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 150
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 151
    :goto_16
    if-eqz v1, :cond_35

    .line 152
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 153
    invoke-direct {p0, p2, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 154
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 155
    return v3

    .line 157
    :cond_29
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_30

    move-object v0, v1

    .line 158
    check-cast v0, Landroid/view/View;

    .line 160
    :cond_30
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_16

    .line 163
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 175
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_f

    .line 187
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 188
    invoke-direct {p0, p1, v2}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 190
    :cond_f
    return-void
.end method
