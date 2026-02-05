.class Lcom/android/server/AppOpsService$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v1

    .line 111
    :try_start_3
    iget-object v0, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 112
    iget-object v0, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 113
    new-instance v2, Lcom/android/server/AppOpsService$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/AppOpsService$1$1;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 119
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {v2, v3, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    .line 121
    return-void

    .line 110
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
