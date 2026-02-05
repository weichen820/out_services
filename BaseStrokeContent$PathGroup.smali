.class final Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/BaseStrokeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathGroup"
.end annotation


# instance fields
.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final trimPath:Lcom/airbnb/lottie/TrimPathContent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/TrimPathContent;
    .registers 2

    iget-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    return-object v0
.end method

.method private constructor <init>(Lcom/airbnb/lottie/TrimPathContent;)V
    .registers 3
    .param p1    # Lcom/airbnb/lottie/TrimPathContent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 260
    iput-object p1, p0, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;->trimPath:Lcom/airbnb/lottie/TrimPathContent;

    .line 261
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/TrimPathContent;Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/TrimPathContent;)V

    return-void
.end method
