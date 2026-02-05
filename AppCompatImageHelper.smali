.class public Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mImageTint:Landroid/support/v7/widget/TintInfo;

.field private mInternalImageTint:Landroid/support/v7/widget/TintInfo;

.field private mTmpInfo:Landroid/support/v7/widget/TintInfo;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 46
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 195
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_c

    .line 196
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    .line 198
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 201
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/widget/ImageViewCompat;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_1d

    .line 203
    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 204
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 206
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/widget/ImageViewCompat;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_29

    .line 208
    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 209
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 212
    :cond_29
    iget-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v1, :cond_31

    iget-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_3b

    .line 213
    :cond_31
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 214
    return v2

    .line 217
    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .registers 5

    .prologue
    const/16 v3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    if-le v2, v3, :cond_f

    .line 177
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    .line 178
    :cond_f
    if-ne v2, v3, :cond_12

    .line 182
    return v0

    .line 185
    :cond_12
    return v1
.end method


# virtual methods
.method applySupportImageTint()V
    .registers 4

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_b

    .line 138
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_b
    if-eqz v0, :cond_29

    .line 142
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 143
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatImageHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 142
    if-eqz v1, :cond_1a

    .line 146
    return-void

    .line 149
    :cond_1a
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_2a

    .line 150
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    .line 151
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 150
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 157
    :cond_29
    :goto_29
    return-void

    .line 152
    :cond_2a
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_29

    .line 153
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    .line 154
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 153
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_29
.end method

.method getSupportImageTintList()Landroid/content/res/ColorStateList;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_9
    return-object v0
.end method

.method getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_9
    return-object v0
.end method

.method hasOverlappingRendering()Z
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_12

    .line 100
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 99
    if-eqz v0, :cond_12

    .line 103
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v4, -0x1

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v2, 0x0

    .line 49
    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 52
    :try_start_e
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    if-nez v0, :cond_30

    .line 56
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 57
    if-eq v2, v4, :cond_30

    .line 58
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_30

    .line 60
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_30
    if-eqz v0, :cond_35

    .line 66
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_35
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 71
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 70
    invoke-static {v0, v2}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 73
    :cond_48
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 76
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 75
    invoke-static {v2, v3}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 74
    invoke-static {v0, v2}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_65

    .line 79
    :cond_61
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 81
    return-void

    .line 78
    :catchall_65
    move-exception v0

    .line 79
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 78
    throw v0
.end method

.method public setImageResource(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_1b

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_12

    .line 87
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :goto_17
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 95
    return-void

    .line 91
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17
.end method

.method setInternalImageTint(Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 160
    if-eqz p1, :cond_1b

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_e

    .line 162
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    .line 164
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 169
    :goto_17
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 170
    return-void

    .line 167
    :cond_1b
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    goto :goto_17
.end method

.method setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 110
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    .line 112
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 115
    return-void
.end method

.method setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 123
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    .line 125
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 129
    return-void
.end method
