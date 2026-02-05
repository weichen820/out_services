.class Lcom/android/server/ServiceWatcher$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    .line 324
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 339
    :try_start_7
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 340
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit v1

    .line 342
    return-void

    .line 338
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 355
    :try_start_7
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 356
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    monitor-exit v1

    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 354
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 347
    :try_start_7
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 348
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit v1

    .line 350
    return-void

    .line 346
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 331
    :try_start_7
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 332
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit v1

    .line 334
    return-void

    .line 330
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
