.class public Lcom/android/server/MmsServiceBroker;
.super Lcom/android/server/SystemService;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MmsServiceBroker$1;,
        Lcom/android/server/MmsServiceBroker$2;,
        Lcom/android/server/MmsServiceBroker$3;,
        Lcom/android/server/MmsServiceBroker$BinderService;
    }
.end annotation


# static fields
.field private static final FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_MMS_SENT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_SENT_URI:Landroid/net/Uri;

.field private static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final RETRY_DELAY_ON_DISCONNECTION_MS:J = 0xbb8L

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "MmsServiceBroker"


# instance fields
.field private volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mService:Lcom/android/internal/telephony/IMms;

.field private final mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

.field private volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get3()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;
    .registers 2

    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/MmsServiceBroker;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.mms.service"

    const-string/jumbo v2, "com.android.mms.service.MmsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sput-object v0, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 62
    const-string/jumbo v0, "content://sms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    .line 63
    const-string/jumbo v0, "content://mms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    .line 64
    const-string/jumbo v0, "content://sms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    .line 65
    const-string/jumbo v0, "content://mms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 76
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    new-instance v0, Lcom/android/server/MmsServiceBroker$1;

    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$1;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/android/server/MmsServiceBroker$2;

    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$2;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 120
    new-instance v0, Lcom/android/server/MmsServiceBroker$3;

    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$3;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    .line 220
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 221
    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    .line 222
    return-void
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_11

    .line 301
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 303
    :cond_11
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_15

    array-length v1, v0

    if-lez v1, :cond_15

    .line 324
    aget-object v0, v0, v2

    return-object v0

    .line 326
    :cond_15
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private getOrConnectService()Lcom/android/internal/telephony/IMms;
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 253
    monitor-enter p0

    .line 254
    :try_start_4
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_c

    .line 255
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_42

    monitor-exit p0

    return-object v0

    .line 258
    :cond_c
    :try_start_c
    const-string/jumbo v0, "MmsServiceBroker"

    const-string/jumbo v1, "MmsService not connected. Try connecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 260
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_42

    move-result-wide v0

    add-long v4, v0, v2

    move-wide v0, v2

    .line 264
    :goto_28
    cmp-long v6, v0, v2

    if-lez v6, :cond_4c

    .line 267
    :try_start_2c
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_37
    .catchall {:try_start_2c .. :try_end_2f} :catchall_42

    .line 271
    :goto_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_45

    .line 273
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_42

    monitor-exit p0

    return-object v0

    .line 268
    :catch_37
    move-exception v0

    .line 269
    :try_start_38
    const-string/jumbo v1, "MmsServiceBroker"

    const-string/jumbo v6, "Connection wait interrupted"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_42

    goto :goto_2f

    .line 253
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    :cond_45
    :try_start_45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_28

    .line 279
    :cond_4c
    const-string/jumbo v0, "MmsServiceBroker"

    const-string/jumbo v1, "Can not connect to MmsService (timed out)"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_42

    monitor-exit p0

    .line 280
    return-object v7
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 308
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 310
    :cond_c
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getServiceGuarded()Lcom/android/internal/telephony/IMms;
    .registers 2

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/server/MmsServiceBroker;->getOrConnectService()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_7

    .line 294
    return-object v0

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 315
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 316
    const-string/jumbo v1, "phone"

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 318
    :cond_11
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private tryConnecting()V
    .registers 5

    .prologue
    .line 234
    const-string/jumbo v0, "MmsServiceBroker"

    const-string/jumbo v1, "Connecting to MmsService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-enter p0

    .line 236
    :try_start_a
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_19

    .line 237
    const-string/jumbo v0, "MmsServiceBroker"

    const-string/jumbo v1, "Already connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_44

    monitor-exit p0

    .line 238
    return-void

    .line 240
    :cond_19
    :try_start_19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    sget-object v1, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_44

    .line 243
    :try_start_23
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 244
    const-string/jumbo v0, "MmsServiceBroker"

    const-string/jumbo v1, "Failed to bind to MmsService"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_37} :catch_39
    .catchall {:try_start_23 .. :try_end_37} :catchall_44

    :cond_37
    :goto_37
    monitor-exit p0

    .line 250
    return-void

    .line 246
    :catch_39
    move-exception v0

    .line 247
    :try_start_3a
    const-string/jumbo v1, "MmsServiceBroker"

    const-string/jumbo v2, "Forbidden to bind to MmsService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    goto :goto_37

    .line 235
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onStart()V
    .registers 4

    .prologue
    .line 226
    const-string/jumbo v0, "imms"

    new-instance v1, Lcom/android/server/MmsServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    return-void
.end method

.method public systemRunning()V
    .registers 3

    .prologue
    .line 230
    const-string/jumbo v0, "MmsServiceBroker"

    const-string/jumbo v1, "Delay connecting to MmsService until an API is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method
