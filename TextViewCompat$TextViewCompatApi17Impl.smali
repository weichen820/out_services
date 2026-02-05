.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi17Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;
.source "TextViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi17Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_18

    .line 268
    :goto_9
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 269
    if-eqz v0, :cond_17

    .line 271
    aget-object v0, v2, v4

    .line 272
    aget-object v3, v2, v1

    .line 273
    aput-object v0, v2, v1

    .line 274
    aput-object v3, v2, v4

    .line 276
    :cond_17
    return-object v2

    :cond_18
    move v0, v1

    .line 267
    goto :goto_9
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_11

    move v1, v0

    .line 244
    :goto_8
    if-eqz v1, :cond_14

    move-object v0, p4

    :goto_b
    if-eqz v1, :cond_16

    :goto_d
    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 245
    return-void

    .line 243
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    :cond_14
    move-object v0, p2

    .line 244
    goto :goto_b

    :cond_16
    move-object p2, p4

    goto :goto_d
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 8
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_11

    move v1, v0

    .line 261
    :goto_8
    if-eqz v1, :cond_14

    move v0, p4

    .line 262
    :goto_b
    if-eqz v1, :cond_16

    .line 261
    :goto_d
    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 263
    return-void

    .line 260
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    :cond_14
    move v0, p2

    .line 261
    goto :goto_b

    :cond_16
    move p2, p4

    .line 262
    goto :goto_d
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_11

    move v1, v0

    .line 252
    :goto_8
    if-eqz v1, :cond_14

    move-object v0, p4

    .line 253
    :goto_b
    if-eqz v1, :cond_16

    .line 252
    :goto_d
    invoke-virtual {p1, v0, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 254
    return-void

    .line 251
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    :cond_14
    move-object v0, p2

    .line 252
    goto :goto_b

    :cond_16
    move-object p2, p4

    .line 253
    goto :goto_d
.end method
