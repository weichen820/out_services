.class public Landroid/net/util/NetdService;
.super Ljava/lang/Object;
.source "NetdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/NetdService$NetdCommand;
    }
.end annotation


# static fields
.field private static final BASE_TIMEOUT_MS:J = 0x64L

.field private static final MAX_TIMEOUT_MS:J = 0x3e8L

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Landroid/net/util/NetdService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/net/INetd;
    .registers 2

    .prologue
    .line 115
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public static get(J)Landroid/net/INetd;
    .registers 14

    .prologue
    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    .line 77
    cmp-long v0, p0, v4

    if-nez v0, :cond_c

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    return-object v0

    .line 79
    :cond_c
    cmp-long v0, p0, v4

    if-lez v0, :cond_1d

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p0

    :goto_15
    move-wide v2, v4

    .line 85
    :goto_16
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v6

    .line 86
    if-eqz v6, :cond_23

    .line 87
    return-object v6

    .line 81
    :cond_1d
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_15

    .line 90
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 91
    cmp-long v8, v6, v4

    if-gtz v8, :cond_2e

    .line 100
    return-object v10

    .line 94
    :cond_2e
    const-wide/16 v8, 0x64

    add-long/2addr v2, v8

    const-wide/16 v8, 0x3e8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 95
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 97
    :try_start_3b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_16

    .line 98
    :catch_3f
    move-exception v6

    goto :goto_16
.end method

.method public static getInstance()Landroid/net/INetd;
    .registers 3

    .prologue
    .line 52
    const-string/jumbo v0, "netd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    .line 53
    if-nez v0, :cond_15

    .line 54
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WARNING: returning null INetd instance."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_15
    return-object v0
.end method

.method public static run(Landroid/net/util/NetdService$NetdCommand;)V
    .registers 5

    .prologue
    .line 129
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/util/NetdService$NetdCommand;->run(Landroid/net/INetd;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 130
    return-void

    .line 131
    :catch_8
    move-exception v0

    .line 132
    sget-object v1, Landroid/net/util/NetdService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error communicating with netd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
