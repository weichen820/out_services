.class Lcom/android/server/NetworkManagementService$IdleTimerParams;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleTimerParams"
.end annotation


# instance fields
.field public networkCount:I

.field public final timeout:I

.field public final type:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p1, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    .line 295
    iput p2, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 296
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 297
    return-void
.end method
