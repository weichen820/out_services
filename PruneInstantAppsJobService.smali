.class public Lcom/android/server/PruneInstantAppsJobService;
.super Landroid/app/job/JobService;
.source "PruneInstantAppsJobService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final JOB_ID:I = 0xbacc3

.field private static final PRUNE_INSTANT_APPS_PERIOD_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 34
    sput-wide v0, Lcom/android/server/PruneInstantAppsJobService;->PRUNE_INSTANT_APPS_PERIOD_MILLIS:J

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 38
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/server/PruneInstantAppsJobService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xbacc3

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 40
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 41
    sget-wide v2, Lcom/android/server/PruneInstantAppsJobService;->PRUNE_INSTANT_APPS_PERIOD_MILLIS:J

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 44
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 46
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .prologue
    .line 51
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 50
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 52
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->pruneInstantApps()V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
