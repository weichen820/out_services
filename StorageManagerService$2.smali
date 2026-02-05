.class Lcom/android/server/StorageManagerService$2;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->decryptStorage(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    .line 2675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2678
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get3(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v0

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "restart"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_15
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_15} :catch_16

    .line 2682
    :goto_15
    return-void

    .line 2679
    :catch_16
    move-exception v0

    .line 2680
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "problem executing in background"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method
