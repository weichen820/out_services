.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mOpPkg:Ljava/lang/String;

.field private final mStartTime:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private final mUsageHint:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    return v0
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .registers 9

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    .line 121
    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    .line 123
    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    .line 124
    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    .line 125
    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_7
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_14

    .line 131
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit v1

    .line 134
    return-void

    .line 129
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasLongerTimeout(J)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_1f

    .line 141
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 142
    iget-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    cmp-long v0, v2, v4

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c

    .line 144
    :cond_1f
    return v1
.end method

.method public isSystemHapticFeedback()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_2d

    .line 150
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    .line 151
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v0

    if-gez v0, :cond_1f

    const/4 v0, 0x1

    .line 153
    :goto_12
    iget v2, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1c

    iget v2, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    if-nez v2, :cond_21

    .line 154
    :cond_1c
    :goto_1c
    xor-int/lit8 v1, v0, 0x1

    .line 153
    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    .line 151
    goto :goto_12

    .line 153
    :cond_21
    const-string/jumbo v2, "com.android.systemui"

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_1c

    :cond_2d
    move v0, v1

    goto :goto_12
.end method
