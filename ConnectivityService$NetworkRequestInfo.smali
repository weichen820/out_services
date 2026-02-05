.class Lcom/android/server/ConnectivityService$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntentSent:Z

.field final mPid:I

.field final mUid:I

.field final messenger:Landroid/os/Messenger;

.field final request:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 4010
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4011
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4012
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 4013
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 4014
    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 4015
    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 4016
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 4017
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 4018
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 4019
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V
    .registers 7

    .prologue
    .line 4021
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    .line 4022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4023
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 4024
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4025
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 4026
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 4027
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 4028
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 4029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 4030
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 4033
    :try_start_22
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_29

    .line 4037
    :goto_28
    return-void

    .line 4034
    :catch_29
    move-exception v0

    .line 4035
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    goto :goto_28
.end method

.method private enforceRequestCountLimit()V
    .registers 5

    .prologue
    .line 4040
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    monitor-enter v1

    .line 4041
    :try_start_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4042
    const/16 v2, 0x64

    if-lt v0, v2, :cond_24

    .line 4043
    new-instance v0, Landroid/os/ServiceSpecificException;

    .line 4044
    const/4 v2, 0x1

    .line 4043
    invoke-direct {v0, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_21

    .line 4040
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4046
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_21

    monitor-exit v1

    .line 4048
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 4057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConnectivityService NetworkRequestInfo binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4058
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4058
    const-string/jumbo v1, ", "

    .line 4057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4058
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 4057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4058
    const-string/jumbo v1, ")"

    .line 4057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap25(Ljava/lang/String;)V

    .line 4059
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 4060
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4064
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3c

    const-string/jumbo v0, ""

    .line 4063
    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4064
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " to trigger "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method unlinkDeathRecipient()V
    .registers 3

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    .line 4052
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4054
    :cond_a
    return-void
.end method
