.class Lcom/airbnb/lottie/BitmapCanvas;
.super Landroid/graphics/Canvas;
.source "BitmapCanvas.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    iput-object p1, p0, Lcom/airbnb/lottie/BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    .line 13
    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/BitmapCanvas;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
