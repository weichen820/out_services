.class public final Lcom/airbnb/lottie/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static lottie_layer_name:I

.field public static none:I

.field public static strong:I

.field public static weak:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput v0, Lcom/airbnb/lottie/R$id;->lottie_layer_name:I

    .line 67
    sput v0, Lcom/airbnb/lottie/R$id;->none:I

    .line 68
    sput v0, Lcom/airbnb/lottie/R$id;->strong:I

    .line 69
    sput v0, Lcom/airbnb/lottie/R$id;->weak:I

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
