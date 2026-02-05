.class abstract Lcom/android/server/StorageManagerService$ObbAction;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field mObbState:Lcom/android/server/StorageManagerService$ObbState;

.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 3

    .prologue
    .line 3677
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3678
    iput-object p2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    .line 3679
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 3685
    :try_start_1
    iget v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mRetries:I

    .line 3686
    iget v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mRetries:I

    if-le v0, v2, :cond_22

    .line 3687
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3689
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleError()V

    .line 3706
    :goto_21
    return-void

    .line 3691
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleExecute()V

    .line 3694
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_3c

    goto :goto_21

    .line 3696
    :catch_30
    move-exception v0

    .line 3699
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_21

    .line 3700
    :catch_3c
    move-exception v0

    .line 3703
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleError()V

    .line 3704
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_21
.end method

.method protected getObbInfo()Landroid/content/res/ObbInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3714
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get1(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_2f

    move-result-object v0

    .line 3720
    :goto_f
    if-nez v0, :cond_4f

    .line 3721
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t read OBB file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v2, v2, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3715
    :catch_2f
    move-exception v1

    .line 3716
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t call DefaultContainerService to fetch OBB info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3717
    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v3, v3, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 3716
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3723
    :cond_4f
    return-object v0
.end method

.method abstract handleError()V
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendNewStatusOrIgnore(I)V
    .registers 5

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v0, :cond_b

    .line 3728
    :cond_a
    return-void

    .line 3732
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v1, v1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v2, v2, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v0, v1, v2, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    .line 3736
    :goto_1a
    return-void

    .line 3733
    :catch_1b
    move-exception v0

    .line 3734
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "StorageEventListener went away while calling onObbStateChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
