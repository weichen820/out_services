.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;,
        Lcom/android/server/GraphicsStatsService$BufferInfo;,
        Lcom/android/server/GraphicsStatsService$HistoricalBuffer;
    }
.end annotation


# static fields
.field private static final DELETE_OLD:I = 0x2

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final SAVE_BUFFER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private final ASHMEM_SIZE:I

.field private final ZERO_DATA:[B

.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mFileAccessLock:Ljava/lang/Object;

.field private mGraphicsStatsDir:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mRotateIsScheduled:Z

.field private mWriteOutHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/GraphicsStatsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/GraphicsStatsService;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/GraphicsStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->deleteOldBuffers()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    .line 83
    invoke-static {}, Lcom/android/server/GraphicsStatsService;->nGetAshmemSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    .line 84
    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 97
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    .line 98
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 99
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "graphicsstats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 102
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 103
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_80

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Graphics stats directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_80
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "GraphicsStats-disk"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/android/server/GraphicsStatsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/GraphicsStatsService$1;-><init>(Lcom/android/server/GraphicsStatsService;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method private addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 6

    .prologue
    .line 279
    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_13

    .line 284
    :goto_f
    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    .line 285
    return-void

    .line 281
    :catch_13
    move-exception v0

    .line 282
    const-string/jumbo v1, "GraphicsStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to copy graphicsstats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private deleteOldBuffers()V
    .registers 13

    .prologue
    const-wide/32 v10, 0x80000

    const/4 v8, 0x3

    const/4 v0, 0x0

    .line 252
    const-string/jumbo v1, "deleting old graphicsstats buffers"

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 254
    :try_start_e
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 255
    if-eqz v3, :cond_19

    array-length v1, v3
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_56

    if-gt v1, v8, :cond_1b

    :cond_19
    monitor-exit v2

    .line 256
    return-void

    .line 258
    :cond_1b
    :try_start_1b
    array-length v1, v3

    new-array v4, v1, [J

    move v1, v0

    .line 259
    :goto_1f
    array-length v5, v3
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_56

    if-ge v1, v5, :cond_31

    .line 261
    :try_start_22
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v4, v1
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2e} :catch_59
    .catchall {:try_start_22 .. :try_end_2e} :catchall_56

    .line 259
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 266
    :cond_31
    :try_start_31
    array-length v1, v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_56

    if-gt v1, v8, :cond_36

    monitor-exit v2

    .line 267
    return-void

    .line 269
    :cond_36
    :try_start_36
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 270
    :goto_39
    array-length v1, v4

    add-int/lit8 v1, v1, -0x3

    if-ge v0, v1, :cond_51

    .line 271
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    aget-wide v6, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_56

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_51
    monitor-exit v2

    .line 274
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 275
    return-void

    .line 253
    :catchall_56
    move-exception v0

    monitor-exit v2

    throw v0

    .line 262
    :catch_59
    move-exception v5

    goto :goto_2e
.end method

.method private deleteRecursiveLocked(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_c
    if-ge v0, v2, :cond_16

    aget-object v3, v1, v0

    .line 243
    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 246
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_41

    .line 247
    const-string/jumbo v0, "GraphicsStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_41
    return-void
.end method

.method private dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GraphicsStatsService$HistoricalBuffer;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v14, Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 323
    const/4 v2, 0x0

    move v13, v2

    :goto_b
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_41

    .line 324
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    .line 325
    iget-object v3, v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v3

    .line 326
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    .line 328
    iget-object v3, v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget v7, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:I

    iget-object v3, v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v8, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v3, v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v10, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    .line 329
    iget-object v12, v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-wide/from16 v3, p1

    .line 327
    invoke-static/range {v3 .. v12}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;Ljava/lang/String;IJJ[B)V

    .line 323
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_b

    .line 331
    :cond_41
    return-object v14
.end method

.method private dumpHistoricalLocked(JLjava/util/HashSet;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    array-length v6, v5

    move v4, v2

    :goto_9
    if-ge v4, v6, :cond_47

    aget-object v2, v5, v4

    .line 336
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    const/4 v2, 0x0

    array-length v8, v7

    move v3, v2

    :goto_14
    if-ge v3, v8, :cond_43

    aget-object v2, v7, v3

    .line 337
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    const/4 v2, 0x0

    array-length v10, v9

    :goto_1e
    if-ge v2, v10, :cond_3f

    aget-object v11, v9, v2

    .line 338
    new-instance v12, Ljava/io/File;

    const-string/jumbo v13, "total"

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 337
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 342
    :cond_35
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v11}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    goto :goto_32

    .line 336
    :cond_3f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_14

    .line 335
    :cond_43
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_9

    .line 346
    :cond_47
    return-void
.end method

.method private fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;I)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 298
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, v2, :cond_31

    .line 299
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 300
    iget v3, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    if-ne v3, p3, :cond_43

    .line 301
    iget v3, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    if-ne v3, p2, :cond_43

    .line 303
    iget-object v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v2, v1, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_42

    .line 304
    invoke-virtual {v0}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->binderDied()V

    .line 313
    :cond_31
    :try_start_31
    new-instance v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;I)V

    .line 314
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_47

    .line 315
    return-object v0

    .line 307
    :cond_42
    return-object v0

    .line 298
    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 316
    :catch_47
    move-exception v0

    .line 317
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Failed to allocate space"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid file descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_13

    .line 194
    :catch_13
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 193
    :cond_1d
    :try_start_1d
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_13

    return-object v0
.end method

.method private static native nAddToDump(JLjava/lang/String;)V
.end method

.method private static native nAddToDump(JLjava/lang/String;Ljava/lang/String;IJJ[B)V
.end method

.method private static native nCreateDump(IZ)J
.end method

.method private static native nFinishDump(J)V
.end method

.method private static native nGetAshmemSize()I
.end method

.method private static native nSaveBuffer(Ljava/lang/String;Ljava/lang/String;IJJ[B)V
.end method

.method private normalizeDate(J)Ljava/util/Calendar;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 209
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 213
    return-object v0
.end method

.method private onAlarm()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    .line 147
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 149
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    .line 150
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_26

    monitor-exit v1

    .line 152
    array-length v4, v0

    move v2, v3

    :goto_19
    if-ge v2, v4, :cond_49

    aget-object v5, v0, v2

    .line 154
    :try_start_1d
    iget-object v1, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v1}, Landroid/view/IGraphicsStatsCallback;->onRotateGraphicsStatsBuffer()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_29

    .line 152
    :goto_22
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    .line 147
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    .line 155
    :catch_29
    move-exception v1

    .line 156
    const-string/jumbo v6, "GraphicsStatsService"

    const-string/jumbo v7, "Failed to notify \'%s\' (pid=%d) to rotate buffers"

    new-array v8, v10, [Ljava/lang/Object;

    .line 157
    iget-object v9, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v9, v9, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    aput-object v9, v8, v3

    iget v5, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 156
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 161
    :cond_49
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    return-void
.end method

.method private pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .registers 6

    .prologue
    .line 217
    const-string/jumbo v0, "%d/%s/%d/total"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 218
    iget-wide v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 217
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_3
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 292
    return-void

    .line 288
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct/range {p0 .. p5}, Lcom/android/server/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;I)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    .line 202
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    .line 203
    iget-object v0, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, v0}, Lcom/android/server/GraphicsStatsService;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .registers 14

    .prologue
    const-wide/32 v10, 0x80000

    .line 223
    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saving graphicsstats for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v1, v1, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 226
    :cond_24
    iget-object v9, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v9

    .line 227
    :try_start_27
    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-direct {p0, v0}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_61

    .line 231
    const-string/jumbo v0, "GraphicsStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create path: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_27 .. :try_end_5f} :catchall_7f

    monitor-exit v9

    .line 232
    return-void

    .line 234
    :cond_61
    :try_start_61
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v2, v0, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget v3, v0, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:I

    .line 235
    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v4, v0, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v6, v0, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v8, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    .line 234
    invoke-static/range {v1 .. v8}, Lcom/android/server/GraphicsStatsService;->nSaveBuffer(Ljava/lang/String;Ljava/lang/String;IJJ[B)V
    :try_end_7a
    .catchall {:try_start_61 .. :try_end_7a} :catchall_7f

    monitor-exit v9

    .line 237
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 238
    return-void

    .line 226
    :catchall_7f
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private scheduleRotateLocked()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    if-eqz v0, :cond_6

    .line 133
    return-void

    .line 135
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v2

    .line 137
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 138
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string/jumbo v4, "GraphicsStatsService"

    new-instance v5, Lcom/android/server/-$Lambda$o3e2BPeEiY4LSvdQI9l_B7RsPtQ;

    invoke-direct {v5, p0}, Lcom/android/server/-$Lambda$o3e2BPeEiY4LSvdQI9l_B7RsPtQ;-><init>(Ljava/lang/Object;)V

    .line 139
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 140
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_GraphicsStatsService-mthref-0()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->onAlarm()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "GraphicsStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 352
    :cond_d
    array-length v1, p3

    move v0, v2

    :goto_f
    if-ge v0, v1, :cond_72

    aget-object v3, p3, v0

    .line 353
    const-string/jumbo v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 354
    const/4 v0, 0x1

    move v1, v0

    .line 359
    :goto_1e
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 360
    :try_start_21
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    :goto_2c
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_65

    move-result v0

    if-ge v2, v0, :cond_4a

    .line 363
    :try_start_34
    new-instance v5, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v5, p0, v0}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_44} :catch_70
    .catchall {:try_start_34 .. :try_end_44} :catchall_65

    .line 361
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 352
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_4a
    monitor-exit v3

    .line 369
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {v0, v1}, Lcom/android/server/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v2

    .line 371
    :try_start_53
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6b

    .line 372
    :try_start_56
    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    .line 373
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 374
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_68

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_6b

    .line 377
    invoke-static {v2, v3}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    .line 379
    return-void

    .line 359
    :catchall_65
    move-exception v0

    monitor-exit v3

    throw v0

    .line 371
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1

    throw v0
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_6b

    .line 376
    :catchall_6b
    move-exception v0

    .line 377
    invoke-static {v2, v3}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    .line 376
    throw v0

    .line 364
    :catch_70
    move-exception v0

    goto :goto_44

    :cond_72
    move v1, v2

    goto :goto_1e
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 172
    :try_start_c
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 175
    const/4 v4, 0x0

    .line 173
    invoke-virtual {v0, p1, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 177
    iget-object v8, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_23} :catch_34
    .catchall {:try_start_c .. :try_end_23} :catchall_56

    .line 178
    :try_start_23
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_31

    move-result-object v0

    :try_start_2c
    monitor-exit v8
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_2d} :catch_34
    .catchall {:try_start_2c .. :try_end_2d} :catchall_56

    .line 183
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    return-object v0

    .line 177
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v8

    throw v0
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_34} :catch_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_56

    .line 180
    :catch_34
    move-exception v0

    .line 181
    :try_start_35
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to find package: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_56
    .catchall {:try_start_35 .. :try_end_56} :catchall_56

    .line 182
    :catchall_56
    move-exception v0

    .line 183
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    throw v0
.end method
