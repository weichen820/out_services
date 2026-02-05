.class Lcom/airbnb/lottie/AnimatablePathValue$ValueFactory;
.super Ljava/lang/Object;
.source "AnimatablePathValue.java"

# interfaces
.implements Lcom/airbnb/lottie/AnimatableValue$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/AnimatablePathValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/AnimatableValue$Factory",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/airbnb/lottie/AnimatableValue$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/AnimatableValue$Factory",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lcom/airbnb/lottie/AnimatableValue$Factory;
    .registers 1

    sget-object v0, Lcom/airbnb/lottie/AnimatablePathValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableValue$Factory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Lcom/airbnb/lottie/AnimatablePathValue$ValueFactory;

    invoke-direct {v0}, Lcom/airbnb/lottie/AnimatablePathValue$ValueFactory;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/AnimatablePathValue$ValueFactory;->INSTANCE:Lcom/airbnb/lottie/AnimatableValue$Factory;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Landroid/graphics/PointF;
    .registers 4

    .prologue
    .line 84
    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1, p2}, Lcom/airbnb/lottie/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/AnimatablePathValue$ValueFactory;->valueFromObject(Ljava/lang/Object;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
