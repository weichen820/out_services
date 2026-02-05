.class public final Lcom/airbnb/lottie/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static lottie_autoPlay:I

.field public static lottie_cacheStrategy:I

.field public static lottie_colorFilter:I

.field public static lottie_enableMergePathsForKitKatAndAbove:I

.field public static lottie_fileName:I

.field public static lottie_imageAssetsFolder:I

.field public static lottie_loop:I

.field public static lottie_progress:I

.field public static lottie_scale:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_autoPlay:I

    .line 29
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_cacheStrategy:I

    .line 35
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_colorFilter:I

    .line 40
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_enableMergePathsForKitKatAndAbove:I

    .line 45
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_fileName:I

    .line 50
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_imageAssetsFolder:I

    .line 55
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_loop:I

    .line 59
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_progress:I

    .line 63
    sput v0, Lcom/airbnb/lottie/R$attr;->lottie_scale:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
