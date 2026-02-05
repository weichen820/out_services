.class public Lcom/android/server/PreloadsFileCacheExpirationJobService;
.super Landroid/app/job/JobService;
.source "PreloadsFileCacheExpirationJobService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final JOB_ID:I = 0x18894

.field private static final PERSIST_SYS_PRELOADS_FILE_CACHE_EXPIRED:Ljava/lang/String; = "persist.sys.preloads.file_cache_expired"

.field private static final TAG:Ljava/lang/String; = "PreloadsFileCacheExpirationJobService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 51
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    const v1, 0x10e0047

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 56
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 63
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    .line 64
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/android/server/PreloadsFileCacheExpirationJobService;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const v6, 0x18894

    invoke-direct {v4, v6, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 65
    const/4 v5, 0x1

    .line 63
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 70
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 72
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .prologue
    .line 76
    const-string/jumbo v0, "persist.sys.preloads.file_cache_expired"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "PreloadsFileCacheExpirationJobService"

    const-string/jumbo v1, "Set persist.sys.preloads.file_cache_expired=1"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method
