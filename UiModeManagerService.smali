.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$1;,
        Lcom/android/server/UiModeManagerService$2;,
        Lcom/android/server/UiModeManagerService$3;,
        Lcom/android/server/UiModeManagerService$4;,
        Lcom/android/server/UiModeManagerService$5;,
        Lcom/android/server/UiModeManagerService$6;,
        Lcom/android/server/UiModeManagerService$Shell;
    }
.end annotation


# static fields
.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private mEnableCarDockLaunch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNightModeLocked:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/app/IUiModeManager$Stub;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mUiModeLocked:Z

.field private mVrHeadset:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/UiModeManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/UiModeManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .registers 2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/UiModeManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/UiModeManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 77
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 79
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 80
    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 82
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 100
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 101
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 102
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 104
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 183
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 243
    new-instance v0, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 117
    return-void
.end method

.method private adjustStatusBarCarModeLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 666
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_14

    .line 668
    const-string/jumbo v0, "statusbar"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 667
    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 676
    :cond_14
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_23

    .line 677
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_42

    .line 678
    const/high16 v0, 0x80000

    .line 677
    :goto_20
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 682
    :cond_23
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_32

    .line 684
    const-string/jumbo v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 683
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 687
    :cond_32
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_41

    .line 688
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_44

    .line 689
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    :cond_41
    :goto_41
    return-void

    .line 679
    :cond_42
    const/4 v0, 0x0

    goto :goto_20

    .line 709
    :cond_44
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 710
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v2, 0xa

    .line 709
    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_41
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method private static isDeskDockState(I)Z
    .registers 2

    .prologue
    .line 419
    packed-switch p0, :pswitch_data_8

    .line 425
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 423
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 419
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private registerVrStateListener()V
    .registers 5

    .prologue
    .line 726
    const-string/jumbo v0, "vrmanager"

    .line 725
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 728
    if-eqz v0, :cond_12

    .line 729
    :try_start_d
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 734
    :cond_12
    :goto_12
    return-void

    .line 731
    :catch_13
    move-exception v0

    .line 732
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to register VR mode state listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 624
    iput-boolean v12, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 625
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 629
    if-eqz p1, :cond_31

    .line 637
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 638
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 640
    :try_start_16
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 642
    iget-object v9, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 641
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 642
    const/4 v10, 0x0

    const/4 v11, -0x2

    .line 640
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 643
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2c} :catch_6c

    move-result v1

    if-eqz v1, :cond_42

    .line 644
    const/4 v0, 0x1

    :goto_30
    move v12, v0

    .line 656
    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V

    .line 659
    if-eqz p1, :cond_41

    xor-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_41

    .line 660
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 662
    :cond_41
    return-void

    .line 645
    :cond_42
    const/16 v1, -0x5b

    if-eq v0, v1, :cond_87

    .line 646
    :try_start_46
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not start dock app: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 647
    const-string/jumbo v4, ", startActivityWithConfig result "

    .line 646
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_6a} :catch_6c

    move v0, v12

    goto :goto_30

    .line 649
    :catch_6c
    move-exception v0

    .line 650
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not start dock app: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :cond_87
    move v0, v12

    goto :goto_30
.end method

.method private sendConfigurationLocked()V
    .registers 4

    .prologue
    .line 474
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_17

    .line 475
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 478
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 483
    :cond_17
    :goto_17
    return-void

    .line 479
    :catch_18
    move-exception v0

    .line 480
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    const/high16 v2, 0x10000000

    .line 583
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 584
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 585
    return-void
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 590
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 593
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v1, :cond_14

    .line 594
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_14

    .line 595
    const-string/jumbo v0, "android.intent.category.CAR_DOCK"

    .line 619
    :cond_14
    :goto_14
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 620
    return-void

    .line 597
    :cond_18
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 602
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_14

    .line 603
    const-string/jumbo v0, "android.intent.category.DESK_DOCK"

    goto :goto_14

    .line 607
    :cond_28
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_14

    .line 608
    const-string/jumbo v0, "android.intent.category.HOME"

    goto :goto_14
.end method

.method private updateComputedNightModeLocked()V
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_12

    .line 717
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_12

    .line 719
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 722
    :cond_12
    return-void
.end method

.method private updateConfigurationLocked()V
    .registers 5

    .prologue
    .line 430
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 431
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    if-eqz v1, :cond_2c

    .line 445
    :cond_6
    :goto_6
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_51

    .line 446
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_17

    .line 447
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 449
    :cond_17
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 450
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v1, :cond_4e

    const/16 v1, 0x20

    :goto_20
    or-int/2addr v0, v1

    .line 467
    :goto_21
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 468
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_2b

    .line 469
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 471
    :cond_2b
    return-void

    .line 433
    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_32

    .line 434
    const/4 v0, 0x4

    goto :goto_6

    .line 435
    :cond_32
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_38

    .line 436
    const/4 v0, 0x6

    goto :goto_6

    .line 437
    :cond_38
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_3e

    .line 438
    const/4 v0, 0x3

    goto :goto_6

    .line 439
    :cond_3e
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 440
    const/4 v0, 0x2

    goto :goto_6

    .line 441
    :cond_48
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_6

    .line 442
    const/4 v0, 0x7

    goto :goto_6

    .line 451
    :cond_4e
    const/16 v1, 0x10

    goto :goto_20

    .line 453
    :cond_51
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_5c

    .line 454
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v2}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 456
    :cond_5c
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    goto :goto_21
.end method

.method private updateDockState(I)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 408
    :try_start_5
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_1d

    .line 409
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 410
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    :goto_10
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 411
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1d

    .line 412
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    :cond_1d
    monitor-exit v2

    .line 416
    return-void

    :cond_1f
    move v0, v1

    .line 410
    goto :goto_10

    .line 407
    :catchall_21
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 4

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_3
    const-string/jumbo v0, "Current UI Mode Service state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v0, "  mDockState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 365
    const-string/jumbo v0, " mLastBroadcastState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 366
    const-string/jumbo v0, "  mNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    const-string/jumbo v0, " mNightModeLocked="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 368
    const-string/jumbo v0, " mCarModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 369
    const-string/jumbo v0, " mComputedNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 370
    const-string/jumbo v0, " mCarModeEnableFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 371
    const-string/jumbo v0, " mEnableCarDockLaunch="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 372
    const-string/jumbo v0, "  mCurUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v0, " mUiModeLocked="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 374
    const-string/jumbo v0, " mSetUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string/jumbo v0, "  mHoldingConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 376
    const-string/jumbo v0, " mSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_b3

    .line 379
    const-string/jumbo v0, "  mTwilightService.getLastTwilightState()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_b3
    .catchall {:try_start_3 .. :try_end_b3} :catchall_b5

    :cond_b3
    monitor-exit v1

    .line 383
    return-void

    .line 362
    :catchall_b5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_UiModeManagerService_9177()V
    .registers 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 236
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->sendConfigurationLocked()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    .line 234
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2a

    .line 388
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 389
    :try_start_9
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 391
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2b

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 392
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V

    .line 393
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    .line 394
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2d

    monitor-exit v3

    .line 397
    :cond_2a
    return-void

    :cond_2b
    move v0, v2

    .line 391
    goto :goto_1c

    .line 388
    :catchall_2d
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public onStart()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 200
    const-string/jumbo v0, "power"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 201
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const/16 v5, 0x1a

    invoke-virtual {v0, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 203
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 210
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 212
    const v0, 0x10e0032

    .line 211
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 214
    const v0, 0x10e0021

    .line 213
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_d7

    move v0, v1

    :goto_4f
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 216
    const v0, 0x10e0034

    .line 215
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_5b

    move v2, v1

    :cond_5b
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 218
    const v0, 0x1120055

    .line 217
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 219
    const v0, 0x1120078

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 220
    const v0, 0x1120077

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 222
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 223
    const-string/jumbo v2, "android.hardware.type.television"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 224
    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 223
    :cond_8c
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    .line 225
    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 228
    const v0, 0x10e002e

    .line 227
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 229
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 230
    const-string/jumbo v2, "ui_night_mode"

    .line 229
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 233
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;-><init>(BLjava/lang/Object;)V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".onStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 240
    const-string/jumbo v0, "uimode"

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    return-void

    :cond_d7
    move v0, v2

    .line 213
    goto/16 :goto_4f
.end method

.method setCarModeLocked(ZI)V
    .registers 4

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_6

    .line 401
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 403
    :cond_6
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    .line 404
    return-void
.end method

.method updateLocked(II)V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 488
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-ne v0, v11, :cond_70

    .line 489
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 490
    sget-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 495
    :goto_d
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_7b

    .line 496
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v1, v11, :cond_d6

    .line 497
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 498
    if-eqz v0, :cond_1d

    .line 499
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 501
    :cond_1d
    iput v11, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 502
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 517
    :goto_21
    if-eqz v0, :cond_9a

    .line 530
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    const-string/jumbo v0, "enableFlags"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    const-string/jumbo v0, "disableFlags"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 535
    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, -0x1

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 534
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 540
    iput-boolean v9, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 541
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 569
    :goto_4d
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v0, :cond_ce

    .line 570
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_c5

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v0, :cond_c5

    .line 571
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_c5

    move v0, v9

    .line 573
    :goto_60
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v0, v1, :cond_6f

    .line 574
    if-eqz v0, :cond_d0

    .line 575
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 580
    :cond_6f
    :goto_6f
    return-void

    .line 491
    :cond_70
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 492
    sget-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_d

    .line 504
    :cond_7b
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 505
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 506
    if-eqz v0, :cond_90

    .line 507
    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 509
    :cond_90
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 510
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_21

    .line 513
    :cond_97
    iput v10, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    goto :goto_21

    .line 544
    :cond_9a
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v0, :cond_ad

    .line 545
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v0, :cond_a9

    .line 546
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a9

    .line 547
    const-string/jumbo v3, "android.intent.category.CAR_DOCK"

    .line 565
    :cond_a9
    :goto_a9
    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    goto :goto_4d

    .line 549
    :cond_ad
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 551
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a9

    .line 552
    const-string/jumbo v3, "android.intent.category.DESK_DOCK"

    goto :goto_a9

    .line 555
    :cond_bd
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_a9

    .line 556
    const-string/jumbo v3, "android.intent.category.HOME"

    goto :goto_a9

    .line 572
    :cond_c5
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    if-ne v0, v11, :cond_cc

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    goto :goto_60

    :cond_cc
    move v0, v10

    goto :goto_60

    :cond_ce
    move v0, v10

    .line 569
    goto :goto_60

    .line 577
    :cond_d0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6f

    :cond_d6
    move-object v0, v3

    goto/16 :goto_21

    :cond_d9
    move-object v0, v3

    goto/16 :goto_d
.end method
