.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 3

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 319
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 320
    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 358
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 362
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get3(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 363
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x20

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 364
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 365
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_26
    :goto_26
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 373
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 374
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :goto_3c
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "hdmi_audio"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 388
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 389
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    :goto_51
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "soc:qcom,msm-ext-disp"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 401
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 402
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :goto_66
    return-object v6

    .line 367
    :cond_67
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "This kernel does not have wired headset support"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 376
    :cond_72
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "This kernel does not have usb audio support"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 391
    :cond_7d
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "hdmi"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 392
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 393
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 395
    :cond_93
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "This kernel does not have HDMI audio support"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 404
    :cond_9e
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "This kernel does not have DP audio support"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 486
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6a

    .line 487
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 488
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uei.getDevPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uevent.getDevPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 492
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 493
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->-get1(Lcom/android/server/WiredAccessoryManager;)I

    move-result v2

    invoke-virtual {v0, v2, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v0

    .line 492
    invoke-static {v1, p2, v0}, Lcom/android/server/WiredAccessoryManager;->-wrap2(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    .line 495
    return-void

    .line 486
    :cond_66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 498
    :cond_6a
    return-void
.end method


# virtual methods
.method init()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get2(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 324
    :try_start_8
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "init()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/16 v0, 0x400

    new-array v4, v0, [C

    move v2, v1

    .line 327
    :goto_17
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_89

    .line 328
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_65

    .line 331
    :try_start_27
    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 332
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    .line 333
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 334
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 336
    if-lez v5, :cond_55

    .line 337
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_55} :catch_68
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_55} :catch_59
    .catchall {:try_start_27 .. :try_end_55} :catchall_65

    .line 327
    :cond_55
    :goto_55
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    .line 342
    :catch_59
    move-exception v0

    .line 343
    :try_start_5a
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_65

    goto :goto_55

    .line 323
    :catchall_65
    move-exception v0

    monitor-exit v3

    throw v0

    .line 339
    :catch_68
    move-exception v5

    .line 340
    :try_start_69
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    const-string/jumbo v6, " not found while attempting to determine initial switch state"

    .line 340
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_69 .. :try_end_88} :catchall_65

    goto :goto_55

    :cond_89
    monitor-exit v3

    .line 351
    :goto_8a
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b9

    .line 352
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DEVPATH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 351
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8a

    .line 355
    :cond_b9
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 11

    .prologue
    const/16 v8, 0x400

    const/4 v1, 0x0

    .line 412
    const-string/jumbo v0, "DEVPATH"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    const-string/jumbo v0, "NAME"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    if-nez v0, :cond_eb

    .line 417
    const-string/jumbo v0, "SWITCH_NAME"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 420
    :goto_1b
    :try_start_1b
    const-string/jumbo v0, "soc:qcom,msm-ext-disp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 421
    const-string/jumbo v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v1

    .line 426
    :goto_30
    if-ge v0, v5, :cond_e8

    .line 427
    const/16 v6, 0x3d

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 429
    if-le v6, v0, :cond_60

    .line 430
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 433
    const-string/jumbo v7, "DP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 435
    add-int/lit8 v0, v6, 0x1

    .line 436
    add-int/lit8 v5, v6, 0x2

    .line 435
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_52} :catch_6f

    move-result v0

    :goto_53
    move v1, v0

    .line 480
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-get2(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 481
    :try_start_5b
    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_e3

    monitor-exit v0

    .line 483
    return-void

    .line 441
    :cond_60
    add-int/lit8 v0, v6, 0x3

    goto :goto_30

    .line 444
    :cond_63
    :try_start_63
    const-string/jumbo v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6d} :catch_6f

    move-result v0

    goto :goto_53

    .line 446
    :catch_6f
    move-exception v0

    .line 447
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "couldn\'t get state from event, checking node"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 449
    :goto_7b
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_54

    .line 450
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 452
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 453
    new-array v5, v8, [C

    .line 457
    :try_start_97
    new-instance v6, Ljava/io/FileReader;

    .line 458
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x0

    const/16 v2, 0x400

    invoke-virtual {v6, v5, v0, v2}, Ljava/io/InputStreamReader;->read([CII)I
    :try_end_a6
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_a6} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a6} :catch_b9

    move-result v2

    .line 460
    :try_start_a7
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_aa} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_e6

    .line 470
    :goto_aa
    :try_start_aa
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_aa .. :try_end_b7} :catch_d2

    move-result v1

    goto :goto_54

    .line 464
    :catch_b9
    move-exception v0

    move v2, v1

    .line 465
    :goto_bb
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_aa

    .line 461
    :catch_c6
    move-exception v0

    .line 462
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "file not found"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 471
    :catch_d2
    move-exception v0

    .line 472
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "could not convert to number"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 449
    :cond_df
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7b

    .line 480
    :catchall_e3
    move-exception v1

    monitor-exit v0

    throw v1

    .line 464
    :catch_e6
    move-exception v0

    goto :goto_bb

    :cond_e8
    move v0, v1

    goto/16 :goto_53

    :cond_eb
    move-object v3, v0

    goto/16 :goto_1b
.end method
