.class Lcom/airbnb/lottie/ImageAssetBitmapManager;
.super Ljava/lang/Object;
.source "ImageAssetBitmapManager.java"


# instance fields
.field private assetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final bitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private imagesFolder:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ImageAssetDelegate;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x2f

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->bitmaps:Ljava/util/Map;

    .line 28
    iput-object p2, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imagesFolder:Ljava/lang/String;

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imagesFolder:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_39

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imagesFolder:Ljava/lang/String;

    .line 34
    :cond_39
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_51

    .line 35
    const-string/jumbo v0, "LOTTIE"

    const-string/jumbo v1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imageAssets:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->context:Landroid/content/Context;

    .line 38
    return-void

    .line 41
    :cond_51
    nop

    nop

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->context:Landroid/content/Context;

    .line 42
    iput-object p4, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imageAssets:Ljava/util/Map;

    .line 43
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/ImageAssetBitmapManager;->setAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 44
    return-void
.end method


# virtual methods
.method bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 59
    if-nez v0, :cond_7e

    .line 60
    iget-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 61
    if-nez v0, :cond_1a

    .line 62
    return-object v6

    .line 64
    :cond_1a
    iget-object v1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->assetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    if-eqz v1, :cond_2c

    .line 65
    iget-object v1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->assetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    invoke-interface {v1, v0}, Lcom/airbnb/lottie/ImageAssetDelegate;->fetchBitmap(Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_2b

    .line 67
    iget-object v1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2b
    return-object v0

    .line 74
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imagesFolder:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3d} :catch_3d

    .line 79
    :catch_3d
    move-exception v0

    .line 80
    const-string/jumbo v1, "LOTTIE"

    const-string/jumbo v2, "Unable to open asset."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return-object v6

    .line 78
    :cond_48
    :try_start_48
    iget-object v1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_68} :catch_3d

    move-result-object v0

    .line 83
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 85
    const/16 v4, 0xa0

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 86
    invoke-static {v0, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_7e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 90
    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-lez v1, :cond_af

    .line 91
    const-string/jumbo v1, "Lottie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "load bitmap too slow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_af
    return-object v0
.end method

.method hasSameContext(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 106
    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->context:Landroid/content/Context;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    .line 107
    :cond_8
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method recycleBitmaps()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 103
    :cond_23
    return-void
.end method

.method setAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .registers 2
    .param p1    # Lcom/airbnb/lottie/ImageAssetDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->assetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 48
    return-void
.end method

.method updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/ImageAssetBitmapManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
