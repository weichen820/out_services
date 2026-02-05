.class Lcom/airbnb/lottie/CanvasPool;
.super Ljava/lang/Object;
.source "CanvasPool.java"


# instance fields
.field private final availableBitmaps:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bitmapCanvasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/airbnb/lottie/BitmapCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private final canvasBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/lottie/BitmapCanvas;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    .line 18
    return-void
.end method

.method private getKey(IILandroid/graphics/Bitmap$Config;)I
    .registers 6

    .prologue
    const v1, 0xffff

    .line 78
    and-int v0, p1, v1

    shl-int/lit8 v0, v0, 0x11

    and-int/2addr v1, p2

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    return v0
.end method

.method private getKey(Landroid/graphics/Bitmap;)I
    .registers 5

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/lottie/CanvasPool;->getKey(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method


# virtual methods
.method acquire(IILandroid/graphics/Bitmap$Config;)Lcom/airbnb/lottie/BitmapCanvas;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/CanvasPool;->getKey(IILandroid/graphics/Bitmap$Config;)I

    move-result v1

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 26
    if-nez v0, :cond_1b

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v2, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 32
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 33
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    new-instance v0, Lcom/airbnb/lottie/BitmapCanvas;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/BitmapCanvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    iget-object v2, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_34
    invoke-virtual {v0}, Lcom/airbnb/lottie/BitmapCanvas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 42
    return-object v0

    .line 38
    :cond_3c
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 39
    iget-object v1, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/BitmapCanvas;

    goto :goto_34
.end method

.method recycleBitmaps()V
    .registers 6

    .prologue
    .line 56
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3f

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 59
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 61
    iget-object v1, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/BitmapCanvas;

    .line 62
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v4, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 56
    :cond_3b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 68
    :cond_3f
    iget-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->bitmapCanvasMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not all canvases have been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_50
    return-void
.end method

.method release(Lcom/airbnb/lottie/BitmapCanvas;)V
    .registers 8

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/lottie/CanvasPool;->canvasBitmapMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 47
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/CanvasPool;->getKey(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 48
    iget-object v2, p0, Lcom/airbnb/lottie/CanvasPool;->availableBitmaps:Landroid/support/v4/util/LongSparseArray;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 49
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Canvas already released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
