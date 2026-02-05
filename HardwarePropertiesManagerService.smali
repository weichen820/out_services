.class public Lcom/android/server/HardwarePropertiesManagerService;
.super Landroid/os/IHardwarePropertiesManager$Stub;
.source "HardwarePropertiesManagerService.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/IHardwarePropertiesManager$Stub;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_f
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeInit()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    monitor-exit v0

    .line 52
    return-void

    .line 49
    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v1, v0, :cond_24

    .line 96
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "The caller has faked the package name."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_1a} :catch_1a

    .line 98
    :catch_1a
    move-exception v0

    .line 99
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "The caller has faked the package name."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_24
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 103
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 104
    iget-object v1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 105
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 106
    invoke-virtual {v0, p1, v2}, Lcom/android/server/vr/VrManagerInternal;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 105
    if-eqz v0, :cond_5c

    .line 107
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5c

    .line 109
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "The caller is not a device owner, bound VrListenerService, or holding the DEVICE_POWER permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_5c
    return-void
.end method

.method private static native nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;
.end method

.method private static native nativeGetDeviceTemperatures(II)[F
.end method

.method private static native nativeGetFanSpeeds()[F
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_6
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getDeviceTemperatures(Ljava/lang/String;II)[F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_6
    invoke-static {p2, p3}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetDeviceTemperatures(II)[F
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getFanSpeeds(Ljava/lang/String;)[F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_6
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetFanSpeeds()[F
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
