.class Lcom/airbnb/lottie/MergePaths$Factory;
.super Ljava/lang/Object;
.source "MergePaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/MergePaths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/MergePaths;
    .registers 5

    .prologue
    .line 48
    new-instance v0, Lcom/airbnb/lottie/MergePaths;

    const-string/jumbo v1, "nm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mm"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/MergePaths$MergePathsMode;->-wrap0(I)Lcom/airbnb/lottie/MergePaths$MergePathsMode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/lottie/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/MergePaths$MergePathsMode;Lcom/airbnb/lottie/MergePaths;)V

    return-object v0
.end method
