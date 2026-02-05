.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    .line 392
    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    .line 1
    return-void
.end method

.method private enforcePersistentDataBlockAccess()V
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get1(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 572
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;I)V

    .line 574
    :cond_18
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 547
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 551
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_2b

    .line 558
    :try_start_19
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_3a
    .catchall {:try_start_19 .. :try_end_20} :catchall_49

    .line 559
    :try_start_20
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_37

    move-result v0

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_3a
    .catchall {:try_start_26 .. :try_end_27} :catchall_49

    .line 565
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 559
    return v0

    .line 552
    :catch_2b
    move-exception v0

    .line 553
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "partition not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return v4

    .line 558
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v2

    throw v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3a} :catch_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_49

    .line 561
    :catch_3a
    move-exception v0

    .line 562
    :try_start_3b
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "error reading data block size"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_49

    .line 565
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 563
    return v4

    .line 564
    :catchall_49
    move-exception v0

    .line 565
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 564
    throw v0
.end method

.method public getFlashLockState()I
    .registers 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;)V

    .line 534
    const-string/jumbo v0, "ro.boot.flash.locked"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 537
    const/4 v0, 0x1

    return v0

    .line 535
    :cond_17
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 539
    const/4 v0, 0x0

    return v0

    .line 541
    :cond_22
    const/4 v0, -0x1

    return v0
.end method

.method public getMaximumDataBlockSize()J
    .registers 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;I)V

    .line 579
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap5(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOemUnlockEnabled()Z
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;)V

    .line 528
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap1(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public hasFrpCredentialHandle()Z
    .registers 2

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 585
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public read()[B
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;I)V

    .line 446
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap2(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 447
    new-array v0, v2, [B

    return-object v0

    .line 452
    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2b} :catch_42

    .line 459
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_ae
    .catchall {:try_start_2b .. :try_end_32} :catchall_c9

    .line 460
    :try_start_32
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v0

    .line 462
    if-nez v0, :cond_5a

    .line 463
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_ab

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3e} :catch_ae
    .catchall {:try_start_3d .. :try_end_3e} :catchall_c9

    .line 481
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4e

    .line 463
    :goto_41
    return-object v0

    .line 453
    :catch_42
    move-exception v0

    .line 454
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partition not available?"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    return-object v7

    .line 482
    :catch_4e
    move-exception v1

    .line 483
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "failed to close OutputStream"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 466
    :cond_5a
    :try_start_5a
    new-array v3, v0, [B

    .line 467
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    .line 468
    if-ge v4, v0, :cond_9a

    .line 470
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to read entire data block. bytes read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 471
    const-string/jumbo v5, "/"

    .line 470
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_5a .. :try_end_89} :catchall_ab

    :try_start_89
    monitor-exit v2
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8a} :catch_ae
    .catchall {:try_start_89 .. :try_end_8a} :catchall_c9

    .line 481
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 472
    :goto_8d
    return-object v7

    .line 482
    :catch_8e
    move-exception v0

    .line 483
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_9a
    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9b} :catch_ae
    .catchall {:try_start_9a .. :try_end_9b} :catchall_c9

    .line 481
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 474
    :goto_9e
    return-object v3

    .line 482
    :catch_9f
    move-exception v0

    .line 483
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 459
    :catchall_ab
    move-exception v0

    :try_start_ac
    monitor-exit v2

    throw v0
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_ae} :catch_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_c9

    .line 476
    :catch_ae
    move-exception v0

    .line 477
    :try_start_af
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "failed to read data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_c9

    .line 481
    :try_start_b9
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    .line 478
    :goto_bc
    return-object v7

    .line 482
    :catch_bd
    move-exception v0

    .line 483
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 479
    :catchall_c9
    move-exception v0

    .line 481
    :try_start_ca
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    .line 479
    :goto_cd
    throw v0

    .line 482
    :catch_ce
    move-exception v1

    .line 483
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "failed to close OutputStream"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 508
    return-void

    .line 511
    :cond_7
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap10(Lcom/android/server/PersistentDataBlockService;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    .line 514
    if-eqz p1, :cond_23

    .line 516
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap12(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap12(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    .line 519
    :cond_23
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 520
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0, p1}, Lcom/android/server/PersistentDataBlockService;->-wrap7(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 521
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_36

    monitor-exit v1

    .line 523
    return-void

    .line 519
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public wipe()V
    .registers 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap10(Lcom/android/server/PersistentDataBlockService;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 493
    :try_start_c
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/PersistentDataBlockService;->-wrap4(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v0

    .line 495
    if-gez v0, :cond_26

    .line 496
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "failed to wipe persistent partition"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_37

    :goto_24
    monitor-exit v1

    .line 502
    return-void

    .line 498
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/PersistentDataBlockService;->-set0(Lcom/android/server/PersistentDataBlockService;Z)Z

    .line 499
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "persistent partition now wiped and unwritable"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_37

    goto :goto_24

    .line 492
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write([B)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 395
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;I)V

    .line 398
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap5(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    .line 399
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_19

    .line 401
    neg-long v0, v0

    long-to-int v0, v0

    return v0

    .line 406
    :cond_19
    :try_start_19
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2e} :catch_56

    .line 412
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 413
    const v2, 0x19901873

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 414
    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 415
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 417
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 418
    :try_start_49
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 419
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_99

    monitor-exit v2

    .line 420
    return v6

    .line 407
    :catch_56
    move-exception v0

    .line 408
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partition not available?"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    return v6

    .line 424
    :cond_62
    const/16 v3, 0x20

    :try_start_64
    new-array v3, v3, [B

    .line 425
    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 426
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write([B)V

    .line 427
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_76} :catch_84
    .catchall {:try_start_64 .. :try_end_76} :catchall_94

    .line 432
    :try_start_76
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 436
    array-length v0, p1
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_99

    monitor-exit v2

    return v0

    .line 428
    :catch_84
    move-exception v0

    .line 429
    :try_start_85
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "failed writing to the persistent data block"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_94

    .line 432
    :try_start_8f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_99

    monitor-exit v2

    .line 430
    return v6

    .line 431
    :catchall_94
    move-exception v0

    .line 432
    :try_start_95
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 431
    throw v0
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_99

    .line 417
    :catchall_99
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_9c
    monitor-exit v2

    .line 438
    return v6
.end method
