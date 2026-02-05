.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$1;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$PinnerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final MAX_CAMERA_PIN_SIZE:J

.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPinnedCameraFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private final mShouldPinCamera:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/PinnerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handlePinCamera(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/PinnerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    .line 71
    const-wide/32 v0, 0x5000000

    iput-wide v0, p0, Lcom/android/server/PinnerService;->MAX_CAMERA_PIN_SIZE:J

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 75
    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x1120082

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    .line 95
    new-instance v0, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method private alreadyPinned(I)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 188
    if-nez v3, :cond_8

    .line 189
    return v2

    :cond_8
    move v1, v2

    .line 191
    :goto_9
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 192
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedFile;

    iget-object v0, v0, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 196
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 199
    :cond_29
    return v2
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 220
    const/high16 v2, 0xd0000

    .line 219
    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 223
    if-nez v0, :cond_18

    .line 228
    return-object v3

    .line 231
    :cond_18
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 236
    return-object v3

    .line 239
    :cond_21
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private handlePinCamera(I)V
    .registers 3

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    if-eqz v0, :cond_a

    .line 170
    monitor-enter p0

    .line 171
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinCamera(I)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    .line 180
    :cond_a
    return-void

    .line 170
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handlePinOnStart()V
    .registers 10

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    const v1, 0x107001d

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 149
    monitor-enter p0

    .line 151
    const/4 v0, 0x0

    :goto_f
    :try_start_f
    array-length v1, v8

    if-ge v0, v1, :cond_48

    .line 152
    aget-object v1, v8, v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_28

    .line 154
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 159
    :cond_28
    const-string/jumbo v1, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to pin file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v8, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_45

    goto :goto_25

    .line 149
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_48
    monitor-exit p0

    .line 163
    return-void
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 4

    .prologue
    .line 210
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private pinCamera(I)Z
    .registers 14

    .prologue
    const-wide/32 v6, 0x5000000

    const/4 v11, 0x1

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 247
    if-nez v10, :cond_f

    .line 248
    return v8

    .line 254
    :cond_f
    invoke-direct {p0}, Lcom/android/server/PinnerService;->unpinCameraApp()V

    .line 257
    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-wide v4, v2

    .line 258
    invoke-static/range {v1 .. v7}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v0

    .line 259
    if-nez v0, :cond_36

    .line 260
    const-string/jumbo v0, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to pin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v8

    .line 266
    :cond_36
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string/jumbo v0, "arm"

    .line 270
    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_6a

    .line 271
    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_5e
    :goto_5e
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    .line 284
    :try_start_62
    invoke-static {v1, v0}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_89

    move-result-object v0

    move-object v9, v0

    .line 286
    :goto_67
    if-nez v9, :cond_8b

    .line 287
    return v11

    .line 275
    :cond_6a
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v1}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    .line 285
    :catch_89
    move-exception v0

    goto :goto_67

    .line 291
    :cond_8b
    array-length v10, v9

    move v0, v8

    :goto_8d
    if-ge v0, v10, :cond_a0

    aget-object v1, v9, v0

    move-wide v4, v2

    .line 292
    invoke-static/range {v1 .. v7}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_9d

    .line 294
    iget-object v4, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 301
    :cond_a0
    return v11
.end method

.method private static pinFile(Ljava/lang/String;JJJ)Lcom/android/server/PinnerService$PinnedFile;
    .registers 22

    .prologue
    .line 310
    new-instance v8, Ljava/io/FileDescriptor;

    invoke-direct {v8}, Ljava/io/FileDescriptor;-><init>()V

    .line 313
    :try_start_5
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v2, v3

    sget v3, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v2, v3

    .line 314
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    .line 312
    invoke-static {p0, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v8

    .line 316
    invoke-static {v8}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v2

    .line 318
    add-long v4, p1, p3

    iget-wide v6, v2, Landroid/system/StructStat;->st_size:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_58

    .line 319
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 320
    const-string/jumbo v3, "PinnerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to pin file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 321
    const-string/jumbo v5, ", request extends beyond end of file.  offset + length =  "

    .line 320
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    add-long v6, p1, p3

    .line 320
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    const-string/jumbo v5, ", file length = "

    .line 320
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    iget-wide v6, v2, Landroid/system/StructStat;->st_size:J

    .line 320
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, 0x0

    return-object v2

    .line 326
    :cond_58
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-nez v3, :cond_112

    .line 327
    iget-wide v2, v2, Landroid/system/StructStat;->st_size:J

    sub-long v4, v2, p1

    .line 330
    :goto_62
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_a3

    cmp-long v2, v4, p5

    if-lez v2, :cond_a3

    .line 331
    const-string/jumbo v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not pin file "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    const-string/jumbo v6, ", size = "

    .line 331
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    const-string/jumbo v4, ", maxSize = "

    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 334
    const/4 v2, 0x0

    return-object v2

    .line 337
    :cond_a3
    const-wide/16 v2, 0x0

    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    .line 338
    sget v7, Landroid/system/OsConstants;->MAP_PRIVATE:I

    move-wide/from16 v9, p1

    .line 337
    invoke-static/range {v2 .. v10}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10

    .line 339
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 341
    invoke-static {v10, v11, v4, v5}, Landroid/system/Os;->mlock(JJ)V

    .line 343
    new-instance v9, Lcom/android/server/PinnerService$PinnedFile;

    move-wide v12, v4

    move-object v14, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JJLjava/lang/String;)V
    :try_end_bc
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_bc} :catch_bd

    return-object v9

    .line 344
    :catch_bd
    move-exception v2

    .line 345
    const-string/jumbo v3, "PinnerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not pin file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 348
    :try_start_ed
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_f0
    .catch Landroid/system/ErrnoException; {:try_start_ed .. :try_end_f0} :catch_f2

    .line 354
    :cond_f0
    :goto_f0
    const/4 v2, 0x0

    return-object v2

    .line 350
    :catch_f2
    move-exception v2

    .line 351
    const-string/jumbo v3, "PinnerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to close fd, error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    :cond_112
    move-wide/from16 v4, p3

    goto/16 :goto_62
.end method

.method private unpinCameraApp()V
    .registers 3

    .prologue
    .line 203
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 204
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedFile;

    invoke-static {v0}, Lcom/android/server/PinnerService;->unpinFile(Lcom/android/server/PinnerService$PinnedFile;)Z

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 206
    :cond_19
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    return-void
.end method

.method private static unpinFile(Lcom/android/server/PinnerService$PinnedFile;)Z
    .registers 5

    .prologue
    .line 360
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    iget-wide v2, p0, Lcom/android/server/PinnerService$PinnedFile;->mLength:J

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->munlock(JJ)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    .line 368
    const/4 v0, 0x1

    return v0

    .line 361
    :catch_9
    move-exception v0

    .line 362
    const-string/jumbo v1, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to unpin file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    .line 109
    const-string/jumbo v0, "pinner"

    iget-object v1, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 110
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method

.method public update(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0, v2}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_23

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 136
    const-string/jumbo v0, "PinnerService"

    const-string/jumbo v1, "Updating pinned files."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_23
    return-void
.end method
