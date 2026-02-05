.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 16

    .prologue
    const v11, 0x60013

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 385
    aget-object v0, p3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 386
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get3(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 387
    if-nez v0, :cond_39

    .line 388
    invoke-static {p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string/jumbo v1, "NsdService"

    const-string/jumbo v4, "id %d for %s has no client mapping"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    aput-object v0, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v2

    .line 394
    :cond_39
    invoke-static {v0, v3}, Lcom/android/server/NsdService$ClientInfo;->-wrap0(Lcom/android/server/NsdService$ClientInfo;I)I

    move-result v4

    .line 395
    if-gez v4, :cond_5b

    .line 399
    invoke-static {p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string/jumbo v1, "NsdService"

    .line 401
    const-string/jumbo v4, "Notification %s for listener id %d that is no longer active"

    .line 400
    new-array v5, v8, [Ljava/lang/Object;

    .line 402
    aput-object v0, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    .line 400
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v2

    .line 406
    :cond_5b
    invoke-static {p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    const-string/jumbo v5, "NsdService"

    const-string/jumbo v6, "Native daemon message %s: %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v2

    aput-object p2, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    packed-switch p1, :pswitch_data_1e6

    .line 511
    return v2

    .line 412
    :pswitch_76
    new-instance v1, Landroid/net/nsd/NsdServiceInfo;

    aget-object v3, p3, v8

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v1, v3, v5}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v3, 0x60004

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 513
    :goto_8a
    :pswitch_8a
    return v10

    .line 418
    :pswitch_8b
    new-instance v1, Landroid/net/nsd/NsdServiceInfo;

    aget-object v3, p3, v8

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v1, v3, v5}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v3, 0x60005

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_8a

    .line 424
    :pswitch_a0
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x60003

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_8a

    .line 429
    :pswitch_ab
    new-instance v1, Landroid/net/nsd/NsdServiceInfo;

    aget-object v2, p3, v8

    invoke-direct {v1, v2, v9}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v2, 0x6000b

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_8a

    .line 435
    :pswitch_bd
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x6000a

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_8a

    :pswitch_c8
    move v1, v2

    .line 447
    :goto_c9
    aget-object v5, p3, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_ea

    aget-object v5, p3, v8

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_ea

    .line 448
    aget-object v5, p3, v8

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_e7

    .line 449
    add-int/lit8 v1, v1, 0x1

    .line 451
    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    .line 453
    :cond_ea
    aget-object v5, p3, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_10e

    .line 454
    const-string/jumbo v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid service found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8a

    .line 457
    :cond_10e
    aget-object v5, p3, v8

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 458
    aget-object v6, p3, v8

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    const-string/jumbo v6, ".local."

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 461
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v6, v5}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 463
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 464
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 465
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v1

    const/4 v5, 0x4

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 466
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v1

    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-virtual {v1, v5}, Landroid/net/nsd/NsdServiceInfo;->setTxtRecords(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v3}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    .line 469
    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 471
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;)I

    move-result v1

    .line 472
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v3, v1, v5}, Lcom/android/server/NsdService;->-wrap1(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_179

    .line 473
    const v2, 0x60012

    invoke-direct {p0, v4, v1, v0, v2}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_8a

    .line 475
    :cond_179
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, v11, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 477
    invoke-static {v0, v9}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_8a

    .line 482
    :pswitch_185
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v3}, Lcom/android/server/NsdService;->-wrap6(Lcom/android/server/NsdService;I)Z

    .line 483
    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 484
    invoke-static {v0, v9}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 485
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, v11, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_8a

    .line 490
    :pswitch_19b
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v3}, Lcom/android/server/NsdService;->-wrap5(Lcom/android/server/NsdService;I)Z

    .line 491
    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 492
    invoke-static {v0, v9}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 493
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, v11, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_8a

    .line 499
    :pswitch_1b1
    :try_start_1b1
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v1

    const/4 v5, 0x4

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    .line 500
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 501
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v5

    .line 500
    const v6, 0x60014

    .line 501
    const/4 v7, 0x0

    .line 500
    invoke-virtual {v1, v6, v7, v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_1ce
    .catch Ljava/net/UnknownHostException; {:try_start_1b1 .. :try_end_1ce} :catch_1dd

    .line 506
    :goto_1ce
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v3}, Lcom/android/server/NsdService;->-wrap5(Lcom/android/server/NsdService;I)Z

    .line 507
    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 508
    invoke-static {v0, v9}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_8a

    .line 502
    :catch_1dd
    move-exception v1

    .line 503
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, v11, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_1ce

    .line 409
    :pswitch_data_1e6
    .packed-switch 0x25a
        :pswitch_a0
        :pswitch_76
        :pswitch_8b
        :pswitch_bd
        :pswitch_ab
        :pswitch_185
        :pswitch_c8
        :pswitch_8a
        :pswitch_8a
        :pswitch_19b
        :pswitch_1b1
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .registers 5

    .prologue
    .line 244
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 245
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 246
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get3(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 247
    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .registers 5

    .prologue
    .line 230
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_28

    .line 231
    const-string/jumbo v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exceeded max outstanding requests "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V
    .registers 6

    .prologue
    .line 238
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->-get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get3(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NsdService;->-wrap15(Lcom/android/server/NsdService;Z)V

    .line 217
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 218
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->start()V

    .line 220
    :cond_21
    return-void
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 225
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->stop()V

    .line 227
    :cond_19
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10

    .prologue
    const v7, 0x6000a

    const v4, 0x60007

    const v6, 0x60003

    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_266

    .line 378
    return v5

    .line 257
    :sswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2e

    .line 258
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2e

    .line 259
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->start()V

    .line 261
    :cond_2e
    return v5

    .line 263
    :sswitch_2f
    return v5

    .line 266
    :sswitch_30
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-static {v1}, Lcom/android/server/NsdService$NsdStateMachine;->-get0(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 380
    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    return v0

    .line 269
    :sswitch_3d
    const-string/jumbo v0, "NsdService"

    const-string/jumbo v1, "Discover services"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    .line 271
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NsdService$ClientInfo;

    .line 273
    invoke-direct {p0, v1}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 274
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, p1, v6, v3}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_3b

    .line 279
    :cond_68
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;)I

    move-result v2

    .line 280
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/server/NsdService;->-wrap0(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 282
    const-string/jumbo v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Discover "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 283
    invoke-virtual {v0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3, v2, v1, v4}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    .line 286
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x60002

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/NsdService;->-wrap14(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_3b

    .line 288
    :cond_c0
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v2}, Lcom/android/server/NsdService;->-wrap7(Lcom/android/server/NsdService;I)Z

    .line 289
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, p1, v6, v5}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 294
    :sswitch_d0
    const-string/jumbo v0, "NsdService"

    const-string/jumbo v1, "Stop service discovery"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 298
    :try_start_e9
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_f2
    .catch Ljava/lang/NullPointerException; {:try_start_e9 .. :try_end_f2} :catch_10e

    move-result v1

    .line 304
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 305
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v1}, Lcom/android/server/NsdService;->-wrap7(Lcom/android/server/NsdService;I)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 306
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v1, 0x60008

    invoke-static {v0, p1, v1}, Lcom/android/server/NsdService;->-wrap12(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_3b

    .line 299
    :catch_10e
    move-exception v0

    .line 300
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, p1, v4, v5}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 308
    :cond_118
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, p1, v4, v5}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 313
    :sswitch_121
    const-string/jumbo v0, "NsdService"

    const-string/jumbo v1, "Register service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 315
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 316
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, p1, v7, v3}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 321
    :cond_149
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;)I

    move-result v2

    .line 322
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v3, v2, v1}, Lcom/android/server/NsdService;->-wrap3(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 323
    const-string/jumbo v1, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Register "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_3b

    .line 327
    :cond_18f
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v2}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    .line 328
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, p1, v7, v5}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 333
    :sswitch_19f
    const-string/jumbo v0, "NsdService"

    const-string/jumbo v1, "unregister service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 336
    :try_start_1b8
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->-get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_1c1
    .catch Ljava/lang/NullPointerException; {:try_start_1b8 .. :try_end_1c1} :catch_1dd

    move-result v1

    .line 342
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v1}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 344
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v1, 0x6000e

    invoke-static {v0, p1, v1}, Lcom/android/server/NsdService;->-wrap12(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_3b

    .line 337
    :catch_1dd
    move-exception v0

    .line 338
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v1, 0x6000d

    invoke-static {v0, p1, v1, v5}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 346
    :cond_1ea
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v1, 0x6000d

    invoke-static {v0, p1, v1, v5}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 351
    :sswitch_1f6
    const-string/jumbo v0, "NsdService"

    const-string/jumbo v1, "Resolve service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    .line 353
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->-get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NsdService$ClientInfo;

    .line 356
    invoke-static {v1}, Lcom/android/server/NsdService$ClientInfo;->-get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_226

    .line 357
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v1, 0x60013

    .line 358
    const/4 v2, 0x3

    .line 357
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 362
    :cond_226
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;)I

    move-result v2

    .line 363
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, v2, v0}, Lcom/android/server/NsdService;->-wrap4(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_249

    .line 364
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-static {v1, v0}, Lcom/android/server/NsdService$ClientInfo;->-set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 365
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_3b

    .line 367
    :cond_249
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v1, 0x60013

    invoke-static {v0, p1, v1, v5}, Lcom/android/server/NsdService;->-wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_3b

    .line 372
    :sswitch_255
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/NsdService$NativeEvent;

    .line 373
    iget v1, v0, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v2, v0, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 374
    return v5

    .line 254
    :sswitch_data_266
    .sparse-switch
        0x11000 -> :sswitch_11
        0x11004 -> :sswitch_2f
        0x60001 -> :sswitch_3d
        0x60006 -> :sswitch_d0
        0x60009 -> :sswitch_121
        0x6000c -> :sswitch_19f
        0x60012 -> :sswitch_1f6
        0x60019 -> :sswitch_30
        0x6001a -> :sswitch_255
    .end sparse-switch
.end method
