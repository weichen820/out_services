.class public Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "CountryDetectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CountryDetectorService$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLocationBasedDetectorListener:Landroid/location/CountryListener;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/CountryDetectorService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/CountryDetectorService;)Lcom/android/server/location/ComprehensiveCountryDetector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/CountryDetectorService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 97
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method private addListener(Landroid/location/ICountryListener;)V
    .registers 6

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 133
    :try_start_3
    new-instance v0, Lcom/android/server/CountryDetectorService$Receiver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3d

    .line 135
    :try_start_8
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 136
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    .line 138
    const-string/jumbo v0, "CountryDetector"

    const-string/jumbo v2, "The first listener is added"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    invoke-virtual {p0, v0}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_30} :catch_32
    .catchall {:try_start_8 .. :try_end_30} :catchall_3d

    :cond_30
    :goto_30
    monitor-exit v1

    .line 145
    return-void

    .line 141
    :catch_32
    move-exception v0

    .line 142
    :try_start_33
    const-string/jumbo v2, "CountryDetector"

    const-string/jumbo v3, "linkToDeath failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    goto :goto_30

    .line 132
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 177
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 178
    new-instance v0, Lcom/android/server/CountryDetectorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CountryDetectorService$1;-><init>(Lcom/android/server/CountryDetectorService;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    .line 187
    return-void
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 149
    :try_start_3
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V

    .line 152
    const-string/jumbo v0, "CountryDetector"

    const-string/jumbo v2, "No listener is left"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v1

    .line 155
    return-void

    .line 148
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addCountryListener(Landroid/location/ICountryListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_a

    .line 115
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 117
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->addListener(Landroid/location/ICountryListener;)V

    .line 118
    return-void
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_6

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_6
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-virtual {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "CountryDetector"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 213
    :cond_c
    return-void
.end method

.method isSystemReady()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return v0
.end method

.method protected notifyReceivers(Landroid/location/Country;)V
    .registers 7

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 160
    :try_start_3
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/CountryDetectorService$Receiver;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2c

    .line 162
    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/CountryDetectorService$Receiver;->getListener()Landroid/location/ICountryListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2c

    goto :goto_d

    .line 163
    :catch_21
    move-exception v0

    .line 165
    :try_start_22
    const-string/jumbo v3, "CountryDetector"

    const-string/jumbo v4, "notifyReceivers failed:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    goto :goto_d

    .line 159
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2f
    monitor-exit v1

    .line 169
    return-void
.end method

.method public removeCountryListener(Landroid/location/ICountryListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_a

    .line 126
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 128
    :cond_a
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    .line 129
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 191
    invoke-direct {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 193
    return-void
.end method

.method protected setCountryListener(Landroid/location/CountryListener;)V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/CountryDetectorService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$2;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method systemRunning()V
    .registers 2

    .prologue
    .line 173
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method
