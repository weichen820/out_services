.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$1;,
        Lcom/android/server/DockObserver$2;,
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/DockObserver;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DockObserver;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DockObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 63
    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 65
    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 66
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 225
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 75
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    const v1, 0x112000d

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 80
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 82
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private handleDockStateChange()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 153
    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 154
    :try_start_8
    const-string/jumbo v3, "DockObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Dock state changed from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 155
    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 154
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 157
    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 160
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 162
    const-string/jumbo v3, "device_provisioned"

    const/4 v4, 0x0

    .line 161
    invoke-static {v7, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_54

    .line 163
    const-string/jumbo v0, "DockObserver"

    const-string/jumbo v1, "Device not provisioned, skipping dock broadcast"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_ff

    monitor-exit v5

    .line 164
    return-void

    .line 168
    :cond_54
    :try_start_54
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    const/high16 v3, 0x20000000

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    const-string/jumbo v3, "android.intent.extra.DOCK_STATE"

    iget v4, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string/jumbo v3, "dock_sounds_enabled"

    const/4 v4, 0x1

    .line 172
    invoke-static {v7, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_d9

    move v4, v2

    .line 175
    :goto_74
    const-string/jumbo v3, "dock_sounds_enabled_when_accessbility"

    const/4 v9, 0x1

    .line 174
    invoke-static {v7, v3, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_db

    move v3, v2

    .line 177
    :goto_7f
    const-string/jumbo v9, "accessibility_enabled"

    const/4 v10, 0x0

    .line 176
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v2, :cond_8a

    move v1, v2

    .line 181
    :cond_8a
    if-nez v4, :cond_90

    .line 182
    if-eqz v1, :cond_ce

    .line 181
    if-eqz v3, :cond_ce

    .line 184
    :cond_90
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v1, :cond_e6

    .line 185
    if-eq v6, v2, :cond_98

    .line 186
    if-ne v6, v12, :cond_dd

    .line 188
    :cond_98
    const-string/jumbo v0, "desk_undock_sound"

    .line 202
    :cond_9b
    :goto_9b
    if-eqz v0, :cond_ce

    .line 203
    invoke-static {v7, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_ce

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_ce

    .line 208
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 207
    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_ce

    .line 210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 211
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 221
    :cond_ce
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d7
    .catchall {:try_start_54 .. :try_end_d7} :catchall_ff

    monitor-exit v5

    .line 223
    return-void

    :cond_d9
    move v4, v1

    .line 172
    goto :goto_74

    :cond_db
    move v3, v1

    .line 174
    goto :goto_7f

    .line 187
    :cond_dd
    const/4 v1, 0x4

    if-eq v6, v1, :cond_98

    .line 189
    if-ne v6, v11, :cond_9b

    .line 190
    :try_start_e2
    const-string/jumbo v0, "car_undock_sound"

    goto :goto_9b

    .line 193
    :cond_e6
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v1, v2, :cond_ee

    .line 194
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v1, v12, :cond_f2

    .line 196
    :cond_ee
    const-string/jumbo v0, "desk_dock_sound"

    goto :goto_9b

    .line 195
    :cond_f2
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_ee

    .line 197
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v1, v11, :cond_9b

    .line 198
    const-string/jumbo v0, "car_dock_sound"
    :try_end_fe
    .catchall {:try_start_e2 .. :try_end_fe} :catchall_ff

    goto :goto_9b

    .line 153
    :catchall_ff
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method private init()V
    .registers 7

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [C

    .line 108
    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v3, "/sys/class/switch/dock/state"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_43
    .catchall {:try_start_5 .. :try_end_f} :catchall_40

    .line 110
    const/4 v3, 0x0

    const/16 v4, 0x400

    :try_start_12
    invoke-virtual {v2, v0, v3, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    .line 111
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 112
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_30

    .line 114
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2e} :catch_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_43
    .catchall {:try_start_2b .. :try_end_2e} :catchall_40

    :goto_2e
    monitor-exit v1

    .line 122
    return-void

    .line 113
    :catchall_30
    move-exception v0

    .line 114
    :try_start_31
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 113
    throw v0
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_35} :catch_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_43
    .catchall {:try_start_31 .. :try_end_35} :catchall_40

    .line 116
    :catch_35
    move-exception v0

    .line 117
    :try_start_36
    const-string/jumbo v0, "DockObserver"

    const-string/jumbo v2, "This kernel does not have dock station support"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_40

    goto :goto_2e

    .line 105
    :catchall_40
    move-exception v0

    monitor-exit v1

    throw v0

    .line 118
    :catch_43
    move-exception v0

    .line 119
    :try_start_44
    const-string/jumbo v2, "DockObserver"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_40

    goto :goto_2e
.end method

.method private setActualDockStateLocked(I)V
    .registers 3

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 126
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_9

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 129
    :cond_9
    return-void
.end method

.method private setDockStateLocked(I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 132
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2f

    .line 133
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 134
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2f

    .line 136
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_20

    .line 137
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "theater_mode_on"

    .line 137
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2c

    .line 139
    :cond_20
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 140
    const-string/jumbo v1, "android.server:DOCK"

    .line 139
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 142
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 145
    :cond_2f
    return-void
.end method

.method private updateLocked()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 149
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    .prologue
    .line 92
    const/16 v0, 0x226

    if-ne p1, v0, :cond_12

    .line 93
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 97
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_11

    .line 98
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v1

    .line 102
    :cond_12
    return-void

    .line 93
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 87
    const-string/jumbo v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    return-void
.end method
