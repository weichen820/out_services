.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$1;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_DP_AUDIO:Ljava/lang/String; = "soc:qcom,msm-ext-disp"

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/WiredAccessoryManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/WiredAccessoryManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/WiredAccessoryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 228
    new-instance v0, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 91
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 92
    const-string/jumbo v1, "WiredAccessoryManager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 94
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 95
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 97
    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 100
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 101
    return-void
.end method

.method private onSystemReady()V
    .registers 8

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v4, -0x100

    .line 104
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_30

    .line 105
    const/4 v0, 0x0

    .line 106
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v4, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v2

    if-ne v2, v6, :cond_14

    move v0, v1

    .line 109
    :cond_14
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v5, v4, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v6, :cond_1e

    .line 110
    or-int/lit8 v0, v0, 0x10

    .line 112
    :cond_1e
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x6

    invoke-virtual {v1, v5, v4, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v6, :cond_29

    .line 113
    or-int/lit8 v0, v0, 0x40

    .line 115
    :cond_29
    const-wide/16 v2, 0x0

    .line 116
    const/16 v1, 0x54

    .line 115
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 119
    :cond_30
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 120
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .registers 12

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 259
    and-int v3, p2, p1

    and-int v5, p3, p1

    if-eq v3, v5, :cond_4b

    .line 264
    and-int v3, p2, p1

    if-eqz v3, :cond_4c

    move v3, v4

    .line 270
    :goto_10
    if-ne p1, v4, :cond_4e

    .line 272
    const v0, -0x7ffffff0

    .line 289
    :goto_15
    sget-object v5, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "headsetName: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 290
    if-ne v3, v4, :cond_85

    const-string/jumbo v2, " connected"

    .line 289
    :goto_2c
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v1, :cond_41

    .line 294
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v1, v3, v4, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_41
    if-eqz v0, :cond_4b

    .line 297
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v3, v2, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_4b
    return-void

    :cond_4c
    move v3, v0

    .line 267
    goto :goto_10

    .line 273
    :cond_4e
    const/4 v5, 0x2

    if-ne p1, v5, :cond_53

    move v1, v2

    .line 274
    goto :goto_15

    .line 275
    :cond_53
    const/16 v5, 0x20

    if-ne p1, v5, :cond_5a

    .line 276
    const/high16 v1, 0x20000

    goto :goto_15

    .line 277
    :cond_5a
    if-ne p1, v1, :cond_5f

    .line 278
    const/16 v1, 0x800

    goto :goto_15

    .line 279
    :cond_5f
    if-ne p1, v2, :cond_64

    .line 280
    const/16 v1, 0x1000

    goto :goto_15

    .line 281
    :cond_64
    const/16 v1, 0x10

    if-ne p1, v1, :cond_6b

    .line 282
    const/16 v1, 0x400

    goto :goto_15

    .line 284
    :cond_6b
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceState() invalid headset type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 290
    :cond_85
    const-string/jumbo v2, " disconnected"

    goto :goto_2c
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .registers 9

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    const/16 v1, 0x3f

    .line 248
    const/4 v0, 0x1

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_9
    if-eqz v0, :cond_17

    .line 249
    and-int v3, v1, v0

    if-eqz v3, :cond_14

    .line 250
    :try_start_f
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    .line 251
    not-int v3, v1

    and-int/2addr v0, v3

    .line 248
    :cond_14
    shl-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    monitor-exit v2

    .line 255
    return-void

    .line 246
    :catchall_19
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_13

    .line 305
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_13

    .line 306
    const-string/jumbo v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :cond_13
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_21

    .line 309
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_21

    .line 310
    const-string/jumbo v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 184
    and-int/lit8 v3, p2, 0x3f

    .line 185
    and-int/lit8 v4, v3, 0x4

    .line 186
    and-int/lit8 v5, v3, 0x8

    .line 187
    and-int/lit8 v2, v3, 0x23

    .line 190
    sget-object v6, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "newName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 191
    const-string/jumbo v8, " newState="

    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 192
    const-string/jumbo v8, " headsetState="

    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 193
    const-string/jumbo v8, " prev headsetState="

    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 193
    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v6, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v6, v3, :cond_53

    .line 196
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No state change."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 203
    :cond_53
    const/16 v6, 0x23

    if-ne v2, v6, :cond_a0

    .line 204
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Invalid combination, unsetting h2w flag"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 209
    :goto_60
    const/4 v6, 0x4

    if-ne v4, v6, :cond_7e

    const/16 v4, 0x8

    if-ne v5, v4, :cond_7e

    .line 210
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Invalid combination, unsetting usb flag"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_6f
    if-nez v2, :cond_80

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_80

    .line 214
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "invalid transition, returning ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    :cond_7e
    move v0, v1

    .line 209
    goto :goto_6f

    .line 218
    :cond_80
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 220
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "MSG_NEW_DEVICE_STATE"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 222
    iget v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v4, ""

    .line 221
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    iput v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 226
    return-void

    :cond_a0
    move v2, v1

    goto :goto_60
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    const-string/jumbo v4, " bits="

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    const-string/jumbo v4, " mask="

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_3c
    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int v4, p4

    and-int/2addr v3, v4

    or-int/2addr v3, p3

    iput v3, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 131
    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 v3, v3, 0x54

    sparse-switch v3, :sswitch_data_64

    .line 158
    :goto_4a
    :sswitch_4a
    const-string/jumbo v1, "h2w"

    .line 159
    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v3, v3, -0x24

    or-int/2addr v0, v3

    .line 158
    invoke-direct {p0, v1, v0}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_60

    monitor-exit v2

    .line 161
    return-void

    .line 138
    :sswitch_57
    const/4 v0, 0x2

    .line 139
    goto :goto_4a

    .line 142
    :sswitch_59
    const/16 v0, 0x20

    .line 143
    goto :goto_4a

    :sswitch_5c
    move v0, v1

    .line 147
    goto :goto_4a

    :sswitch_5e
    move v0, v1

    .line 151
    goto :goto_4a

    .line 128
    :catchall_60
    move-exception v0

    monitor-exit v2

    throw v0

    .line 131
    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_4a
        0x4 -> :sswitch_57
        0x10 -> :sswitch_5e
        0x14 -> :sswitch_5c
        0x40 -> :sswitch_59
    .end sparse-switch
.end method

.method public systemReady()V
    .registers 7

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_3
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 168
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 169
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    .line 171
    return-void

    .line 165
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
