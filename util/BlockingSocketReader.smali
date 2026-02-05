.class public abstract Landroid/net/util/BlockingSocketReader;
.super Ljava/lang/Object;
.source "BlockingSocketReader.java"


# static fields
.field public static final DEFAULT_RECV_BUF_SIZE:I = 0x800


# instance fields
.field private final mPacket:[B

.field private volatile mPacketsReceived:J

.field private volatile mRunning:Z

.field private volatile mSocket:Ljava/io/FileDescriptor;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 59
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/net/util/BlockingSocketReader;-><init>(I)V

    .line 60
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 4

    .prologue
    const/16 v0, 0x800

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-ge p1, v0, :cond_8

    move p1, v0

    .line 66
    :cond_8
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/net/util/BlockingSocketReader;->mPacket:[B

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/util/-$Lambda$uJqW9o1MiZ5yyXhSTG2zE-YhRn0;

    invoke-direct {v1, p0}, Landroid/net/util/-$Lambda$uJqW9o1MiZ5yyXhSTG2zE-YhRn0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/net/util/BlockingSocketReader;->mThread:Ljava/lang/Thread;

    .line 68
    return-void
.end method

.method public static final closeSocket(Ljava/io/FileDescriptor;)V
    .registers 2

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 56
    :goto_3
    return-void

    .line 55
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method private final mainLoop()V
    .registers 7

    .prologue
    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 127
    :try_start_6
    iget-object v0, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/util/BlockingSocketReader;->mPacket:[B

    iget-object v2, p0, Landroid/net/util/BlockingSocketReader;->mPacket:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 128
    const/4 v1, 0x1

    if-ge v0, v1, :cond_29

    .line 129
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "Socket closed, exiting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_22} :catch_4c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_22} :catch_3e

    .line 152
    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->stop()V

    .line 153
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->onExit()V

    .line 154
    return-void

    .line 132
    :cond_29
    :try_start_29
    iget-wide v2, p0, Landroid/net/util/BlockingSocketReader;->mPacketsReceived:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/util/BlockingSocketReader;->mPacketsReceived:J
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_30} :catch_4c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_3e

    .line 145
    :try_start_30
    iget-object v1, p0, Landroid/net/util/BlockingSocketReader;->mPacket:[B

    invoke-virtual {p0, v1, v0}, Landroid/net/util/BlockingSocketReader;->handlePacket([BI)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_0

    .line 146
    :catch_36
    move-exception v0

    .line 147
    const-string/jumbo v1, "Unexpected exception: "

    invoke-virtual {p0, v1, v0}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_22

    .line 139
    :catch_3e
    move-exception v0

    .line 140
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "read error: "

    invoke-virtual {p0, v1, v0}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 133
    :catch_4c
    move-exception v0

    .line 134
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EINTR:I

    if-eq v1, v2, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string/jumbo v1, "read error: "

    invoke-virtual {p0, v1, v0}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_22
.end method


# virtual methods
.method protected abstract createSocket()Ljava/io/FileDescriptor;
.end method

.method protected handlePacket([BI)V
    .registers 3

    .prologue
    .line 108
    return-void
.end method

.method public final isRunning()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/net/util/BlockingSocketReader;->mRunning:Z

    return v0
.end method

.method synthetic lambda$-android_net_util_BlockingSocketReader_2194()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/net/util/BlockingSocketReader;->mainLoop()V

    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 113
    return-void
.end method

.method public final numPacketsReceived()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/net/util/BlockingSocketReader;->mPacketsReceived:J

    return-wide v0
.end method

.method protected onExit()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public final start()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    return v2

    .line 74
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/net/util/BlockingSocketReader;->createSocket()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_12

    .line 80
    iget-object v0, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1a

    return v2

    .line 75
    :catch_12
    move-exception v0

    .line 76
    const-string/jumbo v1, "Failed to create socket: "

    invoke-virtual {p0, v1, v0}, Landroid/net/util/BlockingSocketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 77
    return v2

    .line 82
    :cond_1a
    iput-boolean v1, p0, Landroid/net/util/BlockingSocketReader;->mRunning:Z

    .line 83
    iget-object v0, p0, Landroid/net/util/BlockingSocketReader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return v1
.end method

.method public final stop()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/util/BlockingSocketReader;->mRunning:Z

    .line 89
    iget-object v0, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/util/BlockingSocketReader;->closeSocket(Ljava/io/FileDescriptor;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/util/BlockingSocketReader;->mSocket:Ljava/io/FileDescriptor;

    .line 91
    return-void
.end method
