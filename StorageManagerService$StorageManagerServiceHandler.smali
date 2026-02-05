.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 637
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 638
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 642
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_222

    .line 764
    :cond_8
    :goto_8
    return-void

    .line 644
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-wrap8(Lcom/android/server/StorageManagerService;)V

    goto :goto_8

    .line 648
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-wrap7(Lcom/android/server/StorageManagerService;)V

    goto :goto_8

    .line 652
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-wrap1(Lcom/android/server/StorageManagerService;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 653
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 655
    const-wide/16 v2, 0x3e8

    .line 654
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 658
    :cond_32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 659
    if-eqz v0, :cond_97

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-get7(Lcom/android/server/StorageManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 661
    const-string/jumbo v3, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "H_FSTRIM callback timeSinceLast="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-wide/32 v6, 0x240c8400

    cmp-long v3, v4, v6

    if-lez v3, :cond_97

    .line 663
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "CLEAN START"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string/jumbo v3, "sys.flash.e4defrag"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "CLEAN END"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :try_start_7f
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/StorageManagerService;->-set2(Lcom/android/server/StorageManagerService;J)J

    .line 668
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-get6(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->-get7(Lcom/android/server/StorageManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_97} :catch_d5

    .line 675
    :cond_97
    :goto_97
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Running fstrim idle maintenance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_a0
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/StorageManagerService;->-set3(Lcom/android/server/StorageManagerService;J)J

    .line 680
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-get9(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->-get8(Lcom/android/server/StorageManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b8} :catch_e0

    .line 685
    :goto_b8
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->-wrap3(Lcom/android/server/StorageManagerService;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 686
    :goto_c0
    iget-object v2, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/StorageManagerService;->fstrim(I)V

    .line 687
    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "fstrim idle maintenance end"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-eqz v0, :cond_8

    .line 692
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_8

    .line 669
    :catch_d5
    move-exception v3

    .line 670
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Unable to record last clean!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 681
    :catch_e0
    move-exception v3

    .line 682
    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Unable to record last fstrim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    :cond_eb
    move v1, v2

    .line 685
    goto :goto_c0

    .line 697
    :pswitch_ed
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/IStorageShutdownObserver;

    .line 700
    :try_start_f1
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string/jumbo v3, "volume"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "shutdown"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_10a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f1 .. :try_end_10a} :catch_117

    move-result v1

    .line 703
    :goto_10b
    if-eqz v0, :cond_8

    .line 705
    if-eqz v1, :cond_11a

    :goto_10f
    :try_start_10f
    invoke-interface {v0, v2}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_112} :catch_114

    goto/16 :goto_8

    .line 706
    :catch_114
    move-exception v0

    goto/16 :goto_8

    .line 701
    :catch_117
    move-exception v1

    move v1, v2

    goto :goto_10b

    .line 705
    :cond_11a
    const/4 v2, -0x1

    goto :goto_10f

    .line 712
    :pswitch_11c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 713
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->-wrap0(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 714
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring mount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " due to policy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 718
    :cond_14f
    :try_start_14f
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    const-string/jumbo v2, "volume"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "mount"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 719
    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v3, v4

    .line 718
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_17b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_14f .. :try_end_17b} :catch_17d

    goto/16 :goto_8

    .line 720
    :catch_17d
    move-exception v0

    goto/16 :goto_8

    .line 725
    :pswitch_180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 726
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 730
    :pswitch_18f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 731
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    .line 732
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 733
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 732
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-static {v1}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    if-eqz v1, :cond_8

    .line 737
    new-instance v2, Landroid/content/Intent;

    .line 738
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 737
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 739
    const-string/jumbo v1, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 740
    const/high16 v1, 0x5000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 742
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_8

    .line 749
    :pswitch_1fc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 750
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 751
    const-string/jumbo v3, "android.permission.WRITE_MEDIA_STORAGE"

    .line 750
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 755
    :pswitch_210
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 756
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->-wrap6(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 760
    :pswitch_21b
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-wrap13(Lcom/android/server/StorageManagerService;)V

    goto/16 :goto_8

    .line 642
    :pswitch_data_222
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_ed
        :pswitch_15
        :pswitch_11c
        :pswitch_18f
        :pswitch_1fc
        :pswitch_180
        :pswitch_210
        :pswitch_21b
    .end packed-switch
.end method
