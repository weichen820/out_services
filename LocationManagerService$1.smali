.class Lcom/android/server/LocationManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
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
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    .line 2900
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2904
    iget-object v0, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2907
    :try_start_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 2908
    iget-object v4, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 2909
    if-nez v1, :cond_33

    .line 2910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2912
    :cond_33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_37
    move-object v1, v0

    goto :goto_16

    .line 2917
    :cond_39
    if-eqz v1, :cond_54

    .line 2918
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 2919
    iget-object v3, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3, v0}, Lcom/android/server/LocationManagerService;->-wrap7(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_50
    .catchall {:try_start_8 .. :try_end_50} :catchall_51

    goto :goto_3f

    .line 2904
    :catchall_51
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_54
    monitor-exit v2

    .line 2923
    return-void

    :cond_56
    move-object v0, v1

    goto :goto_37
.end method
