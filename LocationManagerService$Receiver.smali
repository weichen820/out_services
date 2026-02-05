.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mAllowedResolutionLevel:I

.field final mHideFromAppOps:Z

.field final mIdentity:Lcom/android/server/LocationManagerService$Identity;

.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field mOpHighPowerMonitoring:Z

.field mOpMonitoring:Z

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 826
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 828
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 829
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 830
    if-eqz p2, :cond_59

    .line 831
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 835
    :goto_1a
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 836
    new-instance v1, Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {v1, p5, p4, p6}, Lcom/android/server/LocationManagerService$Identity;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    .line 837
    if-eqz p7, :cond_30

    invoke-virtual {p7}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-gtz v1, :cond_30

    move-object p7, v0

    .line 840
    :cond_30
    iput-object p7, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 841
    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    .line 843
    invoke-virtual {p0, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 846
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get6(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object v0

    const-string/jumbo v1, "LocationManagerService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 847
    if-nez p7, :cond_53

    .line 848
    new-instance p7, Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v0, v0, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-direct {p7, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 850
    :cond_53
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 851
    return-void

    .line 833
    :cond_59
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_1a
.end method

.method private decrementPendingBroadcastsLocked()V
    .registers 2

    .prologue
    .line 1113
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_15

    .line 1114
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1115
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1118
    :cond_15
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .registers 3

    .prologue
    .line 1107
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_d

    .line 1108
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1110
    :cond_d
    return-void
.end method

.method private updateMonitoring(ZZI)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 941
    if-nez p2, :cond_1b

    .line 942
    if-eqz p1, :cond_43

    .line 943
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 947
    :cond_1b
    if-eqz p1, :cond_31

    .line 948
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_43

    .line 950
    :cond_31
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 951
    return v0

    .line 955
    :cond_43
    return p2
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 1086
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Location listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_d
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1089
    :try_start_14
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->-wrap7(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_20

    monitor-exit v1

    .line 1091
    monitor-enter p0

    .line 1092
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_23

    monitor-exit p0

    .line 1094
    return-void

    .line 1088
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1091
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 1009
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_1b

    .line 1011
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_19

    .line 1014
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v1}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1017
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_16

    :try_start_13
    monitor-exit p0

    .line 1039
    :goto_14
    const/4 v0, 0x1

    return v0

    .line 1011
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_19

    .line 1019
    :catch_19
    move-exception v0

    .line 1020
    return v7

    .line 1023
    :cond_1b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1024
    const-string/jumbo v0, "location"

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1026
    :try_start_2b
    monitor-enter p0
    :try_end_2c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2b .. :try_end_2c} :catch_4c

    .line 1029
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 1030
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap3(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 1029
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1033
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_4e

    :try_start_4a
    monitor-exit p0

    goto :goto_14

    .line 1035
    :catch_4c
    move-exception v0

    .line 1036
    return v7

    .line 1026
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_51
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4a .. :try_end_51} :catch_4c
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1045
    invoke-virtual {p0, v8}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_21

    .line 1049
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_a} :catch_1f

    .line 1052
    if-eqz p2, :cond_16

    .line 1053
    :try_start_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 1059
    :goto_11
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1c

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_15} :catch_1f

    .line 1081
    :goto_15
    return v8

    .line 1055
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_11

    .line 1049
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0

    throw v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1f} :catch_1f

    .line 1061
    :catch_1f
    move-exception v0

    .line 1062
    return v7

    .line 1065
    :cond_21
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1066
    const-string/jumbo v0, "providerEnabled"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1068
    :try_start_2c
    monitor-enter p0
    :try_end_2d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2c .. :try_end_2d} :catch_4d

    .line 1071
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 1072
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap3(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 1071
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1075
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_4f

    :try_start_4b
    monitor-exit p0

    goto :goto_15

    .line 1077
    :catch_4d
    move-exception v0

    .line 1078
    return v7

    .line 1068
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_52
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4b .. :try_end_52} :catch_4d
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 974
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_16

    .line 976
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_14

    .line 979
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 982
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_11

    :try_start_e
    monitor-exit p0

    .line 1005
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 976
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_14

    .line 984
    :catch_14
    move-exception v0

    .line 985
    return v7

    .line 988
    :cond_16
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 989
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 990
    const-string/jumbo v0, "status"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    :try_start_29
    monitor-enter p0
    :try_end_2a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_29 .. :try_end_2a} :catch_4a

    .line 995
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v5

    .line 996
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap3(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v6

    .line 995
    const/4 v2, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 999
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_4c

    :try_start_48
    monitor-exit p0

    goto :goto_f

    .line 1001
    :catch_4a
    move-exception v0

    .line 1002
    return v7

    .line 992
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_4f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_48 .. :try_end_4f} :catch_4a
.end method

.method public clearPendingBroadcastsLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1121
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_14

    .line 1122
    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1123
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1124
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1127
    :cond_14
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 855
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    nop

    nop

    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getListener()Landroid/location/ILocationListener;
    .registers 3

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_7

    .line 968
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    return-object v0

    .line 970
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPendingIntent()Z
    .registers 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 1099
    monitor-enter p0

    .line 1100
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 1102
    return-void

    .line 1099
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    const-string/jumbo v0, "Reciever["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_4d

    .line 869
    const-string/jumbo v0, " listener"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :goto_20
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 874
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 871
    :cond_4d
    const-string/jumbo v0, " intent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 876
    :cond_54
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMonitoring(Z)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 886
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v0, :cond_8

    .line 887
    return-void

    .line 892
    :cond_8
    if-eqz p1, :cond_8b

    .line 895
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 896
    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v7, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/LocationManagerService;->-wrap0(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 899
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get7(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 900
    if-eqz v1, :cond_82

    .line 901
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    .line 902
    :goto_3f
    if-eqz v1, :cond_84

    .line 903
    iget v1, v1, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_84

    .line 904
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v0

    const-wide/32 v6, 0x493e0

    cmp-long v0, v0, v6

    if-gez v0, :cond_84

    move v2, v3

    .line 915
    :goto_54
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 916
    const/16 v1, 0x29

    .line 913
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 919
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 922
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 923
    const/16 v3, 0x2a

    .line 920
    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 924
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v1, v0, :cond_81

    .line 926
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get2(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 929
    :cond_81
    return-void

    :cond_82
    move-object v1, v4

    .line 901
    goto :goto_3f

    :cond_84
    move v0, v3

    :goto_85
    move v1, v0

    goto :goto_15

    :cond_87
    move v0, v1

    goto :goto_85

    :cond_89
    move v3, v1

    goto :goto_54

    :cond_8b
    move v3, v2

    goto :goto_54
.end method
