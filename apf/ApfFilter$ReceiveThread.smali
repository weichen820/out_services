.class Landroid/net/apf/ApfFilter$ReceiveThread;
.super Ljava/lang/Thread;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# static fields
.field private static final synthetic -android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$net$apf$ApfFilter$ProcessRaResult:[I

.field private final mPacket:[B

.field private final mSocket:Ljava/io/FileDescriptor;

.field private final mStart:J

.field private final mStats:Landroid/net/metrics/ApfStats;

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method private static synthetic -getandroid-net-apf-ApfFilter$ProcessRaResultSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/apf/ApfFilter$ProcessRaResult;->values()[Landroid/net/apf/ApfFilter$ProcessRaResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_51

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_4f

    :goto_20
    :try_start_20
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_4d

    :goto_29
    :try_start_29
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_4b

    :goto_32
    :try_start_32
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_49

    :goto_3b
    :try_start_3b
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_47

    :goto_44
    sput-object v0, Landroid/net/apf/ApfFilter$ReceiveThread;->-android-net-apf-ApfFilter$ProcessRaResultSwitchesValues:[I

    return-object v0

    :catch_47
    move-exception v1

    goto :goto_44

    :catch_49
    move-exception v1

    goto :goto_3b

    :catch_4b
    move-exception v1

    goto :goto_32

    :catch_4d
    move-exception v1

    goto :goto_29

    :catch_4f
    move-exception v1

    goto :goto_20

    :catch_51
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V
    .registers 5

    .prologue
    .line 109
    iput-object p1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 102
    const/16 v0, 0x5ea

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    .line 105
    new-instance v0, Landroid/net/metrics/ApfStats;

    invoke-direct {v0}, Landroid/net/metrics/ApfStats;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    .line 110
    iput-object p2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    .line 111
    return-void
.end method

.method private logStats()V
    .registers 7

    .prologue
    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 164
    monitor-enter p0

    .line 165
    :try_start_5
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-wide v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/net/metrics/ApfStats;->durationMs:J

    .line 166
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v3}, Landroid/net/apf/ApfFilter;->-get0(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;

    move-result-object v3

    iget v3, v3, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    iput v3, v2, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    .line 167
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v3}, Landroid/net/apf/ApfFilter;->-get2(Landroid/net/apf/ApfFilter;)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    .line 168
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v3}, Landroid/net/apf/ApfFilter;->-get3(Landroid/net/apf/ApfFilter;)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    .line 169
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v2}, Landroid/net/apf/ApfFilter;->-get1(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    move-result-object v2

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    invoke-virtual {v2, v3}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    .line 170
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Landroid/net/apf/ApfFilter;->-wrap1(Landroid/net/apf/ApfFilter;J)V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_42

    monitor-exit p0

    .line 172
    return-void

    .line 164
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->receivedRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->receivedRas:I

    .line 139
    invoke-static {}, Landroid/net/apf/ApfFilter$ReceiveThread;->-getandroid-net-apf-ApfFilter$ProcessRaResultSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 160
    return-void

    .line 141
    :pswitch_16
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    .line 142
    return-void

    .line 144
    :pswitch_1f
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->droppedRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->droppedRas:I

    .line 145
    return-void

    .line 147
    :pswitch_28
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->parseErrors:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->parseErrors:I

    .line 148
    return-void

    .line 150
    :pswitch_31
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    .line 151
    return-void

    .line 153
    :pswitch_3a
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    .line 154
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    .line 155
    return-void

    .line 157
    :pswitch_4b
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    .line 158
    return-void

    .line 139
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_16
        :pswitch_28
        :pswitch_3a
        :pswitch_4b
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public halt()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    .line 117
    :try_start_3
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 119
    :goto_8
    return-void

    .line 118
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public run()V
    .registers 5

    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-string/jumbo v1, "begin monitoring"

    invoke-static {v0, v1}, Landroid/net/apf/ApfFilter;->-wrap2(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V

    .line 124
    :cond_8
    :goto_8
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v0, :cond_33

    .line 126
    :try_start_c
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 127
    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    invoke-virtual {v1, v2, v0}, Landroid/net/apf/ApfFilter;->processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_23} :catch_24
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_8

    .line 128
    :catch_24
    move-exception v0

    .line 129
    iget-boolean v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v1, :cond_8

    .line 130
    const-string/jumbo v1, "ApfFilter"

    const-string/jumbo v2, "Read error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 134
    :cond_33
    invoke-direct {p0}, Landroid/net/apf/ApfFilter$ReceiveThread;->logStats()V

    .line 135
    return-void
.end method
