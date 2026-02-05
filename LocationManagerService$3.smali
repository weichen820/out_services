.class Lcom/android/server/LocationManagerService$3;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    .line 311
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 314
    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 315
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    goto :goto_15

    .line 313
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    .line 317
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-wrap4(Lcom/android/server/LocationManagerService;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    monitor-exit v1

    .line 319
    return-void
.end method
