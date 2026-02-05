.class Lcom/android/server/NetworkManagementService$2;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$2;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1525
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$2;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    iget v2, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1527
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 1526
    const/4 v3, 0x1

    .line 1527
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 1525
    invoke-static/range {v1 .. v7}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 1528
    return-void
.end method
