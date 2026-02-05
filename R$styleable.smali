.class public final Lcom/airbnb/lottie/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LottieAnimationView:[I

.field public static LottieAnimationView_lottie_autoPlay:I

.field public static LottieAnimationView_lottie_cacheStrategy:I

.field public static LottieAnimationView_lottie_colorFilter:I

.field public static LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

.field public static LottieAnimationView_lottie_fileName:I

.field public static LottieAnimationView_lottie_imageAssetsFolder:I

.field public static LottieAnimationView_lottie_loop:I

.field public static LottieAnimationView_lottie_progress:I

.field public static LottieAnimationView_lottie_scale:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    .line 131
    const/4 v0, 0x1

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheStrategy:I

    .line 142
    const/4 v0, 0x2

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    .line 152
    const/4 v0, 0x3

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    .line 162
    const/4 v0, 0x4

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    .line 172
    const/4 v0, 0x5

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    .line 182
    const/4 v0, 0x6

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    .line 191
    const/4 v0, 0x7

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    .line 200
    const/16 v0, 0x8

    sput v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    .line 71
    return-void

    .line 99
    :array_26
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
