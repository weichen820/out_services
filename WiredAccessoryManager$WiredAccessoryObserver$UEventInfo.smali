.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private mCableIndex:I

.field private mDevIndex:I

.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V
    .registers 8

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 511
    iput p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 512
    iput p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 513
    iput p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    .line 515
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:qcom,msm-ext-disp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 516
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevIndex()V

    .line 517
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getCableIndex()V

    .line 519
    :cond_1e
    return-void
.end method

.method private getCableIndex()V
    .registers 9

    .prologue
    const/16 v0, 0x400

    const/4 v1, 0x0

    .line 554
    new-array v2, v0, [C

    move v0, v1

    .line 558
    :goto_6
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 559
    const-string/jumbo v4, "/sys/class/switch/extcon%d/cable.%d/name"

    .line 558
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 560
    iget v6, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 558
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 563
    :try_start_21
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 564
    const/4 v3, 0x0

    const/16 v5, 0x400

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    .line 565
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 567
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 568
    const-string/jumbo v4, "DP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 569
    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mCableIndex:I
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_45} :catch_55
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_49

    .line 581
    :goto_45
    return-void

    .line 572
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 576
    :catch_49
    move-exception v0

    .line 577
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 574
    :catch_55
    move-exception v0

    goto :goto_45
.end method

.method private getDevIndex()V
    .registers 8

    .prologue
    const/16 v0, 0x400

    const/4 v1, 0x0

    .line 523
    new-array v2, v0, [C

    move v0, v1

    .line 527
    :goto_6
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 528
    const-string/jumbo v4, "/sys/class/switch/extcon%d/name"

    .line 527
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 529
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 527
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 532
    :try_start_18
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 533
    const/4 v3, 0x0

    const/16 v5, 0x400

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    .line 534
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 536
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 537
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 538
    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_3b} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3b} :catch_3f

    .line 550
    :goto_3b
    return-void

    .line 541
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 545
    :catch_3f
    move-exception v0

    .line 546
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 543
    :catch_4b
    move-exception v0

    goto :goto_3b
.end method


# virtual methods
.method public checkSwitchExists()Z
    .registers 3

    .prologue
    .line 610
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public computeNewHeadsetState(II)I
    .registers 5

    .prologue
    .line 615
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    or-int/2addr v0, v1

    not-int v1, v0

    .line 616
    const/4 v0, 0x1

    if-ne p2, v0, :cond_11

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 620
    :goto_e
    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0

    .line 617
    :cond_11
    const/4 v0, 0x2

    if-ne p2, v0, :cond_17

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    goto :goto_e

    .line 618
    :cond_17
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    if-ne p2, v0, :cond_1e

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getDevName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 586
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:qcom,msm-ext-disp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 587
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 588
    const-string/jumbo v1, "/devices/platform/soc/%s/extcon/extcon%d"

    .line 587
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 589
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 587
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 591
    :cond_26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 592
    const-string/jumbo v1, "/devices/virtual/switch/%s"

    .line 591
    new-array v2, v5, [Ljava/lang/Object;

    .line 593
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 591
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 598
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:qcom,msm-ext-disp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 599
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 600
    const-string/jumbo v1, "/sys/class/switch/extcon%d/cable.%d/state"

    .line 599
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 601
    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mCableIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 599
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 603
    :cond_2a
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 604
    const-string/jumbo v1, "/sys/class/switch/%s/state"

    .line 603
    new-array v2, v5, [Ljava/lang/Object;

    .line 605
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 603
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
