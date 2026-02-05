.class Lcom/android/server/PinnerService$PinnedFile;
.super Ljava/lang/Object;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinnedFile"
.end annotation


# instance fields
.field mAddress:J

.field mFilename:Ljava/lang/String;

.field mLength:J


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .registers 7

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-wide p1, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    .line 394
    iput-wide p3, p0, Lcom/android/server/PinnerService$PinnedFile;->mLength:J

    .line 395
    iput-object p5, p0, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    .line 396
    return-void
.end method
