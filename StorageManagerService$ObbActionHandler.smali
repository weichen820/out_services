.class Lcom/android/server/StorageManagerService$ObbActionHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/StorageManagerService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 4

    .prologue
    .line 3516
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 3517
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3514
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    .line 3518
    return-void
.end method

.method private connectToService()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 3655
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/StorageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3656
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->-get4(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    move-result-object v2

    .line 3657
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 3656
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3658
    iput-boolean v4, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3659
    return v4

    .line 3661
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private disconnectService()V
    .registers 3

    .prologue
    .line 3665
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-set0(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    .line 3667
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get4(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3668
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3522
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_162

    .line 3649
    :cond_7
    :goto_7
    return-void

    .line 3524
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3532
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-nez v1, :cond_23

    .line 3535
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->connectToService()Z

    move-result v1

    if-nez v1, :cond_23

    .line 3536
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "Failed to bind to media container service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService$ObbAction;->handleError()V

    .line 3538
    return-void

    .line 3542
    :cond_23
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3548
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_36

    .line 3549
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->-set0(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3551
    :cond_36
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get1(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    if-nez v0, :cond_63

    .line 3553
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Cannot bind to media container service"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3556
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService$ObbAction;->handleError()V

    goto :goto_4d

    .line 3558
    :cond_5d
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_7

    .line 3559
    :cond_63
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 3560
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3561
    if-eqz v0, :cond_7

    .line 3562
    invoke-virtual {v0, p0}, Lcom/android/server/StorageManagerService$ObbAction;->execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V

    goto :goto_7

    .line 3566
    :cond_79
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Empty queue"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3573
    :pswitch_83
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 3574
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-eqz v0, :cond_92

    .line 3575
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->disconnectService()V

    .line 3577
    :cond_92
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->connectToService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3578
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Failed to bind to media container service"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    .line 3581
    invoke-virtual {v0}, Lcom/android/server/StorageManagerService$ObbAction;->handleError()V

    goto :goto_a7

    .line 3583
    :cond_b7
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_7

    .line 3593
    :pswitch_be
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_cb

    .line 3594
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3596
    :cond_cb
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_dc

    .line 3597
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-eqz v0, :cond_7

    .line 3598
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->disconnectService()V

    goto/16 :goto_7

    .line 3604
    :cond_dc
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 3609
    :pswitch_e7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3614
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get11(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 3615
    :try_start_f2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3617
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get12(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3618
    :cond_105
    :goto_105
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_120

    .line 3619
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 3626
    iget-object v5, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_105

    .line 3627
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11c
    .catchall {:try_start_f2 .. :try_end_11c} :catchall_11d

    goto :goto_105

    .line 3614
    :catchall_11d
    move-exception v0

    monitor-exit v2

    throw v0

    .line 3631
    :cond_120
    :try_start_120
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_124
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbState;

    .line 3635
    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3, v0}, Lcom/android/server/StorageManagerService;->-wrap12(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_135
    .catchall {:try_start_120 .. :try_end_135} :catchall_11d

    .line 3638
    :try_start_135
    iget-object v3, v0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v4, v0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    .line 3639
    const/4 v6, 0x2

    .line 3638
    invoke-interface {v3, v4, v5, v6}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_13f} :catch_140
    .catchall {:try_start_135 .. :try_end_13f} :catchall_11d

    goto :goto_124

    .line 3640
    :catch_140
    move-exception v3

    .line 3641
    :try_start_141
    const-string/jumbo v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3642
    iget-object v0, v0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 3641
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catchall {:try_start_141 .. :try_end_15d} :catchall_11d

    goto :goto_124

    :cond_15e
    monitor-exit v2

    goto/16 :goto_7

    .line 3522
    nop

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_8
        :pswitch_29
        :pswitch_be
        :pswitch_83
        :pswitch_e7
    .end packed-switch
.end method
