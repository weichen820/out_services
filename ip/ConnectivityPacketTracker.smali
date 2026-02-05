.class public Landroid/net/ip/ConnectivityPacketTracker;
.super Ljava/lang/Object;
.source "ConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/ConnectivityPacketTracker$PacketListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MARK_START:Ljava/lang/String; = "--- START ---"

.field private static final MARK_STOP:Ljava/lang/String; = "--- STOP ---"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLog:Landroid/util/LocalLog;

.field private final mPacketListener:Landroid/net/util/BlockingSocketReader;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Landroid/net/ip/ConnectivityPacketTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/ConnectivityPacketTracker;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/net/NetworkInterface;Landroid/util/LocalLog;)V
    .registers 9

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    :try_start_3
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    .line 77
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 78
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getMTU()I
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_12} :catch_40
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_12} :catch_40

    move-result v3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/net/ip/ConnectivityPacketTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p2, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    .line 86
    new-instance v0, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;-><init>(Landroid/net/ip/ConnectivityPacketTracker;I[BI)V

    iput-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    .line 87
    return-void

    .line 79
    :catch_40
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bad network interface"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public start()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "--- START ---"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    invoke-virtual {v0}, Landroid/net/util/BlockingSocketReader;->start()Z

    .line 92
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    invoke-virtual {v0}, Landroid/net/util/BlockingSocketReader;->stop()V

    .line 96
    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "--- STOP ---"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 97
    return-void
.end method
