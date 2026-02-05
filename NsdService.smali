.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$ClientInfo;,
        Lcom/android/server/NsdService$DaemonConnection;,
        Lcom/android/server/NsdService$DaemonConnectionSupplier;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NsdSettings;,
        Lcom/android/server/NsdService$NsdStateMachine;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_ID:I = 0x0

.field private static final MDNS_TAG:Ljava/lang/String; = "mDnsConnector"

.field private static final TAG:Ljava/lang/String; = "NsdService"


# instance fields
.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDaemon:Lcom/android/server/NsdService$DaemonConnection;

.field private final mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

.field private final mIdToClientInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

.field private final mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

.field private final mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mUniqueId:I


# direct methods
.method static synthetic -com_android_server_NsdService-mthref-0(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;
    .registers 2

    .prologue
    .line 557
    new-instance v0, Lcom/android/server/NsdService$DaemonConnection;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$DaemonConnection;-><init>(Lcom/android/server/NsdService$NativeCallbackReceiver;)V

    return-object v0
.end method

.method static synthetic -get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NsdService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/NsdService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdSettings;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/NsdService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->notifyEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/NsdService;Landroid/os/Message;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/NsdService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NsdService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/NsdService;->isNsdEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/NsdService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/NsdService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopResolveService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/NsdService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/NsdService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unregisterService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/NsdService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/NsdService;->getUniqueId()I

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/NsdService$NsdSettings;Landroid/os/Handler;Lcom/android/server/NsdService$DaemonConnectionSupplier;)V
    .registers 7

    .prologue
    .line 543
    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    .line 544
    iput-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    .line 545
    iput-object p2, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    .line 546
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine;

    const-string/jumbo v1, "NsdService"

    invoke-direct {v0, p0, v1, p3}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    .line 547
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 548
    new-instance v0, Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    .line 549
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-interface {p4, v0}, Lcom/android/server/NsdService$DaemonConnectionSupplier;->get(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    .line 550
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NsdService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {p0}, Lcom/android/server/NsdService$NsdSettings;->makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;

    move-result-object v0

    .line 554
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NsdService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 556
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    new-instance v1, Lcom/android/server/NsdService;

    sget-object v3, Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;->$INST$0:Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/NsdService;-><init>(Landroid/content/Context;Lcom/android/server/NsdService$NsdSettings;Landroid/os/Handler;Lcom/android/server/NsdService$DaemonConnectionSupplier;)V

    .line 558
    iget-object v0, v1, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-virtual {v0}, Lcom/android/server/NsdService$NativeCallbackReceiver;->awaitConnection()V

    .line 559
    return-object v1
.end method

.method private discoverServices(ILjava/lang/String;)Z
    .registers 7

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "discover"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getAddrInfo(ILjava/lang/String;)Z
    .registers 7

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "getaddrinfo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getUniqueId()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    return v0

    .line 596
    :cond_f
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    return v0
.end method

.method private isNsdEnabled()Z
    .registers 5

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    invoke-interface {v0}, Lcom/android/server/NsdService$NsdSettings;->isEnabled()Z

    move-result v1

    .line 589
    const-string/jumbo v2, "NsdService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network service discovery is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_26

    const-string/jumbo v0, "enabled"

    :goto_1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v1

    .line 589
    :cond_26
    const-string/jumbo v0, "disabled"

    goto :goto_1a
.end method

.method private notifyEnabled(Z)V
    .registers 4

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    if-eqz p1, :cond_b

    const v0, 0x60018

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 576
    return-void

    .line 575
    :cond_b
    const v0, 0x60019

    goto :goto_7
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 4

    .prologue
    .line 779
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 780
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 781
    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 717
    const-string/jumbo v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v2

    .line 722
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    move-result-object v3

    .line 723
    invoke-static {v3, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 724
    iget-object v4, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "register"

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v5, v1

    const/4 v0, 0x5

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .registers 5

    .prologue
    .line 785
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_5

    return-void

    .line 786
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 787
    iput p2, v0, Landroid/os/Message;->what:I

    .line 788
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 789
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .registers 6

    .prologue
    .line 792
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_5

    return-void

    .line 793
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 794
    iput p2, v0, Landroid/os/Message;->what:I

    .line 795
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 796
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 797
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 800
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_5

    return-void

    .line 801
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 802
    iput p2, v0, Landroid/os/Message;->what:I

    .line 803
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 804
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 805
    return-void
.end method

.method private resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 9

    .prologue
    .line 747
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v1

    .line 749
    iget-object v2, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "resolve"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const-string/jumbo v0, "local."

    const/4 v1, 0x4

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .registers 5

    .prologue
    .line 579
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 581
    if-eqz p1, :cond_1e

    const/4 v0, 0x2

    .line 582
    :goto_10
    const-string/jumbo v2, "nsd_state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 584
    return-void

    .line 581
    :cond_1e
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private stopGetAddrInfo(I)Z
    .registers 6

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stop-getaddrinfo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private stopResolveService(I)Z
    .registers 6

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stop-resolve"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private stopServiceDiscovery(I)Z
    .registers 6

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stop-discover"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v5, 0x5c

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 520
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 522
    if-ne v1, v5, :cond_8d

    .line 523
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_3f

    .line 524
    const-string/jumbo v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected end of escape sequence in: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_3a
    :goto_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 527
    :cond_3f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 528
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_87

    if-eq v0, v5, :cond_87

    .line 529
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_6c

    .line 530
    const-string/jumbo v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected end of escape sequence in: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 533
    :cond_6c
    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 534
    add-int/lit8 v1, v1, 0x2

    .line 537
    :cond_87
    :goto_87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    add-int/lit8 v0, v1, 0x1

    goto :goto_c

    :cond_8d
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_87
.end method

.method private unregisterService(I)Z
    .registers 6

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stop-register"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateService(ILandroid/net/nsd/DnsSdTxtRecord;)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 732
    if-nez p2, :cond_4

    .line 733
    return v3

    .line 735
    :cond_4
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "update"

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NsdService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 768
    :cond_c
    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 769
    const-string/jumbo v2, "Client Info"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_16

    .line 773
    :cond_2c
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERNET"

    const-string/jumbo v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .registers 5

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 569
    const-string/jumbo v2, "NsdService"

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    invoke-interface {v0, p1}, Lcom/android/server/NsdService$NsdSettings;->putEnabledStatus(Z)V

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->notifyEnabled(Z)V

    .line 572
    return-void
.end method
