.class public Lcom/android/server/NetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$1;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;,
        Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;,
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = false

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NETWORK_CHANGE_EVENT_DELAY_MS:I = 0x3e8

.field private static final NOT_SET:J = -0x1L

.field private static POLL_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultNetwork:Landroid/net/Network;

.field private mHandler:Landroid/os/Handler;

.field private mLastNtpFetchTime:J

.field private mNetworkTimeUpdateCallback:Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private mNitzZoneSetTime:J

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private mTime:Landroid/util/TrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/NetworkTimeUpdateService;)Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/NetworkTimeUpdateService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/NetworkTimeUpdateService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkTimeUpdateService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 78
    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    .line 79
    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 92
    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 252
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    .line 111
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 112
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 116
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    const v1, 0x10e006e

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 118
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    const v1, 0x10e006f

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 120
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    const v1, 0x10e0070

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 122
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    const v1, 0x10e0071

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 125
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 126
    const-string/jumbo v1, "NetworkTimeUpdateService"

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 127
    return-void
.end method

.method private isAutomaticTimeRequested()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_time"

    .line 247
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private onPollNetworkTime(I)V
    .registers 4

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_b

    :cond_a
    return-void

    .line 165
    :cond_b
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 167
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTimeUnderWakeLock(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    .line 169
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 171
    return-void

    .line 168
    :catchall_19
    move-exception v0

    .line 169
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 168
    throw v0
.end method

.method private onPollNetworkTimeUnderWakeLock(I)V
    .registers 14

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 177
    iget-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1d

    iget-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1d

    .line 178
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 179
    return-void

    .line 181
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 184
    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_30

    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-ltz v0, :cond_82

    .line 189
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_41

    .line 190
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 194
    :cond_41
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_86

    .line 195
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    iput v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 199
    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_68

    .line 200
    iget-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_76

    .line 208
    :cond_68
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_76

    .line 209
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 214
    :cond_76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 228
    :cond_7c
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 229
    return-void

    .line 185
    :cond_82
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7c

    goto :goto_30

    .line 217
    :cond_86
    iget v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 218
    iget v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v0, :cond_96

    iget v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-gt v0, v1, :cond_9c

    .line 219
    :cond_96
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 225
    :goto_9b
    return-void

    .line 222
    :cond_9c
    iput v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 223
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_9b
.end method

.method private registerForAlarms()V
    .registers 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 153
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    .line 158
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    return-void
.end method

.method private registerForTelephonyIntents()V
    .registers 4

    .prologue
    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method private resetAlarm(J)V
    .registers 8

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 239
    add-long/2addr v0, p1

    .line 240
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 241
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NetworkTimeUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 327
    :cond_c
    const-string/jumbo v0, "PollingIntervalMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 329
    const-string/jumbo v0, "\nPollingIntervalShorterMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\nTryAgainTimesMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    const-string/jumbo v0, "TimeErrorThresholdMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\nTryAgainCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v0, "LastNtpFetchTime: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 337
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 338
    return-void
.end method

.method public systemRunning()V
    .registers 4

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 132
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

    .line 138
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 140
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    .line 141
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 142
    return-void
.end method
