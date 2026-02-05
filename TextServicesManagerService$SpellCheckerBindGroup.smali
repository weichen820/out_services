.class final Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnected:Z

.field private final mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

.field private final mOnGoingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field private mUnbindCalled:Z

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V
    .registers 4

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    const-class v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 801
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    .line 802
    new-instance v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-direct {v0, p0}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    .line 803
    return-void
.end method

.method private cleanLocked()V
    .registers 3

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 858
    return-void

    .line 861
    :cond_5
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 862
    return-void

    .line 864
    :cond_e
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 865
    return-void

    .line 867
    :cond_17
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 868
    return-void

    .line 870
    :cond_20
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->-get0(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v1

    .line 871
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 872
    if-ne v0, p0, :cond_3d

    .line 876
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_3d
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 880
    return-void
.end method


# virtual methods
.method public getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 7

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 895
    return-void

    .line 897
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    if-nez v0, :cond_f

    .line 898
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    return-void

    .line 902
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 903
    iget-object v1, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v3, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    .line 904
    new-instance v4, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v4, p0, p1}, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    .line 902
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 905
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_24} :catch_28

    .line 910
    :goto_24
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 911
    return-void

    .line 906
    :catch_28
    move-exception v0

    .line 908
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    goto :goto_24
.end method

.method public onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .registers 10

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 811
    return-void

    .line 813
    :cond_5
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 817
    :try_start_a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 818
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, v2, :cond_35

    .line 819
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 820
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 821
    iget-object v4, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v6, v0, Lcom/android/server/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    .line 822
    new-instance v7, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v7, p0, v0}, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    .line 820
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 823
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 825
    :cond_35
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3a} :catch_3e

    .line 830
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 831
    return-void

    .line 826
    :catch_3e
    move-exception v0

    .line 828
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    goto :goto_3a
.end method

.method public onServiceDisconnectedLocked()V
    .registers 2

    .prologue
    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 840
    return-void
.end method

.method onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 6

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 916
    :try_start_7
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_26

    if-eqz v0, :cond_d

    monitor-exit v1

    .line 917
    return-void

    .line 919
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_26

    move-result v0

    if-eqz v0, :cond_21

    .line 921
    :try_start_15
    iget-object v0, p2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v0, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V

    .line 922
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    iget-object v2, p2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_29
    .catchall {:try_start_15 .. :try_end_21} :catchall_26

    .line 930
    :cond_21
    :goto_21
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_26

    monitor-exit v1

    .line 932
    return-void

    .line 915
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    .line 923
    :catch_29
    move-exception v0

    goto :goto_21
.end method

.method public removeAllLocked()V
    .registers 4

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Remove the spell checker bind unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 885
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_11
    if-ltz v1, :cond_24

    .line 886
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 885
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    .line 888
    :cond_24
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 889
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 890
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 891
    return-void
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 4

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 847
    :try_start_7
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 848
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 850
    return-void

    .line 846
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
