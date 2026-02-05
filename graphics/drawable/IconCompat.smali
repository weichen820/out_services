.class public Landroid/support/v4/graphics/drawable/IconCompat;
.super Ljava/lang/Object;
.source "IconCompat.java"


# static fields
.field private static final ADAPTIVE_ICON_INSET_FACTOR:F = 0.25f

.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final BLUR_FACTOR:F = 0.010416667f

.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final ICON_DIAMETER_FACTOR:F = 0.9166667f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d

.field private static final KEY_SHADOW_OFFSET_FACTOR:F = 0.020833334f

.field private static final TYPE_ADAPTIVE_BITMAP:I = 0x5

.field private static final TYPE_BITMAP:I = 0x1

.field private static final TYPE_DATA:I = 0x3

.field private static final TYPE_RESOURCE:I = 0x2

.field private static final TYPE_URI:I = 0x4


# instance fields
.field private mInt1:I

.field private mInt2:I

.field private mObj1:Ljava/lang/Object;

.field private final mType:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    .line 174
    return-void
.end method

.method static createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 232
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 233
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 235
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 237
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 239
    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 240
    const v5, 0x3f6aaaab

    mul-float/2addr v5, v4

    .line 243
    int-to-float v6, v0

    const v7, 0x3c2aaaab

    mul-float/2addr v6, v7

    .line 244
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    int-to-float v7, v0

    const v8, 0x3caaaaab

    mul-float/2addr v7, v8

    const/high16 v8, 0x3d000000    # 0.03125f

    invoke-virtual {v3, v6, v9, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 246
    invoke-virtual {v2, v4, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    const/high16 v7, 0x1e000000

    invoke-virtual {v3, v6, v9, v9, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 250
    invoke-virtual {v2, v4, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 251
    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 254
    const/high16 v6, -0x1000000

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 256
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 255
    invoke-direct {v6, p0, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 257
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 258
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v0

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 259
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v0, v9, v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 258
    invoke-virtual {v7, v8, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 260
    invoke-virtual {v6, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 261
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 262
    invoke-virtual {v2, v4, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    return-object v1
.end method

.method public static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 3

    .prologue
    .line 116
    if-nez p0, :cond_b

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_b
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 120
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 121
    return-object v0
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 3

    .prologue
    .line 101
    if-nez p0, :cond_b

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_b
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 105
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 3

    .prologue
    .line 166
    if-nez p0, :cond_b

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uri must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_b
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithContentUri(Ljava/lang/String;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 3

    .prologue
    .line 151
    if-nez p0, :cond_b

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uri must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_b
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 155
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 156
    return-object v0
.end method

.method public static createWithData([BII)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 5

    .prologue
    .line 134
    if-nez p0, :cond_b

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Data must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_b
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 138
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 139
    iput p1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    .line 140
    iput p2, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    .line 141
    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 86
    if-nez p0, :cond_b

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_b
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>(I)V

    .line 90
    iput p1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    .line 91
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 92
    return-object v0
.end method


# virtual methods
.method public addToShortcutIntent(Landroid/content/Intent;)V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 208
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    packed-switch v0, :pswitch_data_3a

    .line 221
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Icon type not supported for intent shortcuts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_e
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON"

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    :goto_18
    return-void

    .line 213
    :pswitch_19
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON"

    .line 214
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_18

    .line 217
    :pswitch_28
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 218
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 217
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_18

    .line 208
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_28
        :pswitch_5
        :pswitch_5
        :pswitch_19
    .end packed-switch
.end method

.method public toIcon()Landroid/graphics/drawable/Icon;
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 183
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mType:I

    packed-switch v0, :pswitch_data_54

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_e
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_26

    .line 188
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 190
    :cond_26
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_33
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 195
    :pswitch_3e
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt1:I

    iget v2, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mInt2:I

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 197
    :pswitch_4b
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 183
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_e
        :pswitch_33
        :pswitch_3e
        :pswitch_4b
        :pswitch_17
    .end packed-switch
.end method
