.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$1;,
        Lcom/android/server/LocationManagerService$Identity;,
        Lcom/android/server/LocationManagerService$LinkedCallback;,
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$Receiver;,
        Lcom/android/server/LocationManagerService$UpdateRecord;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field public static final D:Z

.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x3e8L

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x1

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private mComboNlpPackageName:Ljava/lang/String;

.field private mComboNlpReadyMarker:Ljava/lang/String;

.field private mComboNlpScreenMarker:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserProfiles:[I

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

.field private mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

.field private mGnssBatchingInProgress:Z

.field private mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

.field private final mGnssMeasurementsListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/location/IGnssMeasurementsListener;",
            "Lcom/android/server/LocationManagerService$Identity;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

.field private final mGnssNavigationMessageListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/location/IGnssNavigationMessageListener;",
            "Lcom/android/server/LocationManagerService$Identity;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LocationManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateBackgroundThrottlingWhitelistLocked()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LocationManagerService;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/LocationManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->onUidImportanceChanged(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/LocationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->shutdownComponents()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/LocationManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->switchUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 126
    const-string/jumbo v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    .line 168
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 227
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v0}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 245
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 244
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    .line 248
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    .line 251
    iput v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 252
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 261
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 2900
    new-instance v0, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 265
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 266
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 271
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 270
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 273
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 281
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_b0

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_b0
    return-void
.end method

.method private addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 4

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    return-void
.end method

.method private addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 2993
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2994
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2996
    :cond_2a
    new-instance v0, Lcom/android/server/location/MockProvider;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 2997
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2998
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2999
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3001
    return-void
.end method

.method private applyAllProviderRequirementsLocked()V
    .registers 4

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2182
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2186
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_6

    .line 2188
    :cond_24
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .registers 16

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1739
    if-nez v0, :cond_b

    return-void

    .line 1741
    :cond_b
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1742
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    .line 1743
    new-instance v8, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v8}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 1745
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1748
    const-string/jumbo v3, "location_background_throttle_interval_ms"

    .line 1749
    const-wide/16 v4, 0x3e8

    .line 1746
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 1751
    if-eqz v1, :cond_119

    .line 1752
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_32
    :goto_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1753
    iget-object v3, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v3, v3, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1755
    iget-object v3, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    .line 1756
    iget-object v4, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 1757
    iget-object v5, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    .line 1758
    iget-object v6, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1754
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1759
    iget-object v6, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    .line 1760
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    .line 1762
    iget-object v3, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v3

    if-nez v3, :cond_146

    .line 1763
    iget-boolean v3, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-nez v3, :cond_82

    .line 1764
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1766
    :cond_82
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v12

    cmp-long v3, v4, v12

    if-eqz v3, :cond_146

    .line 1767
    new-instance v3, Landroid/location/LocationRequest;

    invoke-direct {v3, v6}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 1768
    invoke-virtual {v3, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 1772
    :goto_92
    iput-object v3, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1773
    iget-object v2, v8, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1774
    iget-wide v2, v8, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_32

    .line 1775
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 1776
    iput-wide v4, v8, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_32

    .line 1782
    :cond_a5
    iget-boolean v2, v8, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v2, :cond_119

    .line 1788
    iget-wide v2, v8, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    .line 1789
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b8
    :goto_b8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_119

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1790
    iget-object v5, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 1791
    iget-object v5, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1795
    iget-object v6, v8, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 1799
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    cmp-long v5, v10, v2

    if-gtz v5, :cond_b8

    .line 1800
    iget-object v5, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_109

    .line 1801
    iget-object v5, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_109

    .line 1802
    iget-object v5, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_109

    .line 1805
    iget-object v1, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_b8

    .line 1809
    :cond_109
    iget-object v5, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 1810
    iget-object v1, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    .line 1808
    invoke-virtual {v7, v5, v1}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    goto :goto_b8

    .line 1818
    :cond_119
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_142

    const-string/jumbo v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_142
    invoke-interface {v0, v8, v7}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 1820
    return-void

    :cond_146
    move-object v3, v6

    goto/16 :goto_92
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2961
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3a

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private checkCallerIsProvider()V
    .registers 3

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 2539
    return-void

    .line 2549
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2550
    return-void

    .line 2553
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "need INSTALL_LOCATION_PROVIDER permission, or UID of a currently bound location provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDeviceStatsAllowed()V
    .registers 4

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1513
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    .line 1512
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    return-void
.end method

.method private checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 15

    .prologue
    .line 2017
    if-nez p2, :cond_d

    if-nez p1, :cond_d

    .line 2018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2019
    :cond_d
    if-eqz p2, :cond_1a

    if-eqz p1, :cond_1a

    .line 2020
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2021
    :cond_1a
    if-eqz p2, :cond_2b

    .line 2022
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 2023
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    return-object v0

    :cond_2b
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 2025
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    return-object v0
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1995
    if-nez p1, :cond_1c

    .line 1996
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1998
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1999
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2000
    if-nez v1, :cond_42

    .line 2001
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2003
    :cond_42
    const/4 v0, 0x0

    array-length v2, v1

    :goto_44
    if-ge v0, v2, :cond_52

    aget-object v3, v1, v0

    .line 2004
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    return-void

    .line 2003
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 2006
    :cond_52
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .registers 5

    .prologue
    .line 2010
    if-nez p1, :cond_1c

    .line 2011
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2013
    :cond_1c
    return-void
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .registers 4

    .prologue
    .line 1443
    const/4 v0, 0x2

    if-ge p1, v0, :cond_c

    .line 1444
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1446
    :cond_c
    return-void
.end method

.method private checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 1491
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v0

    .line 1492
    if-ge p1, v0, :cond_7a

    .line 1493
    packed-switch v0, :pswitch_data_7c

    .line 1501
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Insufficient permission for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1502
    const-string/jumbo v2, "\" location provider."

    .line 1501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1495
    :pswitch_2a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" location provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1496
    const-string/jumbo v2, "requires ACCESS_FINE_LOCATION permission."

    .line 1495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :pswitch_52
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" location provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1499
    const-string/jumbo v2, "requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    .line 1498
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :cond_7a
    return-void

    .line 1493
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_52
        :pswitch_2a
    .end packed-switch
.end method

.method private checkUpdateAppOpsAllowed()V
    .registers 4

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1518
    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v2, 0x0

    .line 1517
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;
    .registers 9

    .prologue
    const-wide/32 v4, 0x927c0

    .line 1969
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 1970
    const/4 v1, 0x2

    if-ge p2, v1, :cond_28

    .line 1971
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_48

    .line 1980
    :goto_12
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1d

    .line 1981
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 1983
    :cond_1d
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_28

    .line 1984
    invoke-virtual {v0, v4, v5}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1988
    :cond_28
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_3b

    .line 1989
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1991
    :cond_3b
    return-object v0

    .line 1973
    :sswitch_3c
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_12

    .line 1976
    :sswitch_42
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_12

    .line 1971
    :sswitch_data_48
    .sparse-switch
        0x64 -> :sswitch_3c
        0xcb -> :sswitch_42
    .end sparse-switch
.end method

.method private doesUidHavePackage(ILjava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2561
    if-nez p2, :cond_4

    .line 2562
    return v1

    .line 2564
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2565
    if-nez v2, :cond_d

    .line 2566
    return v1

    .line 2568
    :cond_d
    array-length v3, v2

    move v0, v1

    :goto_f
    if-ge v0, v3, :cond_1e

    aget-object v4, v2, v0

    .line 2569
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2570
    const/4 v0, 0x1

    return v0

    .line 2568
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2573
    :cond_1e
    return v1
.end method

.method private ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 531
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 532
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 535
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    iget v4, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    const/16 v5, 0x80

    .line 534
    invoke-virtual {v1, v0, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_148

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 538
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 544
    const/16 v6, 0x40

    :try_start_38
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 545
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6, v3}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_89

    .line 546
    const-string/jumbo v0, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " resolves service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "com.android.location.service.FusedLocationProvider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 547
    const-string/jumbo v7, ", but has wrong signature, ignoring"

    .line 546
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_6c} :catch_6d

    goto :goto_26

    .line 550
    :catch_6d
    move-exception v0

    .line 551
    const-string/jumbo v0, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "missing package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 556
    :cond_89
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v6, :cond_ab

    .line 557
    const-string/jumbo v0, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found fused provider without metadata: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 561
    :cond_ab
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 562
    const-string/jumbo v7, "serviceVersion"

    const/4 v8, -0x1

    .line 561
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 563
    if-nez v6, :cond_128

    .line 567
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e3

    .line 568
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_26

    const-string/jumbo v0, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fallback candidate not in /system: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 574
    :cond_e3
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_109

    .line 576
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_26

    const-string/jumbo v0, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fallback candidate not signed the same as system: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 582
    :cond_109
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_127

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found fallback provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_127
    return-void

    .line 585
    :cond_128
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_26

    const-string/jumbo v0, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fallback candidate not version 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 589
    :cond_148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAllowedResolutionLevel(II)I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1417
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_e

    .line 1419
    const/4 v0, 0x2

    return v0

    .line 1420
    :cond_e
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1b

    .line 1422
    const/4 v0, 0x1

    return v0

    .line 1424
    :cond_1b
    return v2
.end method

.method private getCallerAllowedResolutionLevel()I
    .registers 3

    .prologue
    .line 1434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1455
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1456
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1455
    if-eqz v0, :cond_15

    .line 1458
    :cond_14
    return v2

    .line 1459
    :cond_15
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1460
    const-string/jumbo v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1459
    if-eqz v0, :cond_28

    .line 1462
    :cond_27
    return v3

    .line 1465
    :cond_28
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1466
    if-eqz v0, :cond_46

    .line 1467
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    .line 1468
    if-eqz v0, :cond_46

    .line 1469
    iget-boolean v1, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v1, :cond_3d

    .line 1471
    return v2

    .line 1472
    :cond_3d
    iget-boolean v1, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v1, :cond_45

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v0, :cond_46

    .line 1474
    :cond_45
    return v3

    .line 1479
    :cond_46
    return v2
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 16

    .prologue
    const/4 v2, 0x0

    .line 1951
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1952
    if-nez v0, :cond_1c

    .line 1953
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 1955
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    :cond_1c
    return-object v0
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 17

    .prologue
    .line 1933
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1934
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1935
    if-nez v0, :cond_2d

    .line 1936
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 1939
    :try_start_1c
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_28} :catch_2e

    .line 1944
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    :cond_2d
    return-object v0

    .line 1940
    :catch_2e
    move-exception v0

    .line 1941
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "linkToDeath failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1942
    const/4 v0, 0x0

    return-object v0
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1399
    packed-switch p1, :pswitch_data_e

    .line 1405
    const/4 v0, 0x0

    return-object v0

    .line 1401
    :pswitch_5
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 1403
    :pswitch_9
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0

    .line 1399
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private handleLocationChanged(Landroid/location/Location;Z)V
    .registers 7

    .prologue
    .line 2875
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2876
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 2881
    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2882
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 2885
    :cond_19
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2886
    :try_start_1c
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2887
    if-nez p2, :cond_31

    .line 2888
    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->screenLocationLocked(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_36

    move-result-object v1

    .line 2889
    if-nez v1, :cond_2c

    monitor-exit v2

    .line 2890
    return-void

    .line 2893
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    .line 2895
    :cond_31
    invoke-direct {p0, v0, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit v2

    .line 2898
    return-void

    .line 2885
    :catchall_36
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .registers 27

    .prologue
    .line 2625
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_20

    const-string/jumbo v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "incoming location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2628
    if-eqz p2, :cond_37

    const-string/jumbo v4, "passive"

    move-object v6, v4

    .line 2631
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 2632
    if-nez v4, :cond_3d

    return-void

    .line 2628
    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_2a

    .line 2635
    :cond_3d
    const-string/jumbo v5, "noGPSLocation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 2637
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 2638
    if-nez v5, :cond_af

    .line 2639
    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 2640
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v5

    .line 2649
    :goto_5f
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 2653
    if-nez v5, :cond_7e

    .line 2654
    new-instance v5, Landroid/location/Location;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    .line 2658
    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v10

    .line 2657
    sub-long/2addr v8, v10

    .line 2659
    const-wide v10, 0x8bb2c97000L

    cmp-long v8, v8, v10

    if-lez v8, :cond_95

    .line 2660
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 2666
    :cond_95
    const-string/jumbo v8, "noGPSLocation"

    invoke-virtual {v5, v8}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 2669
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2670
    if-eqz v5, :cond_ae

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_c6

    :cond_ae
    return-void

    .line 2642
    :cond_af
    const-string/jumbo v8, "noGPSLocation"

    invoke-virtual {v5, v8}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8

    .line 2643
    if-nez v7, :cond_c4

    if-eqz v8, :cond_c4

    .line 2646
    const-string/jumbo v7, "noGPSLocation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    move-object v7, v5

    goto :goto_5f

    :cond_c4
    move-object v7, v5

    .line 2643
    goto :goto_5f

    .line 2673
    :cond_c6
    const/4 v8, 0x0

    .line 2674
    if-eqz v9, :cond_d1

    .line 2675
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v8

    .line 2679
    :cond_d1
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v14

    .line 2682
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 2683
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v17

    .line 2685
    const/4 v9, 0x0

    .line 2686
    const/4 v4, 0x0

    .line 2689
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object v5, v4

    :goto_e7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2de

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2690
    iget-object v0, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v19, v0

    .line 2691
    const/4 v10, 0x0

    .line 2693
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v11, v11, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2694
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v20

    if-nez v20, :cond_16f

    .line 2695
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    .line 2694
    if-eqz v20, :cond_16f

    .line 2696
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_169

    .line 2697
    const-string/jumbo v4, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "skipping loc update for background user "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2698
    const-string/jumbo v11, " (current user: "

    .line 2697
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2698
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 2697
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2698
    const-string/jumbo v11, ", app: "

    .line 2697
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2699
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    .line 2697
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2699
    const-string/jumbo v11, ")"

    .line 2697
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_169
    move-object v4, v5

    move-object v5, v9

    :goto_16b
    move-object v9, v5

    move-object v5, v4

    goto/16 :goto_e7

    .line 2704
    :cond_16f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1ae

    .line 2705
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_1ab

    const-string/jumbo v4, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skipping loc update for blacklisted app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2706
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    .line 2705
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ab
    move-object v4, v5

    move-object v5, v9

    .line 2707
    goto :goto_16b

    .line 2711
    :cond_1ae
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v11, v11, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    .line 2712
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    move/from16 v20, v0

    .line 2713
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2714
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    move/from16 v22, v0

    .line 2710
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_208

    .line 2715
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_204

    const-string/jumbo v4, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skipping loc update for no op app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2716
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    .line 2715
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_204
    move-object v4, v5

    move-object v5, v9

    .line 2717
    goto/16 :goto_16b

    .line 2721
    :cond_208
    move-object/from16 v0, v19

    iget v11, v0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ge v11, v0, :cond_2d4

    move-object v11, v8

    .line 2726
    :goto_213
    if-eqz v11, :cond_25c

    .line 2727
    iget-object v0, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    move-object/from16 v20, v0

    .line 2728
    if-eqz v20, :cond_223

    move-object/from16 v0, v20

    invoke-static {v11, v0, v4, v12, v13}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v21

    if-eqz v21, :cond_25c

    .line 2729
    :cond_223
    if-nez v20, :cond_2d7

    .line 2730
    new-instance v20, Landroid/location/Location;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2731
    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2735
    :goto_230
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v11

    if-nez v11, :cond_257

    .line 2736
    const-string/jumbo v10, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "RemoteException calling onLocationChanged on "

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    const/4 v10, 0x1

    .line 2739
    :cond_257
    iget-object v11, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v11}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    .line 2743
    :cond_25c
    iget-wide v0, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    move-wide/from16 v20, v0

    .line 2744
    cmp-long v11, v14, v20

    if-lez v11, :cond_29e

    .line 2745
    const-wide/16 v22, 0x0

    cmp-long v11, v20, v22

    if-nez v11, :cond_26f

    const/4 v11, 0x2

    move/from16 v0, v17

    if-eq v0, v11, :cond_29e

    .line 2747
    :cond_26f
    iput-wide v14, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2748
    move-object/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v11

    if-nez v11, :cond_29e

    .line 2749
    const/4 v10, 0x1

    .line 2750
    const-string/jumbo v11, "LocationManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :cond_29e
    iget-object v11, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v11}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v11

    if-lez v11, :cond_2b0

    iget-object v11, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v11}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v20

    cmp-long v11, v20, v12

    if-gez v11, :cond_2ba

    .line 2756
    :cond_2b0
    if-nez v5, :cond_2b7

    .line 2757
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2759
    :cond_2b7
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    :cond_2ba
    if-eqz v10, :cond_313

    .line 2763
    if-nez v9, :cond_2c3

    .line 2764
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2766
    :cond_2c3
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_313

    .line 2767
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    move-object v5, v9

    goto/16 :goto_16b

    :cond_2d4
    move-object v11, v7

    .line 2724
    goto/16 :goto_213

    .line 2733
    :cond_2d7
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_230

    .line 2773
    :cond_2de
    if-eqz v9, :cond_2f6

    .line 2774
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2e4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 2775
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_2e4

    .line 2778
    :cond_2f6
    if-eqz v5, :cond_312

    .line 2779
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2fc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2780
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    goto :goto_2fc

    .line 2782
    :cond_30d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2784
    :cond_312
    return-void

    :cond_313
    move-object v4, v5

    move-object v5, v9

    goto/16 :goto_16b
.end method

.method private hasGnssPermissions(Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1170
    const-string/jumbo v1, "gps"

    .line 1168
    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1172
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1177
    :try_start_16
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1e

    move-result v0

    .line 1179
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1182
    return v0

    .line 1178
    :catchall_1e
    move-exception v0

    .line 1179
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    throw v0
.end method

.method private isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1366
    const/4 v0, 0x1

    return v0

    .line 1368
    :cond_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1369
    const/4 v0, 0x0

    return v0

    .line 1372
    :cond_14
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1374
    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 1386
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    .line 1387
    const/4 v0, 0x0

    return v0

    .line 1389
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCurrentProfile(I)Z
    .registers 4

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    .line 524
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isImportanceForeground(I)Z
    .registers 2

    .prologue
    .line 478
    const/16 v0, 0x7d

    if-gt p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isMockProvider(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 2802
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2803
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    .line 2802
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 1846
    iget v0, p1, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    .line 1847
    return v3

    .line 1850
    :cond_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1851
    return v3

    .line 1854
    :cond_13
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    .line 1855
    iget-object v2, p1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1856
    return v3

    .line 1860
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method private isUidALocationProvider(I)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2524
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6

    .line 2525
    return v2

    .line 2527
    :cond_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_17

    .line 2528
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    invoke-virtual {v0}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->doesUidHavePackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v2

    .line 2530
    :cond_17
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    .line 2531
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->doesUidHavePackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v2

    .line 2533
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method private loadProvidersLocked()V
    .registers 16

    .prologue
    .line 599
    new-instance v0, Lcom/android/server/location/PassiveProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 600
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 601
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 604
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 606
    new-instance v0, Lcom/android/server/location/GnssLocationProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 607
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 606
    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    .line 608
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    .line 609
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    .line 610
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    .line 611
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->getGnssStatusProvider()Landroid/location/IGnssStatusProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    .line 612
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 613
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 614
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 616
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 617
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 631
    :cond_61
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    const v1, 0x107002a

    .line 633
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 635
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_95

    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "certificates for location providers pulled from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 636
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_95
    if-eqz v1, :cond_9e

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 639
    :cond_9e
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 644
    const-string/jumbo v1, "network"

    .line 645
    const-string/jumbo v2, "com.android.location.service.v3.NetworkLocationProvider"

    .line 649
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 646
    const v3, 0x1120060

    .line 647
    const v4, 0x1040146

    .line 648
    const v5, 0x107002a

    .line 642
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_218

    .line 651
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 660
    :goto_ca
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 661
    const-string/jumbo v1, "fused"

    .line 662
    const-string/jumbo v2, "com.android.location.service.FusedLocationProvider"

    .line 666
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 663
    const v3, 0x1120057

    .line 664
    const v4, 0x1040131

    .line 665
    const v5, 0x107002a

    .line 659
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_223

    .line 668
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 669
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v2, "fused"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :goto_fc
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 682
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 679
    const v2, 0x1120058

    .line 680
    const v3, 0x1040132

    .line 681
    const v4, 0x107002a

    .line 678
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 683
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v0, :cond_11c

    .line 684
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "no geocoder provider found"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_11c
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_236

    .line 692
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    move-result-object v6

    .line 694
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 695
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 696
    invoke-virtual {v6}, Lcom/android/server/location/FlpHardwareProvider;->getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v2

    .line 697
    const v3, 0x112005b

    .line 698
    const v4, 0x1040134

    .line 699
    const v5, 0x107002a

    .line 693
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/FusedProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/location/IFusedLocationHardware;III)Lcom/android/server/location/FusedProxy;

    move-result-object v0

    .line 700
    if-nez v0, :cond_2a0

    .line 701
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Unable to bind FusedProxy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 710
    :goto_149
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 713
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 714
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 715
    if-eqz v1, :cond_243

    invoke-virtual {v1}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;

    move-result-object v6

    .line 710
    :goto_155
    const v1, 0x1120059

    .line 711
    const v2, 0x1040133

    .line 712
    const v3, 0x107002a

    .line 709
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v0

    .line 716
    if-nez v0, :cond_16d

    .line 717
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Unable to bind FLP Geofence proxy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_16d
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v2

    .line 722
    const/4 v3, 0x0

    .line 723
    if-eqz v2, :cond_246

    .line 724
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v3

    .line 729
    :goto_17a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 730
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 733
    const v4, 0x1120051

    .line 734
    const v5, 0x104010d

    .line 735
    const v6, 0x107002a

    .line 728
    invoke-static/range {v0 .. v6}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v0

    .line 736
    if-nez v0, :cond_196

    .line 737
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_196
    const v0, 0x1040114

    .line 740
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    .line 742
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1d3

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".nlp:ready"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".nlp:screen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    .line 748
    :cond_1d3
    const v0, 0x107003f

    .line 747
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 749
    const/4 v0, 0x0

    array-length v12, v11

    move v10, v0

    :goto_1dd
    if-ge v10, v12, :cond_29f

    aget-object v0, v11, v10

    .line 750
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 751
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 752
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_251

    .line 753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_218
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "no network location provider found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca

    .line 673
    :cond_223
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "no fused location provider found"

    .line 674
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Location service needs a fused location provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_fc

    .line 704
    :cond_236
    const/4 v0, 0x0

    .line 705
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "FLP HAL not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto/16 :goto_149

    .line 715
    :cond_243
    const/4 v6, 0x0

    goto/16 :goto_155

    .line 726
    :cond_246
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Hardware Activity-Recognition not supported."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17a

    .line 755
    :cond_251
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    .line 756
    const/4 v1, 0x1

    aget-object v1, v9, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 757
    const/4 v2, 0x2

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 758
    const/4 v3, 0x3

    aget-object v3, v9, v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 759
    const/4 v4, 0x4

    aget-object v4, v9, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 760
    const/4 v5, 0x5

    aget-object v5, v9, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 761
    const/4 v6, 0x6

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 762
    const/4 v7, 0x7

    aget-object v7, v9, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 763
    const/16 v8, 0x8

    aget-object v8, v9, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 764
    const/16 v14, 0x9

    aget-object v9, v9, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 755
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 765
    invoke-direct {p0, v13, v0}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 749
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_1dd

    .line 767
    :cond_29f
    return-void

    :cond_2a0
    move-object v1, v6

    goto/16 :goto_149
.end method

.method private log(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 3159
    const-string/jumbo v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3160
    const-string/jumbo v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_10
    return-void
.end method

.method private onUidImportanceChanged(II)V
    .registers 13

    .prologue
    .line 425
    invoke-static {p2}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v3

    .line 426
    new-instance v4, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 427
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 429
    :try_start_12
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 431
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_38
    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 432
    iget-object v2, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v2, p1, :cond_38

    .line 433
    iget-boolean v2, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-eq v2, v3, :cond_38

    .line 434
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_7e

    const-string/jumbo v8, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "request from uid "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " is now "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 435
    if-eqz v3, :cond_91

    const-string/jumbo v2, "foreground"

    .line 434
    :goto_73
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_7e
    iput-boolean v3, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 438
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 439
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catchall {:try_start_12 .. :try_end_8d} :catchall_8e

    goto :goto_38

    .line 427
    :catchall_8e
    move-exception v0

    monitor-exit v5

    throw v0

    .line 435
    :cond_91
    :try_start_91
    const-string/jumbo v2, "background)"

    goto :goto_73

    .line 444
    :cond_95
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_99

    .line 449
    :cond_a9
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b3
    :goto_b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Identity;

    iget v1, v1, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v1, p1, :cond_b3

    .line 451
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_f7

    const-string/jumbo v4, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gnss measurements listener from uid "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    const-string/jumbo v6, " is now "

    .line 451
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 452
    if-eqz v3, :cond_111

    const-string/jumbo v1, "foreground"

    .line 451
    :goto_ec
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_f7
    if-nez v3, :cond_105

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 454
    :cond_105
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z

    goto :goto_b3

    .line 452
    :cond_111
    const-string/jumbo v1, "background)"

    goto :goto_ec

    .line 456
    :cond_115
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    goto :goto_b3

    .line 462
    :cond_121
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12b
    :goto_12b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_199

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Identity;

    iget v1, v1, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v1, p1, :cond_12b

    .line 464
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_16f

    const-string/jumbo v4, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gnss navigation message listener from uid "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    const-string/jumbo v6, " is now "

    .line 464
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 466
    if-eqz v3, :cond_189

    const-string/jumbo v1, "foreground"

    .line 464
    :goto_164
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_16f
    if-nez v3, :cond_17d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 468
    :cond_17d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z

    goto :goto_12b

    .line 466
    :cond_189
    const-string/jumbo v1, "background)"

    goto :goto_164

    .line 470
    :cond_18d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V
    :try_end_198
    .catchall {:try_start_91 .. :try_end_198} :catchall_8e

    goto :goto_12b

    :cond_199
    monitor-exit v5

    .line 475
    return-void
.end method

.method private pickBest(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1646
    const-string/jumbo v0, "gps"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1647
    const-string/jumbo v0, "gps"

    return-object v0

    .line 1648
    :cond_d
    const-string/jumbo v0, "network"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1649
    const-string/jumbo v0, "network"

    return-object v0

    .line 1651
    :cond_1a
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 4

    .prologue
    .line 1352
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 1353
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1354
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 2144
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_27

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_27
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2147
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2148
    monitor-enter p1

    .line 2149
    :try_start_43
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_6b

    monitor-exit p1

    .line 2153
    :cond_47
    invoke-virtual {p1, v4}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2156
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2157
    iget-object v2, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2158
    if-eqz v2, :cond_75

    .line 2160
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2162
    invoke-virtual {v0, v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    goto :goto_5b

    .line 2148
    :catchall_6b
    move-exception v0

    monitor-exit p1

    throw v0

    .line 2165
    :cond_6e
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2169
    :cond_75
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_79
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2171
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 2175
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_79

    .line 2177
    :cond_8f
    return-void
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 2081
    if-nez p1, :cond_5

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2082
    :cond_5
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 2083
    if-nez v2, :cond_14

    .line 2084
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2087
    :cond_14
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2088
    if-nez v0, :cond_38

    .line 2089
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider doesn\'t exist: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2092
    :cond_38
    new-instance v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2093
    const-string/jumbo v4, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2094
    const-string/jumbo v5, " "

    .line 2093
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2094
    const-string/jumbo v5, " "

    .line 2093
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2094
    const-string/jumbo v5, " from "

    .line 2093
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2094
    const-string/jumbo v5, "("

    .line 2093
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2094
    const-string/jumbo v5, " "

    .line 2093
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2095
    iget-boolean v1, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-eqz v1, :cond_d1

    const-string/jumbo v1, "foreground"

    .line 2093
    :goto_92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2096
    iget-object v1, p2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 2097
    const-string/jumbo v1, " [whitelisted]"

    .line 2093
    :goto_a1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2097
    const-string/jumbo v5, ")"

    .line 2093
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-object v1, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2100
    if-eqz v1, :cond_c0

    .line 2101
    invoke-virtual {v1, v6}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    .line 2104
    :cond_c0
    invoke-direct {p0, v2, p4}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v1

    .line 2105
    if-eqz v1, :cond_d9

    .line 2106
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2113
    :goto_c9
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2115
    invoke-interface {v0, p5}, Lcom/android/server/location/LocationProviderInterface;->setPackageName(Ljava/lang/String;)V

    .line 2116
    return-void

    .line 2095
    :cond_d1
    const-string/jumbo v1, "background"

    goto :goto_92

    .line 2097
    :cond_d5
    const-string/jumbo v1, ""

    goto :goto_a1

    .line 2109
    :cond_d9
    invoke-virtual {p2, v2, v6}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_c9
.end method

.method public static resolutionLevelToOp(I)I
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1522
    if-eqz p0, :cond_8

    .line 1523
    if-ne p0, v1, :cond_7

    .line 1524
    return v0

    .line 1526
    :cond_7
    return v1

    .line 1529
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method private screenLocationLocked(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 2809
    const-string/jumbo v0, "network"

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2810
    return-object p1

    .line 2813
    :cond_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    .line 2814
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1d

    if-nez v0, :cond_1e

    .line 2817
    :cond_1d
    return-object p1

    .line 2815
    :cond_1e
    const-string/jumbo v1, "network"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2816
    const-string/jumbo v1, "network"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v1

    .line 2814
    if-nez v1, :cond_1d

    .line 2820
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2821
    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_41

    .line 2822
    :cond_40
    return-object p1

    .line 2825
    :cond_41
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2826
    const/4 v1, 0x0

    .line 2828
    if-eqz v2, :cond_52

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_dd

    .line 2831
    :cond_52
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    const-string/jumbo v4, "passive"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2832
    if-eqz v0, :cond_cc

    .line 2833
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2834
    iget-object v5, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 2835
    if-nez v1, :cond_93

    .line 2837
    if-nez v2, :cond_8d

    .line 2838
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 2839
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2841
    :cond_8d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move v1, v3

    .line 2844
    :cond_93
    iget-object v5, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v5, p1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v5

    if-nez v5, :cond_bc

    .line 2845
    const-string/jumbo v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RemoteException calling onLocationChanged on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2846
    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2845
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move-object v1, v2

    :goto_b9
    move-object v2, v1

    move v1, v0

    goto :goto_63

    .line 2848
    :cond_bc
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_f0

    .line 2849
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v5, "Sending location for screening"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move-object v1, v2

    goto :goto_b9

    .line 2855
    :cond_cc
    if-eqz v1, :cond_cf

    .line 2856
    return-object v8

    .line 2858
    :cond_cf
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_dc

    .line 2859
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Not screening locations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_dc
    :goto_dc
    return-object p1

    .line 2862
    :cond_dd
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_ea

    .line 2863
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "This location is marked as ready for broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :cond_ea
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_dc

    :cond_f0
    move v0, v1

    move-object v1, v2

    goto :goto_b9
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .registers 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2595
    if-nez p1, :cond_5

    .line 2596
    return v0

    .line 2600
    :cond_5
    iget-object v2, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v2}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v2

    .line 2601
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 2602
    const-wide/32 v6, 0xf4240

    .line 2601
    div-long/2addr v4, v6

    .line 2603
    const-wide/16 v6, 0x64

    sub-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-gez v2, :cond_20

    .line 2604
    return v1

    .line 2608
    :cond_20
    iget-object v2, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v2}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v2

    float-to-double v2, v2

    .line 2609
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_37

    .line 2610
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-gtz v2, :cond_37

    .line 2611
    return v1

    .line 2616
    :cond_37
    iget-object v2, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v2}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v2

    if-gtz v2, :cond_40

    .line 2617
    return v1

    .line 2621
    :cond_40
    iget-object v2, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v2}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-ltz v2, :cond_4b

    :goto_4a
    return v0

    :cond_4b
    move v0, v1

    goto :goto_4a
.end method

.method private shutdownComponents()V
    .registers 3

    .prologue
    .line 490
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "Shutting down components..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_d
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 493
    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 494
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 499
    :cond_23
    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 500
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/android/server/location/FlpHardwareProvider;->cleanup()V

    .line 503
    :cond_32
    return-void
.end method

.method private switchUser(I)V
    .registers 6

    .prologue
    .line 774
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_5

    .line 775
    return-void

    .line 777
    :cond_5
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    .line 778
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_13
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 781
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 782
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 783
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_38

    goto :goto_23

    .line 779
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0

    .line 785
    :cond_3b
    :try_start_3b
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 786
    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    .line 787
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_38

    monitor-exit v1

    .line 789
    return-void
.end method

.method private updateBackgroundThrottlingWhitelistLocked()V
    .registers 4

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1833
    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    .line 1831
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1834
    if-nez v0, :cond_12

    .line 1835
    const-string/jumbo v0, ""

    .line 1838
    :cond_12
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1839
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 1840
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v2

    .line 1839
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1841
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 1842
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1841
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1843
    return-void
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1700
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1701
    if-nez v0, :cond_d

    return-void

    .line 1705
    :cond_d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1706
    if-eqz v1, :cond_7e

    .line 1707
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1708
    iget-object v5, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1710
    iget-object v5, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 1711
    if-nez v2, :cond_46

    .line 1712
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    :cond_46
    iget-object v1, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    move v2, v3

    :goto_4f
    move v3, v2

    move-object v2, v1

    goto :goto_1b

    :cond_52
    move v4, v3

    move-object v3, v2

    .line 1721
    :goto_54
    if-eqz v3, :cond_6c

    .line 1722
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_5d
    if-ltz v2, :cond_6c

    .line 1723
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1722
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_5d

    .line 1727
    :cond_6c
    if-eqz p2, :cond_77

    .line 1728
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1729
    if-lez v4, :cond_76

    .line 1730
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 1735
    :cond_76
    :goto_76
    return-void

    .line 1733
    :cond_77
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_76

    :cond_7b
    move-object v1, v2

    move v2, v3

    goto :goto_4f

    :cond_7e
    move v4, v3

    move-object v3, v2

    goto :goto_54
.end method

.method private updateProvidersLocked()V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1670
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v4

    :goto_c
    if-ltz v3, :cond_76

    .line 1671
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1672
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v5

    .line 1673
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1674
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v6

    .line 1675
    const-string/jumbo v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateProvidersLocked: name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", isEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", shouldBeEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    if-eqz v5, :cond_6b

    xor-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_6b

    .line 1677
    invoke-direct {p0, v0, v4}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1681
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1682
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    .line 1670
    :goto_66
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v0

    goto :goto_c

    .line 1684
    :cond_6b
    if-nez v5, :cond_74

    if-eqz v6, :cond_97

    .line 1685
    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    move v0, v1

    .line 1686
    goto :goto_66

    :cond_74
    move v0, v2

    .line 1684
    goto :goto_66

    .line 1689
    :cond_76
    if-eqz v2, :cond_96

    .line 1690
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1691
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1690
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1692
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1693
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1692
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1695
    :cond_96
    return-void

    :cond_97
    move v0, v2

    goto :goto_66
.end method


# virtual methods
.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1206
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 1207
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware batching"

    .line 1206
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    if-nez v0, :cond_17

    .line 1210
    :cond_16
    return v3

    .line 1213
    :cond_17
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1214
    new-instance v0, Lcom/android/server/LocationManagerService$LinkedCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationManagerService$LinkedCallback;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/IBatchedLocationCallback;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

    .line 1216
    :try_start_20
    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_2c

    .line 1224
    const/4 v0, 0x1

    return v0

    .line 1217
    :catch_2c
    move-exception v0

    .line 1220
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "Remote listener already died."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    return v3
.end method

.method public addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 2348
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-nez v0, :cond_c

    .line 2349
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 2352
    :cond_c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2354
    :try_start_f
    new-instance v0, Lcom/android/server/LocationManagerService$Identity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v0, v2, v3, p2}, Lcom/android/server/LocationManagerService$Identity;-><init>(IILjava/lang/String;)V

    .line 2355
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_4d

    move-result-wide v2

    .line 2358
    :try_start_25
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2360
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 2359
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    .line 2358
    if-eqz v0, :cond_42

    .line 2361
    :cond_37
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_48

    move-result v0

    .line 2364
    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4d

    monitor-exit v1

    .line 2361
    return v0

    .line 2364
    :cond_42
    :try_start_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 2367
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2363
    :catchall_48
    move-exception v0

    .line 2364
    :try_start_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    throw v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 2352
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 2385
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    if-nez v0, :cond_c

    .line 2386
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 2389
    :cond_c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2391
    :try_start_f
    new-instance v0, Lcom/android/server/LocationManagerService$Identity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v0, v2, v3, p2}, Lcom/android/server/LocationManagerService$Identity;-><init>(IILjava/lang/String;)V

    .line 2392
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_4d

    move-result-wide v2

    .line 2395
    :try_start_25
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2397
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 2396
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    .line 2395
    if-eqz v0, :cond_42

    .line 2398
    :cond_37
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_48

    move-result v0

    .line 2401
    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4d

    monitor-exit v1

    .line 2398
    return v0

    .line 2401
    :cond_42
    :try_start_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 2404
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2400
    :catchall_48
    move-exception v0

    .line 2401
    :try_start_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2400
    throw v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 2389
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2967
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2968
    return-void

    .line 2971
    :cond_7
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2972
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot mock the passive location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2975
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2976
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2978
    :try_start_20
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2979
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2978
    if-nez v0, :cond_3b

    .line 2980
    const-string/jumbo v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2978
    if-eqz v0, :cond_48

    .line 2981
    :cond_3b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2982
    if-eqz v0, :cond_48

    .line 2983
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2986
    :cond_48
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 2987
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_4e
    .catchall {:try_start_20 .. :try_end_4e} :catchall_53

    monitor-exit v1

    .line 2989
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2990
    return-void

    .line 2976
    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkLocationAccess(IILjava/lang/String;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1545
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v1

    .line 1546
    if-ltz v1, :cond_10

    .line 1547
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    .line 1548
    return v0

    .line 1552
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v1

    if-lt v1, p4, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 3110
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3111
    return-void

    .line 3114
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3115
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3116
    if-nez v0, :cond_38

    .line 3117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_35

    .line 3114
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3119
    :cond_38
    :try_start_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3120
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3121
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3122
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 3123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_35

    monitor-exit v1

    .line 3125
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 3069
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3070
    return-void

    .line 3073
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3074
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3075
    if-nez v0, :cond_38

    .line 3076
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_35

    .line 3073
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3078
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    monitor-exit v1

    .line 3080
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 3145
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3146
    return-void

    .line 3149
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3150
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3151
    if-nez v0, :cond_38

    .line 3152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_35

    .line 3149
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3154
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    monitor-exit v1

    .line 3156
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 3166
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "LocationManagerService"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 3168
    :cond_c
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3169
    :try_start_f
    array-length v1, p3

    if-lez v1, :cond_2d

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string/jumbo v2, "--gnssmetrics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3170
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    if-eqz v1, :cond_2b

    .line 3171
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    invoke-interface {v1}, Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_67

    :cond_2b
    monitor-exit v3

    .line 3173
    return-void

    .line 3175
    :cond_2d
    :try_start_2d
    const-string/jumbo v1, "Current Location Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3176
    const-string/jumbo v1, "  Location Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    .line 3178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_2d .. :try_end_66} :catchall_67

    goto :goto_43

    .line 3168
    :catchall_67
    move-exception v1

    monitor-exit v3

    throw v1

    .line 3180
    :cond_6a
    :try_start_6a
    const-string/jumbo v1, "  Active Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b4

    .line 3187
    :cond_d8
    const-string/jumbo v1, "  Overlay Provider Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e4
    :goto_e4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 3189
    instance-of v4, v1, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v4, :cond_e4

    .line 3190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3191
    nop

    nop

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3190
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e4

    .line 3194
    :cond_121
    const-string/jumbo v1, "  Historical Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3196
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v1, v1, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 3195
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_133
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 3198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 3199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_133

    .line 3201
    :cond_17d
    const-string/jumbo v1, "  Last Known Locations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3204
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 3205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18d

    .line 3208
    :cond_1c8
    const-string/jumbo v1, "  Last Known Locations Coarse Intervals:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3209
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_213

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 3212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d8

    .line 3215
    :cond_213
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v1, p2}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    .line 3217
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_250

    .line 3218
    const-string/jumbo v1, "  Enabled Providers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_250

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_22c

    .line 3224
    :cond_250
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_288

    .line 3225
    const-string/jumbo v1, "  Disabled Providers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_264
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_288

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_264

    .line 3230
    :cond_288
    const-string/jumbo v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3231
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    .line 3232
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2c4

    .line 3233
    const-string/jumbo v1, "  Mock Providers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/MockProvider;

    const-string/jumbo v4, "      "

    invoke-virtual {v1, p2, v4}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2ab

    .line 3239
    :cond_2c4
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2fc

    .line 3240
    const-string/jumbo v1, "  Throttling Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d8

    .line 3246
    :cond_2fc
    const-string/jumbo v1, "  fudger: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3247
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3249
    array-length v1, p3

    if-lez v1, :cond_318

    const-string/jumbo v1, "short"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_313
    .catchall {:try_start_6a .. :try_end_313} :catchall_67

    move-result v1

    if-eqz v1, :cond_318

    monitor-exit v3

    .line 3250
    return-void

    .line 3252
    :cond_318
    :try_start_318
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_379

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 3253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " Internal State"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3254
    instance-of v2, v1, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v2, :cond_36f

    .line 3255
    move-object v0, v1

    nop

    nop

    move-object v2, v0

    .line 3256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3258
    :cond_36f
    const-string/jumbo v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3259
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_31e

    .line 3261
    :cond_379
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_383

    .line 3262
    const-string/jumbo v1, "  GNSS batching in progress"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_383
    .catchall {:try_start_318 .. :try_end_383} :catchall_67

    :cond_383
    monitor-exit v3

    .line 3265
    return-void
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 1294
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware batching"

    .line 1293
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1297
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "flushGnssBatch called without GNSS permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return-void

    .line 1301
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-nez v0, :cond_28

    .line 1302
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "flushGnssBatch called with no batch in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_28
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    if-eqz v0, :cond_31

    .line 1306
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;->flush()V

    .line 1308
    :cond_31
    return-void
.end method

.method public geocoderIsPresent()Z
    .registers 2

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1563
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1564
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1565
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1566
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1567
    const-string/jumbo v4, "fused"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1570
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_31

    goto :goto_14

    .line 1563
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_34
    monitor-exit v1

    .line 1574
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_53

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAllProviders()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_53
    return-object v2
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 1824
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1825
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 1826
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1825
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 1824
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1628
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1629
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 1630
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_43

    const-string/jumbo v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBestProvider("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_43
    return-object v0

    .line 1634
    :cond_44
    invoke-virtual {p0, v3, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1635
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_87

    .line 1636
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1637
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_86

    const-string/jumbo v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBestProvider("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_86
    return-object v0

    .line 1641
    :cond_87
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_bb

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBestProvider("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_bb
    return-object v3
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_11

    .line 2937
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2940
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_1a

    .line 2951
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2955
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 1191
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware batching"

    .line 1190
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    if-eqz v0, :cond_1c

    .line 1194
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;->getSize()I

    move-result v0

    return v0

    .line 1196
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public getGnssYearOfHardware()I
    .registers 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_b

    .line 1156
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0

    .line 1158
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .registers 12

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 2192
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLastLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    if-nez p1, :cond_2b

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2194
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v2

    .line 2195
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2196
    invoke-direct {p0, v2, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2200
    if-eqz p2, :cond_8a

    const-string/jumbo v0, "com.cttl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string/jumbo v0, "com.tsinghua"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2201
    :cond_4d
    invoke-static {}, Lcom/xtc/auth/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2202
    const-string/jumbo v0, "sub-permission.ACCESS_LOCATION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xtc/auth/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 2203
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moms denied getLastLocation pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    return-object v7

    .line 2209
    :cond_8a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2213
    :try_start_96
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 2214
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_bc

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not returning last loc for blacklisted app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_96 .. :try_end_bc} :catchall_156

    .line 2257
    :cond_bc
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2216
    return-object v7

    .line 2219
    :cond_c0
    :try_start_c0
    invoke-virtual {p0, v0, v3, p2, v2}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 2220
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_e4

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not returning last loc for no op app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_c0 .. :try_end_e4} :catchall_156

    .line 2257
    :cond_e4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2222
    return-object v7

    .line 2225
    :cond_e8
    :try_start_e8
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_156

    .line 2228
    :try_start_eb
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2229
    if-nez v0, :cond_15b

    const-string/jumbo v0, "fused"

    move-object v1, v0

    .line 2230
    :goto_f5
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_fd
    .catchall {:try_start_eb .. :try_end_fd} :catchall_153

    .line 2231
    if-nez v0, :cond_104

    :try_start_ff
    monitor-exit v6
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_156

    .line 2257
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2231
    return-object v7

    .line 2233
    :cond_104
    :try_start_104
    invoke-direct {p0, v1, v3}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_153

    move-result v0

    if-nez v0, :cond_10f

    :try_start_10a
    monitor-exit v6
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_156

    .line 2257
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2233
    return-object v7

    .line 2236
    :cond_10f
    if-ge v2, v8, :cond_120

    .line 2239
    :try_start_111
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_119
    .catchall {:try_start_111 .. :try_end_119} :catchall_153

    .line 2243
    :goto_119
    if-nez v0, :cond_129

    :try_start_11b
    monitor-exit v6
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_156

    .line 2257
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2244
    return-object v7

    .line 2241
    :cond_120
    :try_start_120
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    goto :goto_119

    .line 2246
    :cond_129
    if-ge v2, v8, :cond_144

    .line 2247
    const-string/jumbo v1, "noGPSLocation"

    invoke-virtual {v0, v1}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 2248
    if-eqz v0, :cond_14e

    .line 2249
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v2, v0}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_13f
    .catchall {:try_start_120 .. :try_end_13f} :catchall_153

    :try_start_13f
    monitor-exit v6
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_156

    .line 2257
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2249
    return-object v1

    .line 2252
    :cond_144
    :try_start_144
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_149
    .catchall {:try_start_144 .. :try_end_149} :catchall_153

    :try_start_149
    monitor-exit v6
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_156

    .line 2257
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2252
    return-object v1

    :cond_14e
    :try_start_14e
    monitor-exit v6
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_156

    .line 2257
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2255
    return-object v7

    .line 2225
    :catchall_153
    move-exception v0

    :try_start_154
    monitor-exit v6

    throw v0
    :try_end_156
    .catchall {:try_start_154 .. :try_end_156} :catchall_156

    .line 2256
    :catchall_156
    move-exception v0

    .line 2257
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2256
    throw v0

    :cond_15b
    move-object v1, v0

    goto :goto_f5
.end method

.method public getNetworkProviderPackage()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2486
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2487
    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_28

    move-result-object v0

    if-nez v0, :cond_11

    monitor-exit v1

    .line 2488
    return-object v3

    .line 2490
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_28

    monitor-exit v1

    .line 2493
    instance-of v1, v0, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v1, :cond_2b

    .line 2494
    nop

    nop

    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2486
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2496
    :cond_2b
    return-object v3
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2462
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2463
    return-object v2

    .line 2466
    :cond_a
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2470
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2471
    :try_start_14
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_20

    monitor-exit v1

    .line 2474
    if-nez v0, :cond_23

    return-object v2

    .line 2470
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2475
    :cond_23
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    return-object v0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1585
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    .line 1587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1590
    :try_start_c
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_5e

    .line 1591
    :try_start_f
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1592
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1593
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1594
    const-string/jumbo v9, "fused"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 1597
    invoke-direct {p0, v8}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v9

    if-lt v1, v9, :cond_20

    .line 1598
    if-eqz p2, :cond_49

    invoke-direct {p0, v8, v2}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_20

    .line 1601
    :cond_49
    if-eqz p1, :cond_57

    .line 1602
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    .line 1601
    invoke-static {v8, v0, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_20

    .line 1605
    :cond_57
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_f .. :try_end_5a} :catchall_5b

    goto :goto_20

    .line 1590
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v3

    throw v0
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_5e

    .line 1609
    :catchall_5e
    move-exception v0

    .line 1610
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1609
    throw v0

    :cond_63
    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_5e

    .line 1610
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1613
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_85

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProviders()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_85
    return-object v6
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 2503
    const-string/jumbo v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    .line 2505
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2508
    :try_start_13
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_2e

    .line 2509
    :try_start_16
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2510
    if-eqz v0, :cond_29

    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;I)Z
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_2b

    move-result v0

    :goto_24
    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_2e

    .line 2513
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2510
    return v0

    :cond_29
    move v0, v1

    goto :goto_24

    .line 2508
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v3

    throw v0
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_2e

    .line 2512
    :catchall_2e
    move-exception v0

    .line 2513
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2512
    throw v0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .registers 8

    .prologue
    .line 1136
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1137
    :try_start_3
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1139
    if-eqz v0, :cond_1d

    .line 1140
    monitor-enter v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_22

    .line 1142
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1143
    invoke-static {v0}, Lcom/android/server/LocationManagerService$Receiver;->-wrap0(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1144
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1f

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_22

    :cond_1d
    monitor-exit v2

    .line 1148
    return-void

    .line 1140
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0

    throw v1
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_22

    .line 1136
    :catchall_22
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .registers 7

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1658
    if-nez v0, :cond_24

    .line 1659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1663
    :cond_24
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    .line 1662
    invoke-static {v1, v0, p2}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v0

    .line 1664
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_64

    const-string/jumbo v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "providerMeetsCriteria("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_64
    return v0
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2320
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    if-nez v0, :cond_c

    .line 2321
    :cond_b
    return v3

    .line 2325
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    invoke-interface {v0, p1}, Landroid/location/IGnssStatusProvider;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 2330
    const/4 v0, 0x1

    return v0

    .line 2326
    :catch_13
    move-exception v0

    .line 2327
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "mGpsStatusProvider.registerGnssStatusCallback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2328
    return v3
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 2303
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2304
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2306
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeGeofence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2311
    :try_start_33
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3c

    .line 2313
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2315
    return-void

    .line 2312
    :catchall_3c
    move-exception v0

    .line 2313
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2312
    throw v0
.end method

.method public removeGnssBatchingCallback()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1253
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v0}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

    .line 1254
    const/4 v2, 0x0

    .line 1253
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_d
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_d} :catch_12

    .line 1260
    :goto_d
    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1261
    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

    .line 1262
    return-void

    .line 1255
    :catch_12
    move-exception v0

    .line 1258
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "Couldn\'t unlink death callback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 4

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eqz v0, :cond_12

    .line 2374
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2375
    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 2379
    :cond_12
    return-void

    .line 2374
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 4

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    if-eqz v0, :cond_12

    .line 2411
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2412
    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 2416
    :cond_12
    return-void

    .line 2411
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 3005
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3006
    return-void

    .line 3009
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3013
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3018
    if-nez v0, :cond_41

    .line 3019
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3e

    .line 3009
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3021
    :cond_41
    :try_start_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3022
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3025
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 3026
    if-eqz v0, :cond_5d

    .line 3027
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3029
    :cond_5d
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 3032
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6f
    .catchall {:try_start_41 .. :try_end_6f} :catchall_3e

    monitor-exit v1

    .line 3034
    return-void
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 2121
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2123
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2125
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUpdates: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2128
    const/4 v6, 0x0

    .line 2129
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2130
    :try_start_44
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    .line 2134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_59

    move-result-wide v2

    .line 2136
    :try_start_4c
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_54

    .line 2138
    :try_start_4f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_59

    monitor-exit v8

    .line 2141
    return-void

    .line 2137
    :catchall_54
    move-exception v0

    .line 2138
    :try_start_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2137
    throw v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 2127
    :catchall_59
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2578
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkCallerIsProvider()V

    .line 2580
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v1

    if-nez v1, :cond_25

    .line 2581
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dropping incomplete location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    return-void

    .line 2585
    :cond_25
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2586
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2587
    if-eqz p2, :cond_3a

    :goto_32
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2588
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2589
    return-void

    .line 2587
    :cond_3a
    const/4 v0, 0x0

    goto :goto_32
.end method

.method reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1534
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v1

    .line 1535
    if-ltz v1, :cond_10

    .line 1536
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    .line 1537
    return v0

    .line 1541
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v1

    if-lt v1, p4, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public reportLocationBatch(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1328
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkCallerIsProvider()V

    .line 1331
    const-string/jumbo v0, "gps"

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1332
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    if-nez v0, :cond_1a

    .line 1333
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "reportLocationBatch() called without active Callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void

    .line 1337
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v0, p1}, Landroid/location/IBatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 1344
    :goto_1f
    return-void

    .line 1338
    :catch_20
    move-exception v0

    .line 1339
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v2, "mGnssBatchingCallback.onLocationBatch failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 1342
    :cond_2b
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "reportLocationBatch() called without user permission, locations blocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 15

    .prologue
    .line 2264
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2265
    :cond_4
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v4

    .line 2266
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 2267
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2268
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2269
    invoke-direct {p0, v4, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2271
    invoke-direct {p0, p1, v4}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    move-result-object v1

    .line 2273
    const-string/jumbo v0, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGeofence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    if-eqz p4, :cond_a4

    const-string/jumbo v0, "com.cttl"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string/jumbo v0, "com.tsinghua"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2276
    :cond_6b
    invoke-static {}, Lcom/xtc/auth/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2277
    const-string/jumbo v0, "sub-permission.ACCESS_LOCATION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xtc/auth/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 2278
    const-string/jumbo v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moms denied requestGeofence pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    return-void

    .line 2285
    :cond_a4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2287
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_b8

    .line 2289
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "proximity alerts are currently available only to the primary user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    return-void

    .line 2292
    :cond_b8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2294
    :try_start_bc
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_bc .. :try_end_c4} :catchall_c8

    .line 2297
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2299
    return-void

    .line 2296
    :catchall_c8
    move-exception v0

    .line 2297
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2296
    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 19

    .prologue
    .line 2032
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2033
    :cond_4
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2034
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v2

    .line 2036
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    .line 2035
    invoke-direct {p0, v2, v3}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2037
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v8

    .line 2038
    if-eqz v8, :cond_23

    invoke-virtual {v8}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 2039
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkDeviceStatsAllowed()V

    .line 2041
    :cond_23
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v9

    .line 2042
    if-eqz v9, :cond_2c

    .line 2043
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkUpdateAppOpsAllowed()V

    .line 2045
    :cond_2c
    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;I)Landroid/location/LocationRequest;

    move-result-object v10

    .line 2047
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2048
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2050
    const-string/jumbo v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestLocationUpdates packageName: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    if-eqz p4, :cond_a3

    const-string/jumbo v3, "com.cttl"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6c

    const-string/jumbo v3, "com.tsinghua"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 2052
    :cond_6c
    invoke-static {}, Lcom/xtc/auth/MobileManagerUtils;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 2053
    const-string/jumbo v3, "sub-permission.ACCESS_LOCATION"

    invoke-static {v3, v6}, Lcom/xtc/auth/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_a3

    .line 2054
    const-string/jumbo v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moms denied requestLocationUpdates pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    return-void

    .line 2061
    :cond_a3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2065
    :try_start_a7
    move-object/from16 v0, p4

    invoke-virtual {p0, v5, v6, v0, v2}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    .line 2067
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_c9

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    .line 2068
    :try_start_b6
    invoke-direct/range {v2 .. v9}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v4

    move-object v2, p0

    move-object v3, v10

    move-object/from16 v7, p4

    .line 2070
    invoke-direct/range {v2 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_b6 .. :try_end_c1} :catchall_c6

    :try_start_c1
    monitor-exit v11
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c9

    .line 2073
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2075
    return-void

    .line 2067
    :catchall_c6
    move-exception v2

    :try_start_c7
    monitor-exit v11

    throw v2
    :try_end_c9
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_c9

    .line 2072
    :catchall_c9
    move-exception v2

    .line 2073
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2072
    throw v2
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2420
    if-nez p1, :cond_9

    .line 2422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2424
    :cond_9
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2428
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 2430
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2433
    :cond_24
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2434
    :try_start_27
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_39

    .line 2435
    if-nez v0, :cond_33

    monitor-exit v1

    return v2

    .line 2437
    :cond_33
    :try_start_33
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_39

    move-result v0

    monitor-exit v1

    return v0

    .line 2433
    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendNiResponse(II)Z
    .registers 5

    .prologue
    .line 2443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 2444
    new-instance v0, Ljava/lang/SecurityException;

    .line 2445
    const-string/jumbo v1, "calling sendNiResponse from outside of the system is not allowed"

    .line 2444
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2448
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v0

    return v0

    .line 2449
    :catch_1a
    move-exception v0

    .line 2450
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const/4 v0, 0x0

    return v0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8

    .prologue
    .line 3084
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3085
    return-void

    .line 3088
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3089
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3090
    if-nez v0, :cond_38

    .line 3091
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_35

    .line 3088
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3093
    :cond_38
    :try_start_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3094
    if-eqz p2, :cond_53

    .line 3095
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->enable()V

    .line 3096
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3097
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3103
    :goto_4b
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 3104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_51
    .catchall {:try_start_38 .. :try_end_51} :catchall_35

    monitor-exit v1

    .line 3106
    return-void

    .line 3099
    :cond_53
    :try_start_53
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->disable()V

    .line 3100
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3101
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_35

    goto :goto_4b
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 3038
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3039
    return-void

    .line 3042
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3043
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3044
    if-nez v0, :cond_38

    .line 3045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_35

    .line 3042
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3050
    :cond_38
    :try_start_38
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 3051
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 3053
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_90

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_90

    .line 3056
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "33091107"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 3057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 3056
    const v4, 0x534e4554

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3061
    :cond_90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3062
    invoke-virtual {v0, v2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 3063
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9a
    .catchall {:try_start_38 .. :try_end_9a} :catchall_35

    monitor-exit v1

    .line 3065
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .registers 11

    .prologue
    .line 3130
    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3131
    return-void

    .line 3134
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3135
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 3136
    if-nez v0, :cond_38

    .line 3137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_35

    .line 3134
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3139
    :cond_38
    :try_start_38
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    monitor-exit v1

    .line 3141
    return-void
.end method

.method public startGnssBatch(JZLjava/lang/String;)Z
    .registers 8

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 1271
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware batching"

    .line 1270
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    if-nez v0, :cond_17

    .line 1274
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 1277
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v0, :cond_27

    .line 1279
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1284
    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1285
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;->start(JZ)Z

    move-result v0

    return v0
.end method

.method public stopGnssBatch()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1315
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 1316
    const-string/jumbo v2, "Location Hardware permission not granted to access hardware batching"

    .line 1315
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    if-eqz v0, :cond_19

    .line 1319
    iput-boolean v3, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1320
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;

    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssBatchingProvider;->stop()Z

    move-result v0

    return v0

    .line 1322
    :cond_19
    return v3
.end method

.method public systemRunning()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 287
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_6
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v2, "systemRunning()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_13
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 294
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 298
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 297
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 301
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 304
    new-instance v0, Lcom/android/server/location/LocationFudger;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 305
    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 306
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    .line 307
    new-instance v0, Lcom/android/server/location/GeofenceManager;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v0, v2, v3}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 311
    new-instance v0, Lcom/android/server/LocationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 321
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 324
    new-instance v0, Lcom/android/server/LocationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 332
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 336
    new-instance v0, Lcom/android/server/LocationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 347
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 348
    const/16 v3, 0x7d

    .line 347
    invoke-virtual {v2, v0, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 350
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    .line 351
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    .line 353
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateBackgroundThrottlingWhitelistLocked()V

    .line 356
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 357
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    :try_end_a7
    .catchall {:try_start_6 .. :try_end_a7} :catchall_126

    monitor-exit v1

    .line 361
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 362
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 363
    new-instance v2, Lcom/android/server/LocationManagerService$6;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 361
    invoke-virtual {v0, v1, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 371
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 372
    const-string/jumbo v1, "location_background_throttle_interval_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 374
    new-instance v2, Lcom/android/server/LocationManagerService$7;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/LocationManagerService$7;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 371
    invoke-virtual {v0, v1, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 382
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 384
    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    .line 383
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 386
    new-instance v2, Lcom/android/server/LocationManagerService$8;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/LocationManagerService$8;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 382
    invoke-virtual {v0, v1, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 395
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 398
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/LocationManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$9;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 421
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 404
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 422
    return-void

    .line 287
    :catchall_126
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 6

    .prologue
    .line 2335
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2337
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    invoke-interface {v0, p1}, Landroid/location/IGnssStatusProvider;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    :goto_8
    monitor-exit v1

    .line 2342
    return-void

    .line 2338
    :catch_a
    move-exception v0

    .line 2339
    :try_start_b
    const-string/jumbo v2, "LocationManagerService"

    const-string/jumbo v3, "mGpsStatusProvider.unregisterGnssStatusCallback failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_8

    .line 2335
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateUserProfiles(I)V
    .registers 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_9
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 517
    return-void

    .line 514
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
