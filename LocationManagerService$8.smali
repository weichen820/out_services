.class Lcom/android/server/LocationManagerService$8;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    .line 386
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 390
    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-wrap10(Lcom/android/server/LocationManagerService;)V

    .line 391
    iget-object v0, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-wrap11(Lcom/android/server/LocationManagerService;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 393
    return-void

    .line 389
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method
