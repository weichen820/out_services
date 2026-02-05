.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$1;,
        Lcom/android/server/TelephonyRegistry$2;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field static final CHECK_PHONE_STATE_PERMISSION_MASK:I = 0xe0

.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x400c

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z


# instance fields
.field private hasNotifySubscriptionInfoChangedOccurred:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:Z

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivationState:[I

.field private mDataActivity:[I

.field private mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

.field private mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionState:[I

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mForegroundCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private mOtaspMode:I

.field private mPreciseCallState:Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mVoLteServiceState:Landroid/telephony/VoLteServiceState;

.field private mVoiceActivationState:[I


# direct methods
.method static synthetic -get0(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TelephonyRegistry;)I
    .registers 2

    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/TelephonyRegistry;)I
    .registers 2

    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/TelephonyRegistry;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/TelephonyRegistry;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 136
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 170
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 172
    iput-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Landroid/telephony/VoLteServiceState;

    invoke-direct {v1}, Landroid/telephony/VoLteServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 176
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 178
    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 180
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 182
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 184
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 186
    new-instance v1, Landroid/telephony/PreciseCallState;

    invoke-direct {v1}, Landroid/telephony/PreciseCallState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 188
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 190
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 193
    new-instance v1, Landroid/telephony/PreciseDataConnectionState;

    invoke-direct {v1}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    .line 192
    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 212
    new-instance v1, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v1, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 292
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 293
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 295
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 297
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 298
    new-array v1, v3, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    .line 299
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 300
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 301
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 302
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 303
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 304
    new-array v1, v3, [Landroid/telephony/ServiceState;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 305
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 306
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 307
    new-array v1, v3, [Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 308
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 309
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 310
    new-array v1, v3, [Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 311
    new-array v1, v3, [Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    .line 312
    new-array v1, v3, [Landroid/net/NetworkCapabilities;

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    move v1, v0

    .line 314
    :goto_ad
    if-ge v1, v3, :cond_fe

    .line 315
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v0, v4, v1

    .line 316
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v0, v4, v1

    .line 317
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v6, v4, v1

    .line 318
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v0, v4, v1

    .line 319
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v0, v4, v1

    .line 320
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string/jumbo v5, ""

    aput-object v5, v4, v1

    .line 321
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v5, v4, v1

    .line 322
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v5, v4, v1

    .line 323
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v0, v4, v1

    .line 324
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v0, v4, v1

    .line 325
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    aput-object v5, v4, v1

    .line 326
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 327
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v1

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 332
    :cond_fe
    if-eqz v2, :cond_10c

    .line 333
    :goto_100
    if-ge v0, v3, :cond_10c

    .line 334
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    .line 338
    :cond_10c
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 339
    return-void
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;II)V
    .registers 10

    .prologue
    const/4 v4, -0x1

    .line 1492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1494
    if-nez p1, :cond_63

    .line 1495
    :try_start_7
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_69
    .catchall {:try_start_7 .. :try_end_c} :catchall_6e

    .line 1502
    :goto_c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1505
    :goto_f
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1506
    const-string/jumbo v1, "state"

    .line 1507
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1509
    const-string/jumbo v1, "incoming_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    :cond_31
    if-eq p4, v4, :cond_3f

    .line 1515
    const-string/jumbo v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1519
    :cond_3f
    if-eq p3, v4, :cond_47

    .line 1520
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1524
    :cond_47
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1528
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1529
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 1528
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1531
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 1532
    const/16 v4, 0x33

    .line 1530
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1533
    return-void

    .line 1497
    :cond_63
    :try_start_63
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_68} :catch_69
    .catchall {:try_start_63 .. :try_end_68} :catchall_6e

    goto :goto_c

    .line 1499
    :catch_69
    move-exception v0

    .line 1502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    .line 1501
    :catchall_6e
    move-exception v0

    .line 1502
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1501
    throw v0
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 1571
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1572
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1573
    const-string/jumbo v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1576
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V
    .registers 14

    .prologue
    const/4 v3, 0x1

    .line 1542
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1543
    const-string/jumbo v1, "state"

    .line 1544
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1543
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1545
    if-nez p2, :cond_1f

    .line 1546
    const-string/jumbo v1, "networkUnvailable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1548
    :cond_1f
    if-eqz p3, :cond_27

    .line 1549
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1551
    :cond_27
    if-eqz p6, :cond_3b

    .line 1552
    const-string/jumbo v1, "linkProperties"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1553
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1554
    if-eqz v1, :cond_3b

    .line 1555
    const-string/jumbo v2, "iface"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    :cond_3b
    if-eqz p7, :cond_43

    .line 1559
    const-string/jumbo v1, "networkCapabilities"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1561
    :cond_43
    if-eqz p8, :cond_4b

    const-string/jumbo v1, "networkRoaming"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1563
    :cond_4b
    const-string/jumbo v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    const-string/jumbo v1, "apnType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1565
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1566
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1567
    return-void
.end method

.method private broadcastPreciseCallStateChanged(IIIII)V
    .registers 10

    .prologue
    .line 1580
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    const-string/jumbo v1, "ringing_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1582
    const-string/jumbo v1, "foreground_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1583
    const-string/jumbo v1, "background_state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1584
    const-string/jumbo v1, "disconnect_cause"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1585
    const-string/jumbo v1, "precise_disconnect_cause"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1586
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1587
    const-string/jumbo v3, "android.permission.READ_PRECISE_PHONE_STATE"

    .line 1586
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1588
    return-void
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 1593
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1594
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1595
    const-string/jumbo v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1596
    if-eqz p5, :cond_1c

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1597
    :cond_1c
    if-eqz p3, :cond_24

    const-string/jumbo v1, "apnType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1598
    :cond_24
    if-eqz p4, :cond_2c

    const-string/jumbo v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    :cond_2c
    if-eqz p6, :cond_34

    .line 1600
    const-string/jumbo v1, "linkProperties"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1602
    :cond_34
    if-eqz p7, :cond_3c

    const-string/jumbo v1, "failCause"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    :cond_3c
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1605
    const-string/jumbo v3, "android.permission.READ_PRECISE_PHONE_STATE"

    .line 1604
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1606
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .registers 8

    .prologue
    .line 1444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1446
    :try_start_4
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_3c
    .catchall {:try_start_4 .. :try_end_d} :catchall_41

    .line 1450
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1453
    :goto_10
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1454
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1455
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1456
    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1457
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1459
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1460
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1461
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1462
    return-void

    .line 1447
    :catch_3c
    move-exception v0

    .line 1450
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10

    .line 1449
    :catchall_41
    move-exception v0

    .line 1450
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1449
    throw v0
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .registers 8

    .prologue
    .line 1466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1468
    :try_start_4
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_33
    .catchall {:try_start_4 .. :try_end_9} :catchall_38

    .line 1472
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1475
    :goto_c
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SIG_STR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1476
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1477
    invoke-virtual {p1, v1}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1478
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1479
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1480
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1481
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1482
    return-void

    .line 1469
    :catch_33
    move-exception v0

    .line 1472
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 1471
    :catchall_38
    move-exception v0

    .line 1472
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1471
    throw v0
.end method

.method private canReadPhoneState(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 668
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 669
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 668
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    .line 672
    return v0

    .line 674
    :cond_e
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 675
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 674
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2a

    .line 676
    :goto_19
    if-eqz v0, :cond_2c

    .line 677
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x33

    invoke-virtual {v2, v4, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2c

    .line 679
    return v1

    :cond_2a
    move v0, v1

    .line 674
    goto :goto_19

    .line 681
    :cond_2c
    return v0
.end method

.method private checkListenerPermission(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1648
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_d

    .line 1649
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1650
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1649
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :cond_d
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_19

    .line 1655
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1656
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1655
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    :cond_19
    and-int/lit16 v0, p1, 0x400c

    if-eqz v0, :cond_26

    .line 1662
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1663
    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v2, 0x0

    .line 1662
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_26} :catch_41

    .line 1672
    :cond_26
    :goto_26
    and-int/lit16 v0, p1, 0x1800

    if-eqz v0, :cond_32

    .line 1673
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1674
    const-string/jumbo v1, "android.permission.READ_PRECISE_PHONE_STATE"

    .line 1673
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    :cond_32
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_40

    .line 1679
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1680
    const-string/jumbo v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 1679
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    :cond_40
    return-void

    .line 1666
    :catch_41
    move-exception v0

    .line 1667
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 1668
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    .line 1667
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private checkNotifyPermission()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1627
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1617
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1618
    const/4 v0, 0x1

    return v0

    .line 1620
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Modify Phone State Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1621
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1621
    const-string/jumbo v1, ", uid="

    .line 1620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1621
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1623
    const/4 v0, 0x0

    return v0
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 7

    .prologue
    .line 1737
    iget v1, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 1739
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_14

    .line 1743
    :try_start_6
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1744
    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1743
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_93

    .line 1750
    :cond_14
    :goto_14
    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_26

    .line 1752
    :try_start_18
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p2

    .line 1756
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3, v0}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_9d

    .line 1762
    :cond_26
    :goto_26
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_3c

    .line 1764
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1770
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v3, 0x63

    if-ne v0, v3, :cond_39

    const/4 v0, -0x1

    :cond_39
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3c} :catch_a6

    .line 1777
    :cond_3c
    :goto_3c
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1783
    :try_start_44
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_51} :catch_af

    .line 1789
    :cond_51
    :goto_51
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_5e

    .line 1795
    :try_start_55
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1796
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v2, v2, p2

    .line 1795
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5e} :catch_b8

    .line 1802
    :cond_5e
    :goto_5e
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_6b

    .line 1808
    :try_start_62
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1809
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v2, v2, p2

    .line 1808
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_c1

    .line 1815
    :cond_6b
    :goto_6b
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1819
    :try_start_73
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, p2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_81} :catch_ca

    .line 1825
    :cond_81
    :goto_81
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_92

    .line 1833
    :try_start_85
    iget-object v0, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v1, v1, p2

    .line 1834
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v2, v2, p2

    .line 1833
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_92} :catch_d3

    .line 1839
    :cond_92
    :goto_92
    return-void

    .line 1745
    :catch_93
    move-exception v0

    .line 1746
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1757
    :catch_9d
    move-exception v0

    .line 1758
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1772
    :catch_a6
    move-exception v0

    .line 1773
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 1784
    :catch_af
    move-exception v0

    .line 1785
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 1797
    :catch_b8
    move-exception v0

    .line 1798
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1810
    :catch_c1
    move-exception v0

    .line 1811
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 1820
    :catch_ca
    move-exception v0

    .line 1821
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 1835
    :catch_d3
    move-exception v0

    .line 1836
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_92
.end method

.method private enforceCarrierPrivilege()V
    .registers 7

    .prologue
    .line 1632
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1633
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1634
    const/4 v0, 0x0

    array-length v3, v2

    :goto_14
    if-ge v0, v3, :cond_23

    aget-object v4, v2, v0

    .line 1635
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v4

    .line 1636
    const/4 v5, 0x1

    .line 1635
    if-ne v4, v5, :cond_20

    .line 1637
    return-void

    .line 1634
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1641
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Carrier Privilege Permission Denial: from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1642
    const-string/jumbo v1, ", uid="

    .line 1641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1642
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1644
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1609
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1610
    return-void

    .line 1613
    :cond_7
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->enforceCarrierPrivilege()V

    .line 1614
    return-void
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 686
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    :goto_8
    return-object v0

    :cond_9
    const-string/jumbo v0, ""

    goto :goto_8
.end method

.method private handleRemoveListLocked()V
    .registers 3

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1687
    if-lez v0, :cond_23

    .line 1688
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1689
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_e

    .line 1691
    :cond_1e
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1693
    :cond_23
    return-void
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 475
    if-eqz p3, :cond_20c

    .line 477
    invoke-direct {p0, p3}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 479
    and-int/lit16 v0, p3, 0x400c

    if-eqz v0, :cond_17

    .line 481
    :try_start_e
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 482
    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v4, 0x0

    .line 481
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_17} :catch_15a

    .line 493
    :cond_17
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 497
    :try_start_1a
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 498
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 499
    :goto_25
    if-ge v2, v6, :cond_16f

    .line 500
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 501
    iget-object v7, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v5, v7, :cond_16a

    move-object v2, v0

    .line 511
    :goto_34
    iput-object p2, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 512
    iput-object p1, v2, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 513
    iput v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 514
    and-int/lit16 v0, p3, 0x40ec

    if-eqz v0, :cond_17f

    const/4 v0, 0x1

    .line 516
    :goto_3f
    if-eqz v0, :cond_182

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->canReadPhoneState(Ljava/lang/String;)Z

    move-result v0

    :goto_45
    iput-boolean v0, v2, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    .line 519
    invoke-static {p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_185

    .line 520
    const v0, 0x7fffffff

    iput v0, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 524
    :goto_52
    iget v0, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 526
    iget v1, v2, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 527
    iput p3, v2, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 531
    if-eqz p4, :cond_158

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_189

    move-result v0

    if-eqz v0, :cond_158

    .line 532
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_78

    .line 535
    :try_start_6a
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 536
    new-instance v3, Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v1

    invoke-direct {v3, v5}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 535
    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_78} :catch_18c
    .catchall {:try_start_6a .. :try_end_78} :catchall_189

    .line 541
    :cond_78
    :goto_78
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_8e

    .line 543
    :try_start_7c
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 545
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v0, v5, :cond_8b

    const/4 v0, -0x1

    :cond_8b
    invoke-interface {v3, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_8e} :catch_194
    .catchall {:try_start_7c .. :try_end_8e} :catchall_189

    .line 551
    :cond_8e
    :goto_8e
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_9b

    .line 553
    :try_start_92
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 554
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v3, v3, v1

    .line 553
    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_9b} :catch_19c
    .catchall {:try_start_92 .. :try_end_9b} :catchall_189

    .line 559
    :cond_9b
    :goto_9b
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_a8

    .line 561
    :try_start_9f
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 562
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v3, v3, v1

    .line 561
    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a8} :catch_1a4
    .catchall {:try_start_9f .. :try_end_a8} :catchall_189

    .line 567
    :cond_a8
    :goto_a8
    const/16 v0, 0x10

    :try_start_aa
    invoke-direct {p0, v2, v0}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_189

    move-result v0

    if-eqz v0, :cond_be

    .line 571
    :try_start_b0
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 572
    new-instance v3, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v5, v5, v1

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 571
    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_be} :catch_1ac
    .catchall {:try_start_b0 .. :try_end_be} :catchall_189

    .line 577
    :cond_be
    :goto_be
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_cf

    .line 579
    :try_start_c2
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v3, v3, v1

    .line 580
    invoke-direct {p0, v2, v1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v5

    .line 579
    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_cf} :catch_1b4
    .catchall {:try_start_c2 .. :try_end_cf} :catchall_189

    .line 585
    :cond_cf
    :goto_cf
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_e0

    .line 587
    :try_start_d3
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v1

    .line 588
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v5, v5, v1

    .line 587
    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_e0} :catch_1bc
    .catchall {:try_start_d3 .. :try_end_e0} :catchall_189

    .line 593
    :cond_e0
    :goto_e0
    and-int/lit16 v0, p3, 0x80

    if-eqz v0, :cond_ed

    .line 595
    :try_start_e4
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_ed} :catch_1c4
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_189

    .line 600
    :cond_ed
    :goto_ed
    and-int/lit16 v0, p3, 0x100

    if-eqz v0, :cond_fa

    .line 602
    :try_start_f1
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_f1 .. :try_end_fa} :catch_1cc
    .catchall {:try_start_f1 .. :try_end_fa} :catchall_189

    .line 607
    :cond_fa
    :goto_fa
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_105

    .line 609
    :try_start_fe
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_fe .. :try_end_105} :catch_1d4
    .catchall {:try_start_fe .. :try_end_105} :catchall_189

    .line 614
    :cond_105
    :goto_105
    const/16 v0, 0x400

    :try_start_107
    invoke-direct {p0, v2, v0}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_189

    move-result v0

    if-eqz v0, :cond_11a

    .line 618
    :try_start_10d
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_11a} :catch_1dc
    .catchall {:try_start_10d .. :try_end_11a} :catchall_189

    .line 623
    :cond_11a
    :goto_11a
    and-int/lit16 v0, p3, 0x800

    if-eqz v0, :cond_125

    .line 625
    :try_start_11e
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_125
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_125} :catch_1e4
    .catchall {:try_start_11e .. :try_end_125} :catchall_189

    .line 630
    :cond_125
    :goto_125
    and-int/lit16 v0, p3, 0x1000

    if-eqz v0, :cond_130

    .line 632
    :try_start_129
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 633
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 632
    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_130} :catch_1ec
    .catchall {:try_start_129 .. :try_end_130} :catchall_189

    .line 638
    :cond_130
    :goto_130
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_13c

    .line 640
    :try_start_135
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_13c
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_13c} :catch_1f4
    .catchall {:try_start_135 .. :try_end_13c} :catchall_189

    .line 645
    :cond_13c
    :goto_13c
    const/high16 v0, 0x20000

    and-int/2addr v0, p3

    if-eqz v0, :cond_14a

    .line 647
    :try_start_141
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v3, v3, v1

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_14a} :catch_1fc
    .catchall {:try_start_141 .. :try_end_14a} :catchall_189

    .line 652
    :cond_14a
    :goto_14a
    const/high16 v0, 0x40000

    and-int/2addr v0, p3

    if-eqz v0, :cond_158

    .line 654
    :try_start_14f
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v1, v3, v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_158
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_158} :catch_204
    .catchall {:try_start_14f .. :try_end_158} :catchall_189

    :cond_158
    :goto_158
    monitor-exit v4

    .line 665
    :goto_159
    return-void

    .line 485
    :catch_15a
    move-exception v0

    .line 486
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v4, 0x33

    invoke-virtual {v0, v4, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 488
    return-void

    .line 499
    :cond_16a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_25

    .line 505
    :cond_16f
    :try_start_16f
    new-instance v0, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$Record;)V

    .line 506
    iput-object v5, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 507
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    goto/16 :goto_34

    :cond_17f
    move v0, v1

    .line 514
    goto/16 :goto_3f

    :cond_182
    move v0, v1

    .line 516
    goto/16 :goto_45

    .line 522
    :cond_185
    iput p5, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_187
    .catchall {:try_start_16f .. :try_end_187} :catchall_189

    goto/16 :goto_52

    .line 493
    :catchall_189
    move-exception v0

    monitor-exit v4

    throw v0

    .line 537
    :catch_18c
    move-exception v0

    .line 538
    :try_start_18d
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_78

    .line 547
    :catch_194
    move-exception v0

    .line 548
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_8e

    .line 555
    :catch_19c
    move-exception v0

    .line 556
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_9b

    .line 563
    :catch_1a4
    move-exception v0

    .line 564
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_a8

    .line 573
    :catch_1ac
    move-exception v0

    .line 574
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_be

    .line 581
    :catch_1b4
    move-exception v0

    .line 582
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_cf

    .line 589
    :catch_1bc
    move-exception v0

    .line 590
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_e0

    .line 596
    :catch_1c4
    move-exception v0

    .line 597
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_ed

    .line 603
    :catch_1cc
    move-exception v0

    .line 604
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_fa

    .line 610
    :catch_1d4
    move-exception v0

    .line 611
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_105

    .line 619
    :catch_1dc
    move-exception v0

    .line 620
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_11a

    .line 626
    :catch_1e4
    move-exception v0

    .line 627
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_125

    .line 634
    :catch_1ec
    move-exception v0

    .line 635
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_130

    .line 641
    :catch_1f4
    move-exception v0

    .line 642
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_13c

    .line 648
    :catch_1fc
    move-exception v0

    .line 649
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_14a

    .line 655
    :catch_204
    move-exception v0

    .line 656
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_20a
    .catchall {:try_start_18d .. :try_end_20a} :catchall_189

    goto/16 :goto_158

    .line 663
    :cond_20c
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_159
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1720
    const-string/jumbo v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 690
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 691
    :try_start_3
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 692
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_24

    .line 693
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v0, p1, :cond_20

    .line 699
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_26

    monitor-exit v2

    .line 700
    return-void

    .line 692
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_24
    monitor-exit v2

    .line 704
    return-void

    .line 690
    :catchall_26
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1700
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1701
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    if-ne v4, v1, :cond_11

    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_15

    move-result v0

    .line 1708
    :cond_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1710
    return v0

    .line 1707
    :catchall_15
    move-exception v0

    .line 1708
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1707
    throw v0
.end method

.method private validatePhoneId(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1714
    if-ltz p1, :cond_8

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge p1, v1, :cond_8

    const/4 v0, 0x1

    .line 1716
    :cond_8
    return v0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 362
    :try_start_5
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 363
    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 364
    const-string/jumbo v4, "addOnSubscriptionsChangedListener"

    .line 362
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_10} :catch_43

    .line 379
    :cond_10
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 382
    :try_start_13
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 383
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v0

    .line 384
    :goto_1e
    if-ge v1, v5, :cond_62

    .line 385
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 386
    iget-object v6, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v4, v6, :cond_5e

    .line 396
    :goto_2c
    iput-object p2, v0, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 397
    iput-object p1, v0, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 398
    iput v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 399
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 400
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    .line 405
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_70

    if-eqz v1, :cond_7a

    .line 408
    :try_start_3c
    iget-object v1, v0, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_73
    .catchall {:try_start_3c .. :try_end_41} :catchall_70

    :goto_41
    monitor-exit v3

    .line 418
    return-void

    .line 366
    :catch_43
    move-exception v1

    .line 367
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 368
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 369
    const-string/jumbo v4, "addOnSubscriptionsChangedListener"

    .line 367
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x33

    invoke-virtual {v1, v4, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    .line 373
    return-void

    .line 384
    :cond_5e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 390
    :cond_62
    :try_start_62
    new-instance v0, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$Record;)V

    .line 391
    iput-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 392
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_70

    goto :goto_2c

    .line 379
    :catchall_70
    move-exception v0

    monitor-exit v3

    throw v0

    .line 410
    :catch_73
    move-exception v1

    .line 412
    :try_start_74
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_41

    .line 415
    :cond_7a
    const-string/jumbo v0, "listen oscl: hasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_74 .. :try_end_80} :catchall_70

    goto :goto_41
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 1387
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "  "

    invoke-direct {v1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "TelephonyRegistry"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 1391
    :cond_14
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1392
    :try_start_17
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1393
    const-string/jumbo v0, "last known state:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1395
    const/4 v0, 0x0

    :goto_27
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1ce

    .line 1396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Phone Id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVoiceActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataConnectionLinkProperties="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataConnectionNetworkCapabilities="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1410
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aget-object v5, v5, v0

    .line 1409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_27

    .line 1415
    :cond_1ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mConnectedApns="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreciseDataConnectionState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreciseCallState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCarrierNetworkChangeState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRingingCallState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mForegroundCallState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBackgroundCallState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mVoLteServiceState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1426
    const-string/jumbo v0, "local logs:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1428
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, v1, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registrations: count="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1432
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2ce
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1433
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2dd
    .catchall {:try_start_17 .. :try_end_2dd} :catchall_2de

    goto :goto_2ce

    .line 1391
    :catchall_2de
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1435
    :cond_2e1
    :try_start_2e1
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2e4
    .catchall {:try_start_2e1 .. :try_end_2e4} :catchall_2de

    monitor-exit v2

    .line 1437
    return-void
.end method

.method idMatch(III)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1725
    if-gez p2, :cond_b

    .line 1727
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne v2, p3, :cond_9

    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8

    .line 1729
    :cond_b
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_17

    .line 1730
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v2, :cond_15

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    .line 1732
    :cond_17
    if-ne p1, p2, :cond_1a

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 11

    .prologue
    .line 456
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 458
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 12

    .prologue
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    .line 463
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 464
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 3

    .prologue
    .line 1016
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 1017
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .registers 8

    .prologue
    .line 1020
    const-string/jumbo v0, "notifyCallForwardingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1021
    return-void

    .line 1027
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1028
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1029
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1030
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v0, v2

    .line 1031
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1033
    const/16 v4, 0x8

    .line 1032
    invoke-virtual {v0, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1034
    iget v4, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_4c

    move-result v4

    .line 1032
    if-eqz v4, :cond_21

    .line 1036
    :try_start_3d
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_4c

    goto :goto_21

    .line 1037
    :catch_43
    move-exception v4

    .line 1038
    :try_start_44
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_4c

    goto :goto_21

    .line 1027
    :catchall_4c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1043
    :cond_4f
    :try_start_4f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    monitor-exit v1

    .line 1045
    return-void
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, -0x1

    .line 707
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 708
    return-void

    .line 715
    :cond_b
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 716
    :try_start_e
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 717
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 718
    iget v1, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_43

    const v4, 0x7fffffff

    if-ne v1, v4, :cond_14

    .line 720
    :try_start_2f
    iget-boolean v1, v0, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    if-eqz v1, :cond_46

    move-object v1, p2

    .line 721
    :goto_34
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_39} :catch_3a
    .catchall {:try_start_2f .. :try_end_39} :catchall_43

    goto :goto_14

    .line 722
    :catch_3a
    move-exception v1

    .line 723
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_43

    goto :goto_14

    .line 715
    :catchall_43
    move-exception v0

    monitor-exit v2

    throw v0

    .line 720
    :cond_46
    :try_start_46
    const-string/jumbo v1, ""
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_3a
    .catchall {:try_start_46 .. :try_end_49} :catchall_43

    goto :goto_34

    .line 727
    :cond_4a
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_43

    monitor-exit v2

    .line 732
    invoke-direct {p0, p1, p2, v5, v5}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 735
    return-void
.end method

.method public notifyCallStateForPhoneId(IIILjava/lang/String;)V
    .registers 10

    .prologue
    .line 739
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 740
    return-void

    .line 746
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 747
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 748
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p3, v0, p1

    .line 749
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p4, v0, p1

    .line 750
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 751
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 752
    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v3, p2, :cond_21

    .line 753
    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_53

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_21

    .line 755
    :try_start_40
    invoke-direct {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v3

    .line 756
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_4a
    .catchall {:try_start_40 .. :try_end_49} :catchall_53

    goto :goto_21

    .line 757
    :catch_4a
    move-exception v3

    .line 758
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_53

    goto :goto_21

    .line 746
    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0

    .line 763
    :cond_56
    :try_start_56
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_53

    monitor-exit v1

    .line 765
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 766
    return-void
.end method

.method public notifyCarrierNetworkChange(Z)V
    .registers 6

    .prologue
    .line 930
    const-string/jumbo v0, "notifyCarrierNetworkChange()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 937
    :try_start_9
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 938
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 940
    const/high16 v3, 0x10000

    .line 939
    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_34

    move-result v3

    if-eqz v3, :cond_11

    .line 942
    :try_start_25
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    goto :goto_11

    .line 943
    :catch_2b
    move-exception v3

    .line 944
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_11

    .line 936
    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0

    .line 948
    :cond_37
    :try_start_37
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    monitor-exit v1

    .line 950
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 954
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 957
    const-string/jumbo v0, "notifyCellInfo()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 958
    return-void

    .line 965
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 966
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 967
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 968
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 970
    const/16 v4, 0x400

    invoke-direct {p0, v0, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 971
    iget v4, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_4d

    move-result v4

    .line 970
    if-eqz v4, :cond_22

    .line 976
    :try_start_3e
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_44
    .catchall {:try_start_3e .. :try_end_43} :catchall_4d

    goto :goto_22

    .line 977
    :catch_44
    move-exception v4

    .line 978
    :try_start_45
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4d

    goto :goto_22

    .line 965
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 983
    :cond_50
    :try_start_50
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    monitor-exit v1

    .line 985
    return-void
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 1209
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 1210
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .registers 9

    .prologue
    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1214
    const-string/jumbo v1, " cellLocation="

    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v0, "notifyCellLocation()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1216
    return-void

    .line 1222
    :cond_2c
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1223
    :try_start_2f
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1224
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1225
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p2, v0, v2

    .line 1226
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1227
    const/16 v4, 0x10

    invoke-direct {p0, v0, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1228
    iget v4, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_5c
    .catchall {:try_start_2f .. :try_end_5c} :catchall_73

    move-result v4

    .line 1227
    if-eqz v4, :cond_43

    .line 1234
    :try_start_5f
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_69} :catch_6a
    .catchall {:try_start_5f .. :try_end_69} :catchall_73

    goto :goto_43

    .line 1235
    :catch_6a
    move-exception v4

    .line 1236
    :try_start_6b
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_73

    goto :goto_43

    .line 1222
    :catchall_73
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1241
    :cond_76
    :try_start_76
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_73

    monitor-exit v1

    .line 1243
    return-void
.end method

.method public notifyDataActivity(I)V
    .registers 3

    .prologue
    .line 1048
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 1049
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .registers 8

    .prologue
    .line 1052
    const-string/jumbo v0, "notifyDataActivity()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1053
    return-void

    .line 1055
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1056
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1057
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1058
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v0, v2

    .line 1059
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1061
    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1062
    iget v4, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_4c

    move-result v4

    .line 1061
    if-eqz v4, :cond_21

    .line 1064
    :try_start_3d
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_4c

    goto :goto_21

    .line 1065
    :catch_43
    move-exception v4

    .line 1066
    :try_start_44
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_4c

    goto :goto_21

    .line 1055
    :catchall_4c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1071
    :cond_4f
    :try_start_4f
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    monitor-exit v1

    .line 1073
    return-void
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 21

    .prologue
    .line 1078
    const v1, 0x7fffffff

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 1081
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1174
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1180
    const-string/jumbo v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1181
    return-void

    .line 1187
    :cond_d
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1188
    :try_start_10
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    .line 1190
    const-string/jumbo v4, ""

    const-string/jumbo v7, ""

    .line 1189
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1190
    const/4 v6, 0x0

    move-object v3, p3

    move-object v5, p2

    .line 1188
    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1191
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1193
    const/16 v2, 0x1000

    .line 1192
    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_4d

    move-result v2

    if-eqz v2, :cond_28

    .line 1195
    :try_start_3c
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_44
    .catchall {:try_start_3c .. :try_end_43} :catchall_4d

    goto :goto_28

    .line 1196
    :catch_44
    move-exception v2

    .line 1197
    :try_start_45
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4d

    goto :goto_28

    .line 1187
    :catchall_4d
    move-exception v0

    monitor-exit v8

    throw v0

    .line 1201
    :cond_50
    :try_start_50
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    monitor-exit v8

    .line 1203
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1205
    const-string/jumbo v4, ""

    const-string/jumbo v7, ""

    move-object v0, p0

    move v1, v9

    move v2, v10

    move-object v3, p3

    move-object v5, p2

    move-object v6, v11

    .line 1204
    invoke-direct/range {v0 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1206
    return-void
.end method

.method public notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 22

    .prologue
    .line 1087
    const-string/jumbo v1, "notifyDataConnection()"

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1088
    return-void

    .line 1097
    :cond_a
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1098
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1099
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 1100
    const/4 v1, 0x0

    .line 1101
    const/4 v3, 0x2

    if-ne p2, v3, :cond_d1

    .line 1102
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1103
    const-string/jumbo v3, "ims"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1102
    if-eqz v3, :cond_48

    .line 1104
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v2

    if-eq v3, p2, :cond_48

    .line 1106
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput p2, v1, v2

    .line 1107
    const/4 v1, 0x1

    .line 1121
    :cond_48
    :goto_48
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aput-object p7, v3, v2

    .line 1122
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aput-object p8, v3, v2

    .line 1123
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v3, v3, v2

    move/from16 v0, p9

    if-eq v3, v0, :cond_5d

    .line 1124
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput p9, v1, v2

    .line 1126
    const/4 v1, 0x1

    .line 1128
    :cond_5d
    if-eqz v1, :cond_f1

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1130
    const-string/jumbo v3, ", "

    .line 1129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1130
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v3, v3, v2

    .line 1129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1130
    const-string/jumbo v3, ")"

    .line 1129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1132
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1133
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9b
    :goto_9b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1135
    const/16 v4, 0x40

    .line 1134
    invoke-virtual {v1, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 1136
    iget v4, v1, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_b4
    .catchall {:try_start_d .. :try_end_b4} :catchall_ce

    move-result v4

    .line 1134
    if-eqz v4, :cond_9b

    .line 1141
    :try_start_b7
    iget-object v4, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1142
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, v2

    .line 1143
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v6, v6, v2

    .line 1141
    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_c4} :catch_c5
    .catchall {:try_start_b7 .. :try_end_c4} :catchall_ce

    goto :goto_9b

    .line 1144
    :catch_c5
    move-exception v4

    .line 1145
    :try_start_c6
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_ce

    goto :goto_9b

    .line 1097
    :catchall_ce
    move-exception v1

    monitor-exit v9

    throw v1

    .line 1111
    :cond_d1
    :try_start_d1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1112
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1113
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput p2, v1, v2

    .line 1114
    const/4 v1, 0x1

    goto/16 :goto_48

    .line 1149
    :cond_ee
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1151
    :cond_f1
    new-instance v1, Landroid/telephony/PreciseDataConnectionState;

    .line 1152
    const-string/jumbo v8, ""

    move v2, p2

    move/from16 v3, p9

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object v6, p4

    move-object/from16 v7, p7

    .line 1151
    invoke-direct/range {v1 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1153
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10b
    :goto_10b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_130

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1155
    const/16 v3, 0x1000

    .line 1154
    invoke-virtual {v1, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_11c
    .catchall {:try_start_d1 .. :try_end_11c} :catchall_ce

    move-result v3

    if-eqz v3, :cond_10b

    .line 1157
    :try_start_11f
    iget-object v3, v1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1158
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1157
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_126} :catch_127
    .catchall {:try_start_11f .. :try_end_126} :catchall_ce

    goto :goto_10b

    .line 1159
    :catch_127
    move-exception v3

    .line 1160
    :try_start_128
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 1165
    :cond_130
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_133
    .catchall {:try_start_128 .. :try_end_133} :catchall_ce

    monitor-exit v9

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p10

    move v10, p1

    .line 1167
    invoke-direct/range {v1 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V

    .line 1170
    const-string/jumbo v8, ""

    move-object v1, p0

    move v2, p2

    move/from16 v3, p9

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object v6, p4

    move-object/from16 v7, p7

    .line 1169
    invoke-direct/range {v1 .. v8}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method public notifyDisconnectCause(II)V
    .registers 10

    .prologue
    .line 1294
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1295
    return-void

    .line 1297
    :cond_a
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1298
    :try_start_d
    new-instance v0, Landroid/telephony/PreciseCallState;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1299
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move v4, p1

    move v5, p2

    .line 1298
    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1300
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1301
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_47

    move-result v2

    if-eqz v2, :cond_22

    .line 1303
    :try_start_36
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_47

    goto :goto_22

    .line 1304
    :catch_3e
    move-exception v2

    .line 1305
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_47

    goto :goto_22

    .line 1297
    :catchall_47
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1309
    :cond_4a
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_47

    monitor-exit v6

    .line 1311
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1312
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 1311
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    .line 1313
    return-void
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .registers 8

    .prologue
    .line 989
    const-string/jumbo v0, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 990
    return-void

    .line 996
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 997
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 998
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v0, p1

    .line 999
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1001
    const/4 v3, 0x4

    .line 1000
    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1002
    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_47

    move-result v3

    .line 1000
    if-eqz v3, :cond_1d

    .line 1004
    :try_start_38
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_3e
    .catchall {:try_start_38 .. :try_end_3d} :catchall_47

    goto :goto_1d

    .line 1005
    :catch_3e
    move-exception v3

    .line 1006
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_47

    goto :goto_1d

    .line 996
    :catchall_47
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1011
    :cond_4a
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_47

    monitor-exit v1

    .line 1013
    return-void
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .registers 8

    .prologue
    .line 1361
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1362
    return-void

    .line 1365
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1366
    :try_start_d
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1371
    const v3, 0x8000

    .line 1370
    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1372
    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-eq v3, p1, :cond_33

    .line 1373
    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_42

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_13

    .line 1375
    :cond_33
    :try_start_33
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catchall {:try_start_33 .. :try_end_38} :catchall_42

    goto :goto_13

    .line 1376
    :catch_39
    move-exception v3

    .line 1377
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_42

    goto :goto_13

    .line 1365
    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1381
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_42

    monitor-exit v1

    .line 1383
    return-void
.end method

.method public notifyOtaspChanged(I)V
    .registers 6

    .prologue
    .line 1246
    const-string/jumbo v0, "notifyOtaspChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1247
    return-void

    .line 1249
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1250
    :try_start_d
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1251
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1252
    const/16 v3, 0x200

    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_38

    move-result v3

    if-eqz v3, :cond_15

    .line 1254
    :try_start_29
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_38

    goto :goto_15

    .line 1255
    :catch_2f
    move-exception v3

    .line 1256
    :try_start_30
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_15

    .line 1249
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1260
    :cond_3b
    :try_start_3b
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    monitor-exit v1

    .line 1262
    return-void
.end method

.method public notifyPreciseCallState(III)V
    .registers 12

    .prologue
    const/4 v7, -0x1

    .line 1266
    const-string/jumbo v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1267
    return-void

    .line 1269
    :cond_b
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1270
    :try_start_e
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 1271
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1272
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 1273
    new-instance v0, Landroid/telephony/PreciseCallState;

    .line 1275
    const/4 v4, -0x1

    .line 1276
    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1273
    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1277
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1278
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_4b

    move-result v2

    if-eqz v2, :cond_26

    .line 1280
    :try_start_3a
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42
    .catchall {:try_start_3a .. :try_end_41} :catchall_4b

    goto :goto_26

    .line 1281
    :catch_42
    move-exception v2

    .line 1282
    :try_start_43
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4b

    goto :goto_26

    .line 1269
    :catchall_4b
    move-exception v0

    monitor-exit v6

    throw v0

    .line 1286
    :cond_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_4b

    monitor-exit v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move v5, v7

    .line 1288
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    .line 1291
    return-void
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    .line 1317
    const-string/jumbo v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1318
    return-void

    .line 1320
    :cond_a
    iget-object v8, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1321
    :try_start_d
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    .line 1322
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1323
    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v7, p4

    .line 1321
    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1324
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1326
    const/16 v2, 0x1000

    .line 1325
    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_46

    move-result v2

    if-eqz v2, :cond_21

    .line 1328
    :try_start_35
    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d
    .catchall {:try_start_35 .. :try_end_3c} :catchall_46

    goto :goto_21

    .line 1329
    :catch_3d
    move-exception v2

    .line 1330
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    goto :goto_21

    .line 1320
    :catchall_46
    move-exception v0

    monitor-exit v8

    throw v0

    .line 1334
    :cond_49
    :try_start_49
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_46

    monitor-exit v8

    .line 1336
    const/4 v1, -0x1

    .line 1337
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v7, p4

    .line 1336
    invoke-direct/range {v0 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .registers 9

    .prologue
    .line 769
    const-string/jumbo v0, "notifyServiceState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 770
    return-void

    .line 773
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 774
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v2, " state="

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 780
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 781
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v0, p1

    .line 783
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 788
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 789
    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_64
    .catchall {:try_start_d .. :try_end_64} :catchall_7b

    move-result v3

    .line 788
    if-eqz v3, :cond_4c

    .line 796
    :try_start_67
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_71} :catch_72
    .catchall {:try_start_67 .. :try_end_71} :catchall_7b

    goto :goto_4c

    .line 797
    :catch_72
    move-exception v3

    .line 798
    :try_start_73
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_7b

    goto :goto_4c

    .line 773
    :catchall_7b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 803
    :cond_7e
    :try_start_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 805
    :cond_95
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_7b

    monitor-exit v1

    .line 807
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    .line 808
    return-void
.end method

.method public notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .registers 9

    .prologue
    .line 873
    const-string/jumbo v0, "notifySignalStrength()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 874
    return-void

    .line 881
    :cond_a
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 882
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 884
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p3, v0, p1

    .line 885
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 891
    const/16 v1, 0x100

    .line 890
    invoke-virtual {v0, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 892
    iget v1, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_6a

    move-result v1

    .line 890
    if-eqz v1, :cond_43

    .line 899
    :try_start_39
    iget-object v1, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_43} :catch_6d
    .catchall {:try_start_39 .. :try_end_43} :catchall_6a

    .line 904
    :cond_43
    :goto_43
    const/4 v1, 0x2

    :try_start_44
    invoke-virtual {v0, v1}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 905
    iget v1, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_6a

    move-result v1

    .line 904
    if-eqz v1, :cond_1d

    .line 907
    :try_start_52
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 908
    const/16 v4, 0x63

    if-ne v1, v4, :cond_5b

    const/4 v1, -0x1

    .line 914
    :cond_5b
    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_60} :catch_61
    .catchall {:try_start_52 .. :try_end_60} :catchall_6a

    goto :goto_1d

    .line 915
    :catch_61
    move-exception v1

    .line 916
    :try_start_62
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_6a

    goto :goto_1d

    .line 881
    :catchall_6a
    move-exception v0

    monitor-exit v2

    throw v0

    .line 900
    :catch_6d
    move-exception v1

    .line 901
    :try_start_6e
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 921
    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySignalStrengthForPhoneId: invalid phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 923
    :cond_8d
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_90
    .catchall {:try_start_6e .. :try_end_90} :catchall_6a

    monitor-exit v2

    .line 925
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    .line 926
    return-void
.end method

.method public notifySimActivationStateChangedForPhoneId(IIII)V
    .registers 9

    .prologue
    .line 812
    const-string/jumbo v0, "notifySimActivationState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 813
    return-void

    .line 819
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 820
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_67

    move-result v0

    if-eqz v0, :cond_6f

    .line 821
    packed-switch p3, :pswitch_data_8c

    monitor-exit v1

    .line 829
    return-void

    .line 823
    :pswitch_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput p4, v0, p1

    .line 831
    :goto_1c
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_67

    .line 838
    if-nez p3, :cond_45

    .line 840
    const/high16 v3, 0x20000

    .line 839
    :try_start_32
    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    .line 838
    if-eqz v3, :cond_45

    .line 841
    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3

    .line 838
    if-eqz v3, :cond_45

    .line 847
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    .line 849
    :cond_45
    const/4 v3, 0x1

    if-ne p3, v3, :cond_22

    .line 851
    const/high16 v3, 0x40000

    .line 850
    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    .line 849
    if-eqz v3, :cond_22

    .line 852
    iget v3, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3

    .line 849
    if-eqz v3, :cond_22

    .line 858
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_5d} :catch_5e
    .catchall {:try_start_32 .. :try_end_5d} :catchall_67

    goto :goto_22

    .line 860
    :catch_5e
    move-exception v3

    .line 861
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_67

    goto :goto_22

    .line 819
    :catchall_67
    move-exception v0

    monitor-exit v1

    throw v0

    .line 826
    :pswitch_6a
    :try_start_6a
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput p4, v0, p1

    goto :goto_1c

    .line 865
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySimActivationStateForPhoneId: INVALID phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 867
    :cond_86
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_89
    .catchall {:try_start_6a .. :try_end_89} :catchall_67

    monitor-exit v1

    .line 869
    return-void

    .line 821
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_6a
    .end packed-switch
.end method

.method public notifySubscriptionInfoChanged()V
    .registers 5

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 431
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v0, :cond_24

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 435
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 436
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 437
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 438
    invoke-virtual {v0}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_53

    move-result v3

    if-eqz v3, :cond_32

    .line 441
    :try_start_44
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_53

    goto :goto_32

    .line 443
    :catch_4a
    move-exception v3

    .line 445
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_53

    goto :goto_32

    .line 430
    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0

    .line 449
    :cond_56
    :try_start_56
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_53

    monitor-exit v1

    .line 451
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .registers 8

    .prologue
    .line 1341
    const-string/jumbo v0, "notifyVoLteServiceStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1342
    return-void

    .line 1344
    :cond_a
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1345
    :try_start_d
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 1346
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    .line 1347
    const/16 v3, 0x4000

    invoke-virtual {v0, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_3f

    move-result v3

    if-eqz v3, :cond_15

    .line 1349
    :try_start_29
    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 1350
    new-instance v4, Landroid/telephony/VoLteServiceState;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    invoke-direct {v4, v5}, Landroid/telephony/VoLteServiceState;-><init>(Landroid/telephony/VoLteServiceState;)V

    .line 1349
    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_35} :catch_36
    .catchall {:try_start_29 .. :try_end_35} :catchall_3f

    goto :goto_15

    .line 1351
    :catch_36
    move-exception v3

    .line 1352
    :try_start_37
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_15

    .line 1344
    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1356
    :cond_42
    :try_start_42
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    monitor-exit v1

    .line 1358
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 4

    .prologue
    .line 424
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 425
    return-void
.end method

.method public systemRunning()V
    .registers 4

    .prologue
    .line 343
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 344
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    return-void
.end method
