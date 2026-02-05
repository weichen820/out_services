.class public Lcom/android/server/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"


# static fields
.field private static final SERVICE_CALL_WARN_TIME_MS:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SystemServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPhase:I

.field private mRuntimeRestarted:Z

.field private mSafeMode:Z

.field private final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 49
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 295
    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-lez v0, :cond_3e

    .line 296
    const-string/jumbo v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3e
    return-void
.end method


# virtual methods
.method public cleanupUser(I)V
    .registers 14

    .prologue
    const-wide/32 v10, 0x80000

    .line 252
    const-string/jumbo v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling onCleanupUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 254
    const/4 v0, 0x0

    move v1, v0

    :goto_25
    if-ge v1, v2, :cond_97

    .line 255
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCleanupUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 260
    :try_start_52
    invoke-virtual {v0, p1}, Lcom/android/server/SystemService;->onCleanupUser(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_68

    .line 265
    :goto_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-string/jumbo v3, "onCleanupUser"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 266
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 254
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 261
    :catch_68
    move-exception v3

    .line 262
    const-string/jumbo v6, "SystemServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure reporting cleanup of user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 263
    const-string/jumbo v8, " to service "

    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 268
    :cond_97
    return-void
.end method

.method public dump()V
    .registers 6

    .prologue
    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    const-string/jumbo v0, "Current phase: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v0, "Services:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 309
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    if-ge v1, v3, :cond_4d

    .line 310
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;

    .line 311
    const-string/jumbo v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    const-string/jumbo v4, "\n"

    .line 311
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 316
    :cond_4d
    const-string/jumbo v0, "SystemServiceManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public isBootCompleted()Z
    .registers 3

    .prologue
    .line 172
    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isRuntimeRestarted()Z
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    return v0
.end method

.method public isSafeMode()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    return v0
.end method

.method setRuntimeRestarted(Z)V
    .registers 2

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mRuntimeRestarted:Z

    .line 292
    return-void
.end method

.method setSafeMode(Z)V
    .registers 2

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    .line 273
    return-void
.end method

.method public startBootPhase(I)V
    .registers 12

    .prologue
    const-wide/32 v8, 0x80000

    .line 139
    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    if-gt p1, v0, :cond_10

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Next phase must be larger than previous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_10
    iput p1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 144
    const-string/jumbo v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting phase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnBootPhase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_50
    if-ge v1, v2, :cond_bc

    .line 149
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 151
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_2e .. :try_end_6c} :catchall_b7

    .line 153
    :try_start_6c
    iget v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    invoke-virtual {v0, v3}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_71} :catch_87
    .catchall {:try_start_6c .. :try_end_71} :catchall_b7

    .line 160
    :try_start_71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-string/jumbo v3, "onBootPhase"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 161
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_50

    .line 154
    :catch_87
    move-exception v1

    .line 155
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to boot service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    const-string/jumbo v3, ": onBootPhase threw an exception during phase "

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    iget v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_b7
    .catchall {:try_start_71 .. :try_end_b7} :catchall_b7

    .line 163
    :catchall_b7
    move-exception v0

    .line 164
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 163
    throw v0

    .line 164
    :cond_bc
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 166
    return-void
.end method

.method public startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/SystemService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0x80000

    .line 84
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string/jumbo v0, "SystemServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StartService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 89
    const-class v0, Lcom/android/server/SystemService;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    const-string/jumbo v2, ": service must extend "

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    const-class v2, Lcom/android/server/SystemService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6e

    .line 113
    :catchall_6e
    move-exception v0

    .line 114
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 113
    throw v0

    .line 95
    :cond_73
    const/4 v0, 0x1

    :try_start_74
    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 96
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;
    :try_end_8d
    .catch Ljava/lang/InstantiationException; {:try_start_74 .. :try_end_8d} :catch_fa
    .catch Ljava/lang/IllegalAccessException; {:try_start_74 .. :try_end_8d} :catch_d8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_74 .. :try_end_8d} :catch_b6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_74 .. :try_end_8d} :catch_94
    .catchall {:try_start_74 .. :try_end_8d} :catchall_6e

    .line 111
    :try_start_8d
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_6e

    .line 114
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    return-object v0

    .line 106
    :catch_94
    move-exception v0

    .line 107
    :try_start_95
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    const-string/jumbo v3, ": service constructor threw an exception"

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    :catch_b6
    move-exception v0

    .line 104
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string/jumbo v3, ": service must have a public constructor with a Context argument"

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    :catch_d8
    move-exception v0

    .line 101
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    const-string/jumbo v3, ": service must have a public constructor with a Context argument"

    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 97
    :catch_fa
    move-exception v0

    .line 98
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const-string/jumbo v3, ": service could not be instantiated"

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_11c
    .catchall {:try_start_95 .. :try_end_11c} :catchall_6e
.end method

.method public startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .registers 6

    .prologue
    .line 61
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_9

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    return-object v0

    .line 62
    :catch_9
    move-exception v0

    .line 63
    const-string/jumbo v1, "SystemServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    const-string/jumbo v3, ": service class not found, usually indicates that the caller should "

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    const-string/jumbo v3, "have called PackageManager.hasSystemFeature() to check whether the "

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    const-string/jumbo v3, "feature is available on this device before trying to start the "

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "services that implement it"

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startService(Lcom/android/server/SystemService;)V
    .registers 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 124
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/SystemService;->onStart()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_c} :catch_19

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-string/jumbo v2, "onStart"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 130
    return-void

    .line 125
    :catch_19
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to start service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    const-string/jumbo v3, ": onStart threw an exception"

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startUser(I)V
    .registers 14

    .prologue
    const-wide/32 v10, 0x80000

    .line 176
    const-string/jumbo v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling onStartUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 178
    const/4 v0, 0x0

    move v1, v0

    :goto_25
    if-ge v1, v2, :cond_97

    .line 179
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 184
    :try_start_52
    invoke-virtual {v0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_68

    .line 189
    :goto_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-string/jumbo v3, "onStartUser "

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 190
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 185
    :catch_68
    move-exception v3

    .line 186
    const-string/jumbo v6, "SystemServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure reporting start of user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 187
    const-string/jumbo v8, " to service "

    .line 186
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 187
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 192
    :cond_97
    return-void
.end method

.method public stopUser(I)V
    .registers 14

    .prologue
    const-wide/32 v10, 0x80000

    .line 233
    const-string/jumbo v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling onStopUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 235
    const/4 v0, 0x0

    move v1, v0

    :goto_25
    if-ge v1, v2, :cond_97

    .line 236
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStopUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 241
    :try_start_52
    invoke-virtual {v0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_68

    .line 246
    :goto_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-string/jumbo v3, "onStopUser"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 247
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 242
    :catch_68
    move-exception v3

    .line 243
    const-string/jumbo v6, "SystemServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure reporting stop of user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    const-string/jumbo v8, " to service "

    .line 243
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 243
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 249
    :cond_97
    return-void
.end method

.method public switchUser(I)V
    .registers 14

    .prologue
    const-wide/32 v10, 0x80000

    .line 214
    const-string/jumbo v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling switchUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 216
    const/4 v0, 0x0

    move v1, v0

    :goto_25
    if-ge v1, v2, :cond_97

    .line 217
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 222
    :try_start_52
    invoke-virtual {v0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_68

    .line 227
    :goto_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-string/jumbo v3, "onSwitchUser"

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 228
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 216
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 223
    :catch_68
    move-exception v3

    .line 224
    const-string/jumbo v6, "SystemServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure reporting switch of user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 225
    const-string/jumbo v8, " to service "

    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 230
    :cond_97
    return-void
.end method

.method public unlockUser(I)V
    .registers 14

    .prologue
    const-wide/32 v10, 0x80000

    .line 195
    const-string/jumbo v0, "SystemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling onUnlockUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_25
    if-ge v1, v2, :cond_97

    .line 198
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemService;

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnlockUser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 203
    :try_start_52
    invoke-virtual {v0, p1}, Lcom/android/server/SystemService;->onUnlockUser(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_68

    .line 208
    :goto_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-string/jumbo v3, "onUnlockUser "

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;)V

    .line 209
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 204
    :catch_68
    move-exception v3

    .line 205
    const-string/jumbo v6, "SystemServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure reporting unlock of user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 206
    const-string/jumbo v8, " to service "

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 206
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 205
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 211
    :cond_97
    return-void
.end method
